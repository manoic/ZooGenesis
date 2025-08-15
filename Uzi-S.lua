










local RS = game:GetService("ReplicatedStorage")
local dir = RS:WaitForChild("Modules"):WaitForChild("ToolModules"):WaitForChild("Guns")

local S = _G.deepCopy(require(dir["Uzi"]))

S.Recoil /= 1.1
S.DropoffDistance *= 0.6
S.ArmorPenetration *= 0.65

S.AimSettings.AimSpeed *= 1.175
S.SlowDown.Amount += 0.5

S.AimSettings.Offset = CFrame.new(-0.553,0.255,0.29) * CFrame.Angles(math.rad(-0.1),math.rad(0),0);
S.AimSettings.FireAnimWeight /= 1.15
S.AimSettings.ADS_ArmsOffset = CFrame.new(-0.85, 0.376, 0.02) * CFrame.Angles(math.rad(12),0,0);

S.AimSettings.DepthOfField.FocusDistance = 0.6

local fireAnimWeight = S.FireAnimWeight or 1
fireAnimWeight /= 1.15
S.FireAnimWeight = fireAnimWeight

S.Customs = {
	["ReticleSight"] = true;
};

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