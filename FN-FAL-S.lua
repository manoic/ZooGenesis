










local RS = game:GetService("ReplicatedStorage")
local dir = RS:WaitForChild("Modules"):WaitForChild("ToolModules"):WaitForChild("Guns")

local S = _G.deepCopy(require(dir["FN-FAL"]))

S.Recoil /= 1.3
S.DropoffDistance *= 0.8
S.ArmorPenetration *= 0.75

S.AimSettings.Offset = CFrame.new(-0.432,0.235,0.1) * CFrame.Angles(math.rad(-0.9),math.rad(0.05),math.rad(0));
S.AimSettings.FireAnimWeight /= 1.5
S.AimSettings.FieldOfViewS = 25
S.AimSettings.ADS_ArmsOffset = CFrame.new(-0.85, 0.55, 0.165) * CFrame.Angles(math.rad(12),0,0);

S.AimSettings.AimSpeed *= 1.175
S.SlowDown.Amount += 0.5

local fireAnimWeight = S.FireAnimWeight or 1
fireAnimWeight /= 1.15
S.FireAnimWeight = fireAnimWeight

S.Customs = {
	--["ScopeGlint"] = {
	--	PartName = "GLaser";
	--	Angle = 15;
	--	DistDiv = 5;
	--	MaxSize = 5;
	--	ReverseSize = false;
	--};

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