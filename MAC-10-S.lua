










local RS = game:GetService("ReplicatedStorage")
local dir = RS:WaitForChild("Modules"):WaitForChild("ToolModules"):WaitForChild("Guns")

local S = _G.deepCopy(require(dir["MAC-10"]))

S.Recoil /= 1.15
S.DropoffDistance *= 0.6
S.ArmorPenetration *= 0.65

S.AimSettings.AimSpeed *= 1.1
S.SlowDown.Amount += 0.25

local fireAnimWeight = S.FireAnimWeight or 1
fireAnimWeight /= 1.25
S.FireAnimWeight = fireAnimWeight

S.FlashSettings.Enabled = false;

S.BulletSettings.Transparency = 1
S.BulletSettings.MeshEnabled = false
S.BulletSettings.TracerTransparency = 0.85
S.BulletSettings.Color = Color3.new(1,1,1)
S.BulletSettings.LightEnabled = false

local shakeMulti = S.BulletSettings.ShakeMulti or 1
shakeMulti /= 1.2
S.BulletSettings.ShakeMulti = shakeMulti

return S