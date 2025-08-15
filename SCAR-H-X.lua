










local RS = game:GetService("ReplicatedStorage")
local dir = RS:WaitForChild("Modules"):WaitForChild("ToolModules"):WaitForChild("Guns")

local S = _G.deepCopy(require(dir["SCAR-H-1"]))

--S.Recoil /= 1

S.AimSettings.Offset = CFrame.new(-0.439,0.24,0.2) * CFrame.Angles(math.rad(-0.05),math.rad(0),math.rad(0));

--S.AimSettings.FireAnimWeight /= 1.15
S.AimSettings.DepthOfField.FocusDistance = 1.2
--S.AimSettings.ADS_ArmsOffset = CFrame.new(-0.15, 0.3, -0.1) * CFrame.Angles(math.rad(12),0,0);

S.AimSettings.AimSpeed *= 1.15
S.SlowDown.Amount += 0.5

S.SprayLerp.AngleY2 /= 1.5

--local fireAnimWeight = S.FireAnimWeight or 1
--fireAnimWeight /= 1.15
--S.FireAnimWeight = fireAnimWeight

S.Customs = {
	--LaserSight = true;
	--LaserAccuracy = 0.1;

	--["ScopeGlint"] = {
	--	PartName = "GLaser";
	--	Angle = 15;
	--	DistDiv = 5;
	--	MaxSize = 5;
	--	ReverseSize = false;
	--};
	
	["UnderbarrelLauncher"] = {
		Enabled = true;

		DisplayTypes = {
			"7.62x51";
			"M203";
		};
		
		Spread		= 		8;

		RocketLauncherEnabled = true;
		RocketSpeed = 500;
		RocketUpForce =         0;
		RocketRotVel =            3;
		RotStartTime = 0.25;
		RocketMaxRange = 2000;
		RocketMaxTime = 60;
		
		UpYOffset = Vector3.new(0,0.065,0);

		ExplosionName = "GL_Explosion_Long";
		ExplosionDelay = 0.2;
		ExplosionDelayMulti = 1.5;

		DistExplosionType = {
			Enabled = true;
			UnderDist = 12;
			ExplosionName = "GL_Explosion_Short";

			AccelerationM = true;
		};

		RocketName = "GrenadeLauncherGrenade";


		NoCrouchOffset = true;

		ChangeAnimSpeed = 1.5;

		MagSize        =         1;
		StartFull = true;
		StoredAmmo     =         2;

		FireRate    =         6.5;

		ReloadTime    = 2.7;
		ReloadAnimSpeed = 1;
		ReloadSlowDown = 7.5;

		MagSettings = 
			{
				DropMag = true;
				DropWait = 0.5;
				DropForce = Vector3.new(0,-10,0);
			};

		FireSlowDown = {
			Enabled = true;
			Amount = 5;
			Time = 0.35;
		};

		SprayLerp = {
			Enabled = true;

			AngleX = 0.5;
			AngleY = 0.5;
			AngleZ = 2;

			AngleY2 = -2;

			HPFM = 1.5;    

			EaseTime = 0.05;
		};

		CameraRecoilingEnabled = true;
		Recoil = 20;
		AngleX_Min = 4; --	this is y basically idk
		AngleX_Max = 4; --	this is y basically idk
		AngleY_Min = -1; -- this is x idk
		AngleY_Max = 1; --	this is x idk
		AngleZ_Min = -1; --	z
		AngleZ_Max = 1; --	z
		Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
		RecoilSpeed = 20; 
		RecoilDamper = 0.999;
		RecoilRedution = 0; --In percent.
		
		HitmarkersEnabled = true;
		CrossSize =         13.5;
		CrossExpansion =     100;
		CrossSpeed =         14;
		CrossDamper    =         0.8;

		AimSettings = {
			Enabled = true;

			AimSpeed = 0.45;
			CrossSpeed = 30;

			IdleAnimSpeed = 0;

			FieldOfViewS = 45;
			MouseSensitiveP = 0.4; --In percent
			SpreadReductionP = 0.1; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"

			SlowDown = 12;
			
			ShowCursor = true;
			
			RecoilReduction_X = 0.75;
			RecoilReduction_Y = 1;
			RecoilReduction_Z = 0.85;
			
			--{-0.1, 0.3, 0.5}, {-2, 0, 5}
			Offset =  CFrame.new(-0.1,0.3,0.6) * CFrame.Angles(math.rad(-2),math.rad(0),math.rad(5));

			FireAnimWeight = 1;

			EasingStyle =            Enum.EasingStyle.Quint;
			EasingDirection =        Enum.EasingDirection.Out;

			FOV_EasingStyle =        Enum.EasingStyle.Quint;
			FOV_EasingDirection =    Enum.EasingDirection.Out;

			DepthOfField =  {
				Enabled =        true;
				FarIntensity =    0;
				FocusDistance =    3.5;
				InFocusRadius = 1.5;
				NearIntensity =    0.25;
			};

			ADS_ArmsOffset = CFrame.new(-0.85, 0.3, 0.15) * CFrame.Angles(math.rad(12),0,0);
			ADS_LArmOffset = CFrame.new(0, -0.4, 0);
		};

		MuzzleFlashEmitCount = 5;
	};

	["ReticleSight"] = true;
};

return S