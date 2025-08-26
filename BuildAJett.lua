local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

while humanoid.Health > 0 do
    if humanoid.SeatPart then
        local seat = humanoid.SeatPart
        seat.CFrame = seat.CFrame + seat.CFrame.LookVector * 73737373
    end
    task.wait(0.05)
end
