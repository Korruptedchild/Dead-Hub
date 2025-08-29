local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "Speed Config"
screenGui.ResetOnSpawn = false
screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 220, 0, 120)
frame.Position = UDim2.new(0, 50, 0, 50)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = screenGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 25)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundTransparency = 1
title.Text = "Speed Config"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 18
title.Parent = frame

local speedLabel = Instance.new("TextLabel")
speedLabel.Size = UDim2.new(0, 80, 0, 25)
speedLabel.Position = UDim2.new(0, 10, 0, 40)
speedLabel.BackgroundTransparency = 1
speedLabel.Text = "Speed:"
speedLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
speedLabel.Font = Enum.Font.SourceSans
speedLabel.TextSize = 16
speedLabel.Parent = frame

local speedBox = Instance.new("TextBox")
speedBox.Size = UDim2.new(0, 100, 0, 25)
speedBox.Position = UDim2.new(0, 90, 0, 40)
speedBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
speedBox.TextColor3 = Color3.fromRGB(255, 255, 255)
speedBox.Font = Enum.Font.SourceSans
speedBox.TextSize = 16
speedBox.Text = "16"
speedBox.Parent = frame

local applyButton = Instance.new("TextButton")
applyButton.Size = UDim2.new(0, 200, 0, 25)
applyButton.Position = UDim2.new(0, 10, 0, 75)
applyButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
applyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
applyButton.Font = Enum.Font.SourceSansBold
applyButton.TextSize = 16
applyButton.Text = "Apply"
applyButton.Parent = frame

applyButton.MouseButton1Click:Connect(function()
	local speedValue = tonumber(speedBox.Text)
	if speedValue and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
		LocalPlayer.Character.Humanoid.WalkSpeed = speedValue
	end
end)
