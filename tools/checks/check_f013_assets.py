"""List the client files F-013_zep-goblin-start's DBC rows need that the client doesn't have.

  python check_f013_assets.py PATHS_FILE PATCH_A_DIR ARCHIVE.mpq [ARCHIVE.mpq ...] > missing.txt

PATHS_FILE has one client path per line (see the query in F-013's readme). A path counts as present when it is in
PATCH_A_DIR (the unpacked patch-A.MPQ) or an archive's hash table, ignoring case. .mdx is looked up as .m2, as the client
does. Archives are only asked whether a file exists, so nothing is read or extracted."""
import os, struct, sys


def crypt_table():
    table, seed = [0] * 0x500, 0x00100001
    for i in range(0x100):
        index = i
        for _ in range(5):
            seed = (seed * 125 + 3) % 0x2AAAAB
            high = (seed & 0xFFFF) << 16
            seed = (seed * 125 + 3) % 0x2AAAAB
            table[index] = high | (seed & 0xFFFF)
            index += 0x100
    return table


CRYPT = crypt_table()


def hash_string(text, kind):
    seed1, seed2 = 0x7FED7FED, 0xEEEEEEEE
    for ch in text.upper().replace("/", "\\").encode("latin-1", "replace"):
        seed1 = (CRYPT[(kind << 8) + ch] ^ (seed1 + seed2)) & 0xFFFFFFFF
        seed2 = (ch + seed1 + seed2 + (seed2 << 5) + 3) & 0xFFFFFFFF
    return seed1


def decrypt(data, key):
    seed, out = 0xEEEEEEEE, []
    for (word,) in struct.iter_unpack("<I", data):
        seed = (seed + CRYPT[0x400 + (key & 0xFF)]) & 0xFFFFFFFF
        plain = (word ^ (key + seed)) & 0xFFFFFFFF
        key = (((~key << 21) + 0x11111111) | (key >> 11)) & 0xFFFFFFFF
        seed = (plain + seed + (seed << 5) + 3) & 0xFFFFFFFF
        out.append(plain)
    return out


class Archive:
    def __init__(self, path):
        with open(path, "rb") as f:
            start = 0
            while True:
                f.seek(start)
                magic = f.read(4)
                if magic == b"MPQ\x1a":
                    break
                if magic == b"MPQ\x1b":
                    f.seek(start + 8)
                    start += struct.unpack("<I", f.read(4))[0]
                    continue
                start += 512
                if start > 1 << 28:
                    raise SystemExit(f"{path}: no MPQ header")
            f.seek(start + 12)
            version = struct.unpack("<H", f.read(2))[0]
            f.seek(start + 16)
            hash_pos, _, hash_count, _ = struct.unpack("<IIII", f.read(16))
            high = 0
            if version >= 1:  # format 2 adds the high bits of the hash table's offset
                f.seek(start + 40)
                high = struct.unpack("<H", f.read(2))[0]
            f.seek(start + hash_pos + (high << 32))
            table = decrypt(f.read(hash_count * 16), hash_string("(hash table)", 3))
        self.names = {(table[i], table[i + 1]) for i in range(0, len(table), 4) if table[i + 3] < 0xFFFFFFFE}

    def has(self, path):
        return (hash_string(path, 1), hash_string(path, 2)) in self.names


def main(paths_file, patch_a, archives):
    present = set()
    for root, _, files in os.walk(patch_a):
        rel = os.path.relpath(root, patch_a)
        for name in files:
            present.add(os.path.normpath(os.path.join(rel, name)).upper())
    opened = [Archive(a) for a in archives]
    missing, total = [], 0
    with open(paths_file, encoding="utf-8") as f:
        for line in sorted({l.strip().replace("/", "\\") for l in f if l.strip()}):
            path = line[:-4] + ".m2" if line.lower().endswith(".mdx") else line
            total += 1
            if os.path.normpath(path.replace("\\", os.sep)).upper() in present or any(a.has(path) for a in opened):
                continue
            missing.append(path)
    print("\n".join(missing))
    print(f"{len(missing)} of {total} files missing", file=sys.stderr)


if __name__ == "__main__":
    if len(sys.argv) < 4:
        sys.exit(__doc__)
    main(sys.argv[1], sys.argv[2], sys.argv[3:])
