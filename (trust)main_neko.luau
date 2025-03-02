while true do
    print("lmao")
    local image = "121686396182269" -- Put your image ID
    local sound = "18925320031" -- Put your sound ID
    local seconds = 37 -- Time to destroy the GUI
    local speed = 1 -- Audio playback speed
    local start = 0 -- Audio start position
    local volume = 100 -- Audio volume

    local jumpscare = Instance.new("ScreenGui")
    jumpscare.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    jumpscare.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

    local label = Instance.new("ImageLabel")
    label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    label.BorderColor3 = Color3.fromRGB(0, 0, 0)
    label.BorderSizePixel = 0
    label.Size = UDim2.new(1, 0, 1, 0)
    label.Image = "rbxassetid://" .. image
    label.Parent = jumpscare

    local audio = Instance.new("Sound")
    audio.SoundId = "rbxassetid://" .. sound
    audio.PlaybackSpeed = speed
    audio.TimePosition = start
    audio.Volume = volume
    audio.Parent = game:GetService("SoundService") -- Parent it properly
    audio:Play()

    wait(seconds)
    jumpscare:Destroy()


end
