










local RS = game:GetService("ReplicatedStorage")
local dir = RS:WaitForChild("Modules"):WaitForChild("ToolModules"):WaitForChild("Guns")

local S = _G.deepCopy(require(dir["MPX-K"]))

S.Recoil /= 1.15
S.DropoffDistance *= 0.6
S.ArmorPenetration *= 0.65

S.AimSettings.AimSpeed *= 1.145
S.SlowDown.Amount += 0.5

S.AimSettings.Offset  =  CFrame.new(-0.4752,0.12,0.35) * CFrame.Angles(math.rad(-0.4),math.rad(0),0);
S.AimSettings.FireAnimWeight /= 1.25
S.AimSettings.ADS_ArmsOffset = CFrame.new(-0.6, 0.4, 0.025) * CFrame.Angles(math.rad(12),0,0);

local fireAnimWeight = S.FireAnimWeight or 1
fireAnimWeight /= 1.3
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

S.BulletSettings.Transparency = 1
S.BulletSettings.MeshEnabled = false
S.BulletSettings.TracerTransparency = 0.85
S.BulletSettings.Color = Color3.new(1,1,1)
S.BulletSettings.LightEnabled = false

local shakeMulti = S.BulletSettings.ShakeMulti or 1
shakeMulti /= 1.2
S.BulletSettings.ShakeMulti = shakeMulti

return S