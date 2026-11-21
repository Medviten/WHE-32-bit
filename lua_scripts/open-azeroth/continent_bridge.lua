--[[============================================================================
  Cross-Continent Flight Bridge — Kalimdor <-> Eastern Kingdoms <-> Northrend
  For AzerothCore / Eluna (ALE)

  Assumes:
    - The ocean around Kalimdor, Eastern Kingdoms and Northrend has been
      extended out to (at least) the trigger lines defined below, and flight
      is enabled on all three maps.
    - Kalimdor and Eastern Kingdoms use "equivalent" coordinates: the same
      X (north/south) lines up between the two maps, so crossing between
      them only needs the depth axis (Y) reset to the opposite shore. This
      applies on both sides of the world: Kalimdor's east edge <-> EK's
      west edge (near Northrend), and EK's east edge <-> Kalimdor's west
      edge (the "far side", no Northrend involved).
    - Kalimdor/EK and Northrend overlap on the world map. Every map uses
      the same yard scale, so the overlap is a straight translation
      (offset only, no scaling), derived from the known equivalent points
      at Northrend's SW/SE corners. Because Northrend's west/east edges
      run further north than Kalimdor's/EK's terrain does, that
      translation is clamped to the real northern edge of the target
      continent when necessary. This means a player far enough north on
      Northrend's edge will arrive further south than a pure translation
      would put them, and going back to Northrend from that clamped spot
      won't return them all the way to where they started — a deliberate,
      accepted trade-off rather than leaving a hole with no crossing at
      the northern part of the border.

  Tuning knobs you may want to adjust after testing in-game:
    - CHECK_INTERVAL: how often (ms) players are scanned for a crossing.
    - BUFFER: how far inside the new map a player lands on the direct
      Kalimdor<->EK crossing, so they don't instantly re-trigger the
      reverse check.
    - Z (altitude) is currently carried over unchanged on every jump. If
      the three continents' sea levels don't line up in your setup, add
      a per-border Z offset the same way the X/Y offsets are handled.
============================================================================]]

local MAP_EK        = 0
local MAP_KALIMDOR  = 1
local MAP_NORTHREND = 571

local CHECK_INTERVAL = 500  -- ms between scans
local BUFFER         = 75   -- yards of slack given on arrival so the player
                             -- doesn't instantly re-trigger the reverse check

-- ---------------------------------------------------------------------------
-- Trigger lines ("threshold points" from the map planning)
-- ---------------------------------------------------------------------------

-- Kalimdor's eastern ocean edge (Y decreases going east)
local KAL_EAST_Y       = -9773
local KAL_EAST_SPLIT_X = 11037   -- south of this -> EK, north of this -> Northrend

-- Open Azeroth's islands east of that edge, on Kalimdor's map: Kezan and the Lost Isles (F-013), each a block of
-- tiles reaching Y -13333. Across their X band the edge moves out past them, so they can be reached.
local KAL_EAST_ISLANDS = {
    { minX = -12800, maxX = -7466, y = -13500 },  -- Kezan
    { minX = -1600,  maxX = 3733,  y = -13500 },  -- the Lost Isles
}

-- Eastern Kingdoms' western ocean edge (Y increases going west)
local EK_WEST_Y        = 12615
local EK_WEST_SPLIT_X  = 5661    -- south of this -> Kalimdor, north of this -> Northrend

-- Northrend's western edge (borders Kalimdor only, Y increases going west)
local NR_WEST_Y = 10546

-- Northrend's eastern edge (borders EK only, Y decreases going east)
local NR_EAST_Y = -8036

-- The "far side" crossing: EK's eastern edge <-> Kalimdor's western edge.
-- No Northrend overlap here, so this is a straight X/Z/O-preserving jump
-- with Y reset, same as the direct Kalimdor<->EK crossing above. The
-- trigger line sits slightly closer to the true edge than the arrival
-- point on the other side, so a player can't ping-pong back and forth.
local EK_EAST_Y  = -16994   -- crossing further east (lower Y) than this -> Kalimdor
local KAL_WEST_Y = 16994    -- crossing further west (higher Y) than this -> EK

-- ---------------------------------------------------------------------------
-- Northrend <-> Kalimdor / EK translation (offset only, same yard scale)
-- Derived from the known equivalent corners:
--   Northrend SW (-2932, 10932)  ==  Kalimdor (7596, -8980)
--   Northrend SE (-2932, -9332)  ==  EK       (4188, 11111)
-- ---------------------------------------------------------------------------

local NR_KAL_DX = 7596  - (-2932)   --  10528
local NR_KAL_DY = -8980 - 10932     -- -19912

local NR_EK_DX  = 4188  - (-2932)   --   7120
local NR_EK_DY  = 11111 - (-9332)   --  20443

-- Northrend reaches further north than Kalimdor/EK do. A straight
-- translation can therefore overshoot the destination continent's real
-- northern edge - when that happens we pull the arrival point back down
-- to just south of the edge instead of dropping the player into the void.
local SAFETY_MARGIN = 50            -- stay this far shy of the mapped terrain edge
local KAL_MAX_X = 16994 - SAFETY_MARGIN   -- Kalimdor's NE (ocean) corner
local EK_MAX_X  = 16985 - SAFETY_MARGIN   -- EK's NW (ocean) corner

-- ---------------------------------------------------------------------------
-- Coordinate conversions
-- ---------------------------------------------------------------------------

local function clampMaxX(x, maxX)
    if x > maxX then
        return maxX
    end
    return x
end

local function northrendXToKalimdor(x)
    return clampMaxX(x + NR_KAL_DX, KAL_MAX_X)
end

local function kalimdorXToNorthrend(x)
    return x - NR_KAL_DX
end

local function northrendXToEK(x)
    return clampMaxX(x + NR_EK_DX, EK_MAX_X)
end

local function ekXToNorthrend(x)
    return x - NR_EK_DX
end

local function jump(player, mapId, x, y, z, o)
    player:Teleport(mapId, x, y, z, o)
end

-- ---------------------------------------------------------------------------
-- Border checks
-- ---------------------------------------------------------------------------

-- Kalimdor's eastern edge at latitude X: further out across the islands' bands
local function kalimdorEastY(x)
    for _, island in ipairs(KAL_EAST_ISLANDS) do
        if x >= island.minX and x <= island.maxX then
            return island.y
        end
    end
    return KAL_EAST_Y
end

local function checkKalimdor(player, x, y, z, o)
    if y <= kalimdorEastY(x) then
        -- Eastern edge.
        if x < KAL_EAST_SPLIT_X then
            -- Southern stretch of the edge -> Eastern Kingdoms.
            -- Latitude (X), altitude (Z) and orientation carry straight over.
            jump(player, MAP_EK, x, EK_WEST_Y - BUFFER, z, o)
        else
            -- Northern stretch of the edge -> Northrend.
            local nx = kalimdorXToNorthrend(x)
            local ny = y - NR_KAL_DY
            jump(player, MAP_NORTHREND, nx, ny, z, o)
        end
    elseif y >= KAL_WEST_Y then
        -- Western edge -> Eastern Kingdoms (the "far side" crossing).
        jump(player, MAP_EK, x, EK_EAST_Y + BUFFER, z, o)
    end
end

local function checkEasternKingdoms(player, x, y, z, o)
    if y >= EK_WEST_Y then
        -- Western edge.
        if x < EK_WEST_SPLIT_X then
            -- Southern stretch of the edge -> Kalimdor.
            jump(player, MAP_KALIMDOR, x, KAL_EAST_Y + BUFFER, z, o)
        else
            -- Northern stretch of the edge -> Northrend.
            local nx = ekXToNorthrend(x)
            local ny = y - NR_EK_DY
            jump(player, MAP_NORTHREND, nx, ny, z, o)
        end
    elseif y <= EK_EAST_Y then
        -- Eastern edge -> Kalimdor (the "far side" crossing).
        jump(player, MAP_KALIMDOR, x, KAL_WEST_Y - BUFFER, z, o)
    end
end

local function checkNorthrend(player, x, y, z, o)
    if y > NR_WEST_Y then
        -- West edge -> Kalimdor only.
        local kx = northrendXToKalimdor(x)
        local ky = y + NR_KAL_DY
        jump(player, MAP_KALIMDOR, kx, ky, z, o)
    elseif y < NR_EAST_Y then
        -- East edge -> Eastern Kingdoms only.
        local ex = northrendXToEK(x)
        local ey = y + NR_EK_DY
        jump(player, MAP_EK, ex, ey, z, o)
    end
end

-- ---------------------------------------------------------------------------
-- Main scan loop
-- ---------------------------------------------------------------------------

local function ScanForBorderCrossings()
    local players = GetPlayersInWorld()

    for _, player in ipairs(players) do
        -- Players on a zeppelin or ship stay put: transports make their own map changes, and a jump would take
        -- them off the deck
        if player and player:IsInWorld() and not player:GetTransport() then
            local mapId = player:GetMapId()

            if mapId == MAP_KALIMDOR then
                checkKalimdor(player, player:GetX(), player:GetY(), player:GetZ(), player:GetO())
            elseif mapId == MAP_EK then
                checkEasternKingdoms(player, player:GetX(), player:GetY(), player:GetZ(), player:GetO())
            elseif mapId == MAP_NORTHREND then
                checkNorthrend(player, player:GetX(), player:GetY(), player:GetZ(), player:GetO())
            end
        end
    end

    CreateLuaEvent(ScanForBorderCrossings, CHECK_INTERVAL, 1)
end

CreateLuaEvent(ScanForBorderCrossings, CHECK_INTERVAL, 1)