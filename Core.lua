
BigWigs_Voice_VV = BigWigs_Voice_VV or {}
local addon = BigWigs_Voice_VV
addon.SendMessage = BigWigsLoader.SendMessage

--------------------------------------------------------------------------------
-- Event Handlers
--

local SoundHandler
do
	local path = "Interface\\AddOns\\BigWigs_Voice_VV\\Sounds\\%s.ogg"
	local tostring = tostring
	local format = string.format
	function SoundHandler(_, module, key, sound)
		local fileKey = (addon.FilePaths[key] or "") .. tostring(key)
		local success = PlaySoundFile(format(path, fileKey), "Master")
		if not success then
			addon:SendMessage("BigWigs_Sound", module, key, sound)
		end
	end
end

BigWigsLoader.RegisterMessage(addon, "BigWigs_Voice", SoundHandler)
BigWigsAPI.RegisterVoicePack("VV")

--------------------------------------------------------------------------------
-- Countdown
--

local VoiceID = "中文语音：VV(女)"
local VoiceKey = "vv"

BigWigsAPI:RegisterCountdown(VoiceKey, VoiceID, {
	"Interface\\AddOns\\BigWigs_Voice_VV\\Countdown\\1.ogg",
	"Interface\\AddOns\\BigWigs_Voice_VV\\Countdown\\2.ogg",
	"Interface\\AddOns\\BigWigs_Voice_VV\\Countdown\\3.ogg",
	"Interface\\AddOns\\BigWigs_Voice_VV\\Countdown\\4.ogg",
	"Interface\\AddOns\\BigWigs_Voice_VV\\Countdown\\5.ogg",
	"Interface\\AddOns\\BigWigs_Voice_VV\\Countdown\\6.ogg",
	"Interface\\AddOns\\BigWigs_Voice_VV\\Countdown\\7.ogg",
	"Interface\\AddOns\\BigWigs_Voice_VV\\Countdown\\8.ogg",
	"Interface\\AddOns\\BigWigs_Voice_VV\\Countdown\\9.ogg",
	"Interface\\AddOns\\BigWigs_Voice_VV\\Countdown\\10.ogg",
})



