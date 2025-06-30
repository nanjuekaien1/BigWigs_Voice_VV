
local name, addon = ...

--------------------------------------------------------------------------------
-- Locals
--

local tostring = tostring
local format = format
addon.SendMessage = BigWigsLoader.SendMessage

--------------------------------------------------------------------------------
-- Event Handlers
--

local path = "Interface\\AddOns\\BigWigs_Voice_VV\\Sounds\\%s.ogg"
local pathYou = "Interface\\AddOns\\BigWigs_Voice_VV\\Sounds\\%sy.ogg"
local function handler(event, module, key, sound, isOnMe)
	--local success = PlaySoundFile(format(isOnMe and pathYou or path, tostring(key)), "Master")
	local success = PlaySoundFile(format(isOnMe and pathYou or path, (addon.FilePaths[key] or "")..tostring(key)), "Master")
	if not success then
		addon:SendMessage("BigWigs_Sound", module, key, sound) 
	end
end

BigWigsLoader.RegisterMessage(addon, "BigWigs_Voice", handler)
BigWigsAPI.RegisterVoicePack("VV")

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

-- 不喜欢VV的数字语音删除以下代码
local Pull = BigWigs:GetPlugin("Pull")
Pull.db.profile.voice = VoiceID

local Countdown = BigWigs:GetPlugin("Countdown")
Countdown.db.profile.voice = VoiceID
