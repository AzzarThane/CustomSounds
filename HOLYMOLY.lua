-- I FINALLY FOUND OUT HOW TO LOAD AUDIO TO ROBLOX SESH! HOORAY! This is free btw

local function downloadFile(path, link)
    local content = game:HttpGet(link)
    writefile(path, content)
end

if not isfile("toth3.mp3") then
	downloadFile("toth3.mp3","https://github.com/AzzarThane/CustomSounds/blob/main/TOTH.mp3?raw=true") -- make sure ?raw=true is ALWAYS THERE!
end

local sound = Instance.new("Sound")
sound.Parent = game.Players.LocalPlayer
sound.SoundId = getcustomasset("toth3.mp3")

wait(5)

sound:Play()
