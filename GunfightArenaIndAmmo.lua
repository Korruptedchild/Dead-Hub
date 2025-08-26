local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Weapons = ReplicatedStorage:WaitForChild("Weapons")

for _, weapon in pairs(Weapons:GetChildren()) do
    if weapon:FindFirstChild("Variables") then
        local vars = weapon.Variables
        if vars:FindFirstChild("Ammo") then
            vars.Ammo.Value = 8383828
        end
        if vars:FindFirstChild("StoredAmmo") then
            vars.StoredAmmo.Value = 8383828
        end
    end
end
