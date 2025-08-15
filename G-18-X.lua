










local RS = game:GetService("ReplicatedStorage")
local dir = RS:WaitForChild("Modules"):WaitForChild("ToolModules"):WaitForChild("Guns")

local S = _G.deepCopy(require(dir["G-18"]))

S.EquipTime *= 1.225
S.EquipAnimSpeed /= 1.225

S.ReloadTime *= 1.3333333333333
S.ReloadAnimSpeed /= 1.1

S.MagSize = 50
S.StoredAmmo = 50

S.Spread *= 1.15

S.Recoil /= 1.15

S.AimSettings.AimSpeed /= 0.7
S.SlowDown.Amount = 1.75

S.Inspecting.FPOffset = Vector3.new(0,0,-0.5)
S.Inspecting.FPOffset2 = Vector3.new(0,0,0.5) -- LA

--S.SprayLerp.AngleY2 /= 2

--local fireAnimWeight = S.FireAnimWeight or 1
--fireAnimWeight /= 1.15
--S.FireAnimWeight = fireAnimWeight



return S