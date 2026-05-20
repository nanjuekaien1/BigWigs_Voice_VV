
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
local function handler(event, module, key, sound, isOnMe)
	local success = PlaySoundFile(format(path, (addon.FilePaths[key] or "")..tostring(key)), "Master")
	if not success then
		addon:SendMessage("BigWigs_Sound", module, key, sound) 
	end
end


if BigWigsLoader then
    BigWigsLoader.RegisterMessage(addon, "BigWigs_Voice", handler)
end

if BigWigsAPI then
    BigWigsAPI.RegisterVoicePack("VV")
end

-- 倒数语音

local VoiceID = "中文语音：VV(女)"

BigWigsAPI:RegisterCountdown(VoiceID, {
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
