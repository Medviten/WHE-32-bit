--[[
    Druid form preview for Character Creation.

    While a druid is selected, shows a shapeshift form on a small "screen" beside the character, with the form's name
    and arrows below it (like the appearance rows) and an on/off checkbox (saved as the druidFormPreview setting, so the
    default can be set in Config.wtf with SET druidFormPreview "0" or "1").

    The models come from the custom client, which picks them like the server does: world.player_shapeshift_model
    (shipped as DBFilesClient\PlayerShapeshiftModel.csv in a patch MPQ), keyed by race, gender and hair color, or skin
    (fur) color for the races in the shapeshiftSkinColorRaces setting, falling back to SpellShapeshiftForm.dbc.

    Client functions used: GetCharCustomizeShapeshiftDisplay(form), SetModelCreatureDisplay(frameName, displayID, zoom).
    (A plain Model frame on purpose: a ModelFFX clears the whole screen when it draws.) Left-drag the preview to turn it,
    scroll over it to zoom in or out.
--]]

-- Forms in order (SpellShapeshiftForm IDs). The first one is shown by default.
DRUID_PREVIEW_FORMS = DRUID_PREVIEW_FORMS or {
    1,  -- Cat
    5,  -- Bear
    3,  -- Travel
    4,  -- Aquatic
    31, -- Moonkin
    2,  -- Tree of Life
    29, -- Flight
    27, -- Swift Flight
};

local SCREEN_WIDTH, SCREEN_HEIGHT = 280, 320;
local ROW_WIDTH = 260;

-- The model's size on screen follows the frame's diagonal, so the camera moves in by as much as the screen shrank
-- from its original 340x400 to keep the model as large as before
local MODEL_ZOOM = math.sqrt(340 * 340 + 400 * 400) / math.sqrt(SCREEN_WIDTH * SCREEN_WIDTH + SCREEN_HEIGHT * SCREEN_HEIGHT);

-- Mouse-wheel zoom on top of that: each notch scales by ZOOM_STEP, kept between ZOOM_MIN and ZOOM_MAX
local ZOOM_STEP, ZOOM_MIN, ZOOM_MAX = 1.15, 0.5, 2.5;
local userZoom = 1;

-- Everything sits in a container that is only shown while a druid is selected
local container = CreateFrame("Frame", "CharacterCreateDruidFormFrame", CharacterCreateFrame);
container:SetWidth(SCREEN_WIDTH);
container:SetHeight(SCREEN_HEIGHT + 70);
container:SetPoint("RIGHT", CharacterCreateCharacterClass, "LEFT", -20, 30);
container:Hide();

-- The "screen": a bordered panel with a neutral background, the model inset inside it
local screen = CreateFrame("Frame", "CharacterCreateDruidFormScreen", container);
screen:SetWidth(SCREEN_WIDTH);
screen:SetHeight(SCREEN_HEIGHT);
screen:SetPoint("TOP", container, "TOP", 0, 0);
screen:SetBackdrop({
    bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    tile = true, tileSize = 16, edgeSize = 16,
    insets = { left = 4, right = 4, top = 4, bottom = 4 },
});
screen:SetBackdropColor(0.22, 0.22, 0.24, 1);
screen:SetBackdropBorderColor(0.75, 0.75, 0.75, 1);

local model = CreateFrame("Model", "CharacterCreateDruidFormPreview", screen);
model:SetPoint("TOPLEFT", screen, "TOPLEFT", 6, -6);
model:SetPoint("BOTTOMRIGHT", screen, "BOTTOMRIGHT", -6, 6);
model:EnableMouse(true);
model:EnableMouseWheel(true);

-- "< Cat Form >" row, styled like the appearance rows
local row = CreateFrame("Frame", "CharacterCreateDruidFormRow", screen);
row:SetWidth(ROW_WIDTH);
row:SetHeight(32);
row:SetPoint("TOP", screen, "BOTTOM", 0, 0);

local LABEL_TEXTURE = "Interface\\Glues\\CharacterCreate\\CharacterCreate-LabelFrame";

local labelLeft = row:CreateTexture(nil, "BACKGROUND");
labelLeft:SetTexture(LABEL_TEXTURE);
labelLeft:SetTexCoord(0, 0.1953125, 0, 1);
labelLeft:SetWidth(25);
labelLeft:SetHeight(64);
labelLeft:SetPoint("LEFT", row, "LEFT", 26, 0);

local labelRight = row:CreateTexture(nil, "BACKGROUND");
labelRight:SetTexture(LABEL_TEXTURE);
labelRight:SetTexCoord(0.8046875, 1, 0, 1);
labelRight:SetWidth(25);
labelRight:SetHeight(64);
labelRight:SetPoint("RIGHT", row, "RIGHT", -26, 0);

local labelMiddle = row:CreateTexture(nil, "BACKGROUND");
labelMiddle:SetTexture(LABEL_TEXTURE);
labelMiddle:SetTexCoord(0.1953125, 0.8046875, 0, 1);
labelMiddle:SetHeight(64);
labelMiddle:SetPoint("LEFT", labelLeft, "RIGHT");
labelMiddle:SetPoint("RIGHT", labelRight, "LEFT");

local label = row:CreateFontString("CharacterCreateDruidFormName", "ARTWORK", "GlueFontHighlightSmall");
label:SetPoint("CENTER", labelMiddle, "CENTER", 0, 2);

local function CreateArrow(name, side)
    local arrow = CreateFrame("Button", name, row);
    arrow:SetWidth(32);
    arrow:SetHeight(32);
    arrow:SetPoint(side == "Left" and "LEFT" or "RIGHT", row, side == "Left" and "LEFT" or "RIGHT", 0, 0);
    arrow:SetNormalTexture("Interface\\Glues\\Common\\Glue-"..side.."Arrow-Button-Up");
    arrow:SetPushedTexture("Interface\\Glues\\Common\\Glue-"..side.."Arrow-Button-Down");
    arrow:SetHighlightTexture("Interface\\Glues\\Common\\Glue-"..side.."Arrow-Button-Highlight", "ADD");
    return arrow;
end

local leftArrow = CreateArrow("CharacterCreateDruidFormLeft", "Left");
local rightArrow = CreateArrow("CharacterCreateDruidFormRight", "Right");

-- On/off checkbox, saved in the druidFormPreview setting
local toggle = CreateFrame("CheckButton", "CharacterCreateDruidFormToggle", container);
toggle:SetWidth(26);
toggle:SetHeight(26);
toggle:SetPoint("TOPLEFT", container, "TOPLEFT", (SCREEN_WIDTH - ROW_WIDTH) / 2, -(SCREEN_HEIGHT + 34));
toggle:SetNormalTexture("Interface\\Buttons\\UI-CheckBox-Up");
toggle:SetPushedTexture("Interface\\Buttons\\UI-CheckBox-Down");
toggle:SetHighlightTexture("Interface\\Buttons\\UI-CheckBox-Highlight", "ADD");
toggle:SetCheckedTexture("Interface\\Buttons\\UI-CheckBox-Check");

local toggleText = toggle:CreateFontString(nil, "ARTWORK", "GlueFontNormalSmall");
toggleText:SetPoint("LEFT", toggle, "RIGHT", 2, 1);
toggleText:SetText("Druid form preview");

local formIndex = 1;
local shownDisplay;

local function PreviewEnabled()
    return GetCVar("druidFormPreview") ~= "0";
end

-- Shows the selected form for the current race/gender/colors; only reloads the model when its display changes
local function UpdatePreview(force)
    local form = DRUID_PREVIEW_FORMS[formIndex] or DRUID_PREVIEW_FORMS[1];
    local display, name = GetCharCustomizeShapeshiftDisplay(form);

    label:SetText(name or "");

    if ( force or display ~= shownDisplay ) then
        shownDisplay = display;
        SetModelCreatureDisplay(model:GetName(), display or 0, MODEL_ZOOM * userZoom);
        model:SetFacing(model.facing or -0.5);
    end
end

local function StepForm(delta)
    PlaySound("gsCharacterCreationLook");
    formIndex = formIndex + delta;

    if ( formIndex < 1 ) then
        formIndex = #DRUID_PREVIEW_FORMS;
    elseif ( formIndex > #DRUID_PREVIEW_FORMS ) then
        formIndex = 1;
    end

    UpdatePreview();
end

leftArrow:SetScript("OnClick", function() StepForm(-1); end);
rightArrow:SetScript("OnClick", function() StepForm(1); end);

local function ApplyEnabled()
    if ( PreviewEnabled() ) then
        toggle:SetChecked(1);
        screen:Show();
        shownDisplay = nil;
        UpdatePreview(true);
    else
        toggle:SetChecked(nil);
        screen:Hide();
    end
end

toggle:SetScript("OnClick", function(self)
    PlaySound("gsCharacterCreationClass");
    SetCVar("druidFormPreview", self:GetChecked() and "1" or "0");
    ApplyEnabled();
end);

model:SetScript("OnMouseDown", function(self, button)
    if ( button == "LeftButton" ) then
        self.dragX = GetCursorPosition();
    end
end);

model:SetScript("OnMouseUp", function(self, button)
    if ( button == "LeftButton" ) then
        self.dragX = nil;
    end
end);

-- The zoom is part of the camera the client sets up with the model, so zooming reloads it (the form stays the same)
model:SetScript("OnMouseWheel", function(self, delta)
    local zoom = math.max(ZOOM_MIN, math.min(ZOOM_MAX, userZoom * ZOOM_STEP ^ delta));

    if ( zoom ~= userZoom ) then
        userZoom = zoom;
        UpdatePreview(true);
    end
end);

model:SetScript("OnUpdate", function(self, elapsed)
    if ( self.dragX ) then
        local x = GetCursorPosition();
        -- CHARACTER_ROTATION_CONSTANT is degrees per pixel; SetFacing takes radians
        self.facing = (self.facing or -0.5) + (x - self.dragX) * (CHARACTER_ROTATION_CONSTANT or 0.6) * math.pi / 180;
        self.dragX = x;
        self:SetFacing(self.facing);
    end

    -- Follow race, gender and color changes (cheap: the model only reloads when the display ID changes)
    self.sinceCheck = (self.sinceCheck or 0) + elapsed;

    if ( self.sinceCheck > 0.25 ) then
        self.sinceCheck = 0;
        UpdatePreview();
    end
end);

container:SetScript("OnShow", ApplyEnabled);

-- Show the preview only while a druid is selected
local driver = CreateFrame("Frame", nil, CharacterCreateFrame);
driver:SetScript("OnUpdate", function(self)
    local _, classFileName = GetSelectedClass();

    if ( classFileName == "DRUID" ) then
        container:Show();
    else
        container:Hide();
    end
end);
