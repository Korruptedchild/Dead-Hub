local Players = game:GetService("Players")
local player = Players.LocalPlayer
local alive = true
local running = false

local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
humanoid.Died:Connect(function() alive = false end)

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 120, 0, 50)
button.Position = UDim2.new(0.5, -60, 0.5, -25)
button.Text = "Start"
button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
button.TextColor3 = Color3.new(1,1,1)
button.Parent = screenGui
button.Active = true
button.Draggable = true

button.MouseButton1Click:Connect(function()
	running = not running
	button.Text = running and "Stop" or "Start"
end)

local remote = game:GetService("ReplicatedStorage"):WaitForChild("src"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("GameService"):WaitForChild("RE"):WaitForChild("HandleClick")

spawn(function()
	while alive do
		if running then
			for i = 1, 200 do
				remote:FireServer(2)
			end
		end
		wait(0.05)
	end
end)
