










local RS = game:GetService("ReplicatedStorage")
local dir = RS:WaitForChild("Modules"):WaitForChild("ToolModules"):WaitForChild("Guns")

local S = _G.deepCopy(require(dir["AK-103"]))

S.Recoil /= 1

S.AimSettings.Offset  =  CFrame.new(-0.37,0.25,0.25) * CFrame.Angles(math.rad(-0),math.rad(0.03),0);
S.AimSettings.FireAnimWeight /= 1.15
S.AimSettings.DepthOfField.FocusDistance = 0.75
S.AimSettings.ADS_ArmsOffset = CFrame.new(-0.15, 0.3, -0.1) * CFrame.Angles(math.rad(12),0,0);

S.AimSettings.AimSpeed *= 1.175
S.SlowDown.Amount += 0.5

S.SprayLerp.AngleY2 /= 2

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

return S