










local RS = game:GetService("ReplicatedStorage")
local dir = RS:WaitForChild("Modules"):WaitForChild("ToolModules"):WaitForChild("Guns")

local S = _G.deepCopy(require(dir["AR-15"]))

S.Recoil /= 1.15
S.DropoffDistance *= 0.6
S.ArmorPenetration *= 1

S.AimSettings.Offset = CFrame.new(-0.365,0.18,0.2) * CFrame.Angles(math.rad(-0.175),math.rad(0),math.rad(0));
S.AimSettings.FireAnimWeight /= 1.5
S.AimSettings.ADS_ArmsOffset = CFrame.new(-0.15, 0.25, 0.2) * CFrame.Angles(math.rad(12),0,0);

S.AimSettings.AimSpeed *= 1.175
S.SlowDown.Amount += 0.5

local fireAnimWeight = S.FireAnimWeight or 1
fireAnimWeight /= 1.15
S.FireAnimWeight = fireAnimWeight

S.Customs = {
	LaserSight = true;
	LaserAccuracy = 0.1;

	["ScopeGlint"] = {
		PartName = "GLaser";
		Angle = 15;
		DistDiv = 5;
		MaxSize = 5;
		ReverseSize = false;
	};

	["ReticleSight"] = true;
};

S.FlashSettings.Enabled = false;

S.BulletSettings.Transparency = 0
S.BulletSettings.MeshEnabled = false
S.BulletSettings.TracerTransparency = 0.85
S.BulletSettings.Color = Color3.new(1,1,1)
S.BulletSettings.LightEnabled = true

local shakeMulti = S.BulletSettings.ShakeMulti or 1
shakeMulti /= 1.2
S.BulletSettings.ShakeMulti = shakeMulti

return S