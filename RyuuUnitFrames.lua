RyuuFrames = AceLibrary("AceAddon-2.0"):new("AceEvent-2.0", "AceConsole-2.0", "AceDB-2.0", "AceHook-2.1", "AceDebug-2.0")
RyuuFrames:RegisterDB("RyuuDB")

RyuuFrames.Version = 1000
RyuuFrames.modules = {}
RyuuFrames.constants = {
  backdrop = {
    bgFile = "Interface\\AddOns\\RyuuUnitFrames\\artwork\\UI-DialogBox-Background.tga",
    edgeFile = "Interface\\AddOns\\RyuuUnitFrames\\artwork\\UI-DialogBox-Border.tga",
    tile = true,
    tileSize = 32,
    insets = { left = 11, right = 11, top: 11, bottom: 11 }
  }
}



RyuuFrames.Player = CreateFrame("Frame", "RUF_Player", UIParent)
local Player = RyuuFrames.Player

Player.Health = CreateFrame("Frame", "RUF_Player_Health", Player)
-- Player.Power = CreateFrame("Frame", "RUF_Player_Power", Player)

Player:SetHeight(200)
Player:SetWidth(400)

Player.Health:SetBackdrop(RyuuFrames.constants.backdrop)
Player.Health:SetBackdropBorderColor(1, 1, 1, 0.6)
Player.Health:SetBackdropColor(0, 0, 0, 0.8)
Player.Health:SetHeight(100)
Player.Health:SetWidth(400)

-- Player.Power:SetHeight(100)
-- Player.Power:SetWidth(200)

Player:SetPoint("TOPLEFT", UIParent, 300, 300)
Player:Show()
