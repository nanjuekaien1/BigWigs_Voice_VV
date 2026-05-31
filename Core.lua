local name, addon = ...

--------------------------------------------------------------------------------
-- Locals
--

local tostring = tostring
local format = format

if BigWigsLoader then
	addon.SendMessage = BigWigsLoader.SendMessage
end

--------------------------------------------------------------------------------
-- Event Handlers
--

local path = "Interface\\AddOns\\BigWigs_Voice_VV\\Sounds\\%s.ogg"
local function handler(event, module, key, sound)
	local fileKey = (addon.FilePaths[key] or "") .. tostring(key)
	local success = PlaySoundFile(format(path, fileKey), "Master")
	if not success and addon.SendMessage then
		addon:SendMessage("BigWigs_Sound", module, key, sound)
	end
end

if BigWigsLoader then
	BigWigsLoader.RegisterMessage(addon, "BigWigs_Voice", handler)
end

if BigWigsAPI then
	BigWigsAPI.RegisterVoicePack("VV")
end

--------------------------------------------------------------------------------
-- Countdown
--
local VoiceID = "中文语音：VV(女)"
local VoiceKey = "vv"

if BigWigsAPI and BigWigsAPI.RegisterCountdown then
	BigWigsAPI:RegisterCountdown(VoiceKey, VoiceID, {
		"Interface\\AddOns\\BigWigs_Voice_VV\\Media\\Sounds\\1.ogg",
		"Interface\\AddOns\\BigWigs_Voice_VV\\Media\\Sounds\\2.ogg",
		"Interface\\AddOns\\BigWigs_Voice_VV\\Media\\Sounds\\3.ogg",
		"Interface\\AddOns\\BigWigs_Voice_VV\\Media\\Sounds\\4.ogg",
		"Interface\\AddOns\\BigWigs_Voice_VV\\Media\\Sounds\\5.ogg",
		"Interface\\AddOns\\BigWigs_Voice_VV\\Media\\Sounds\\6.ogg",
		"Interface\\AddOns\\BigWigs_Voice_VV\\Media\\Sounds\\7.ogg",
		"Interface\\AddOns\\BigWigs_Voice_VV\\Media\\Sounds\\8.ogg",
		"Interface\\AddOns\\BigWigs_Voice_VV\\Media\\Sounds\\9.ogg",
		"Interface\\AddOns\\BigWigs_Voice_VV\\Media\\Sounds\\10.ogg",
	})
end
