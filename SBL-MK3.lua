local S = 
	{
		Name 	= "SBL-MK III";
		Type	= "Gun";
		HandleName = "WeaponHandle",
		EquipTime 	= 0.8;
		EquipAnimSpeed = 1.1;
		Version = 2,
		MagSize		= 		4;
		StartFull = true;

		StoredAmmo 	= 		8;
		HideStoredAmmo = false;

		FireRate	= 		1;
		Range		= 		1000;
		BulletsPerShot	= 	1;
		Spread		= 		5;
		CrouchSpreadReduction = 0.75;
		WalkSpreadIncrease = 1.25;

		BulletHoleSize = 0.3;

		FireAnimWeight = 1;
		FireAnimSpeed = 1;

		Damage		= 30;
		HeadshotMultiplier = 1.5;
		DownedDiv = 4;
		FlinchTime = 0.35;

		ReloadTime	= 4;
		ReloadAnimSpeed = 0.9;
		ReloadSlowDown = 7.5;

		ShotgunSettings = {
			ShotgunReload = 	false;

			ReloadStartTime = 1.3;

			ShellInTime = 		0.307;

			ReloadEndTime = 0.8;

			ShellInAnimSpeed =	1.5;

			FirePump = 			false;
			FShellIn = 			false;
			FShellInTime =		0;
		};

		ShellType = "P";
		ShellOutSettings = {
			Do = false;
			Vec = Vector3.new(0,0,0);
			Vel = 0;
			RotVel = 0;
		};

		MagSettings = 
		{
			DropMag = false;
			DropWait = 0.2;
			DropForce = Vector3.new(0,-10,0);
		};

		FireModeSettings = {
			FireMode	= "Auto";

			BurstAmount = 	3;
			BurstRate = 	16;	

			CanSwitch = false;
			SwitchTo = "Semi";
			SemiRate = 4.5;
		};

		SniperEnabled = false;
		SniperSettings = {
		};

		MinigunEnabled = false;
		DelayBeforeFiring = 0;
		MinigunFireDB = 0.75;
		GrenadeLauncherEnabled = false;
		GrenadeSpeed = 100;
		GrenadeRotVel =	20;
		RocketLauncherEnabled = true;
		RocketSpeed = 125;
		RocketUpForce = 		200;
		RocketRotVel =			1;
		RotStartTime = 0.25;
		RocketMaxRange = 400;
		RocketMaxTime = 10;
		ExplosionName = "SBL_Explosion";

		RocketName = "SBL_Rocket";

		Dropoff		= 1;
		Knockback = 1000;

		SlowDown = {
			Enabled = true;
			Amount = 3;
		};

		FireSlowDown = {
			Enabled = true;
			Amount = 3.5;
			Time = 0.5;
		};

		Inspecting = {
			Enabled = true;
			AnimSpeed = 1;
			TR = -0.3;
		};

		CrouchOffset = {
			Enabled = true;
			Offset = Vector3.new(0.15, -0.1, 0);
			Angle = Vector3.new(0, 0, 25);
		};

		RunOffset = Vector3.new(0, 0, 0.25);
		RunAnimSpeed = 1.45;

		SprayLerp = {
			Enabled = true;
			AngleX = 1.2;
			AngleY = 0.5;
			AngleZ = 1;
			AngleY2 = 0;
			HPFM = 1;
			EaseTime = 0.05;
		};

		FireBH = 0.5;

		AimSettings = {
			Enabled = true;

			AimSpeed = 0.45;
			CrossSpeed = 30;

			ShowCursor = false;
			CrossScale = 0.4;

			IdleAnimSpeed = 0;

			FieldOfViewS = 45;
			MouseSensitiveP = 0.35; --In percent
			SpreadReductionP = 0.2; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"

			SlowDown = 5;

			RecoilReduction_X = 0.75;
			RecoilReduction_Y = 1;
			RecoilReduction_Z = 0.85;

			Offset =  CFrame.new(-0.095, 0.385, 0.5);

			FireAnimWeight = 1;

			EasingStyle =			Enum.EasingStyle.Quad;
			EasingDirection =		Enum.EasingDirection.Out;

			FOV_EasingStyle = 		Enum.EasingStyle.Quad;
			FOV_EasingDirection =	Enum.EasingDirection.Out;

			ForceADS = false;
			ADS_ArmsOffset = CFrame.new(-0.45, 0.35, -0.05) * CFrame.Angles(0.20943951023931956, 0, 0);
			ADS_LArmOffset = CFrame.new(0, -0.4, 0);
		};

		LimitedAmmoEnabled = true;

		CameraRecoilingEnabled = true;
		Recoil = 40;
		AngleX_Min = 4; --	this is y basically idk
		AngleX_Max = 4; --	this is y basically idk
		AngleY_Min = -1; -- this is x idk
		AngleY_Max = 1; --	this is x idk
		AngleZ_Min = -1; --	z
		AngleZ_Max = 1; --	z
		Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
		RecoilSpeed = 15; 
		RecoilDamper = 0.999;
		RecoilRedution = 0; --In percent.

		HitmarkersEnabled = true;
		CrossSize = 		10;
		CrossExpansion = 	100;
		CrossSpeed = 		30;
		CrossDamper	= 		0.8;

		TurnToMouse = true;
		TurnSpeed = 10;

		TrailSettings =
		{
			Color =					Color3.fromRGB(255, 255, 255);
			LightEmission = 		1;
			LightInfluence = 		1;
			Transparency = 			0.1;
			FadeSpeed =				0.65;
			Width =					0.165;
		};

		FlashSettings = {
			Enabled = 		true;
			Brightness = 	5;
			Color = 		Color3.fromRGB(255, 255, 255);
			Range = 		6;
			Shadows = 		true;
			Time = 			0.05;
		};

		MuzzleFlashEmitCount = 17;

		Blood = {
			Enabled = true;
			A = { -- Main
				Amount = 		{1,1};
				Speed = 		50;
				Spread = 		{-15,15};
				Size = 			1; -- Pool Size
				WidthScale =	1;
				UpVector = 		Vector3.new(0,0,0);
				RepeatCount =	1; -- Amount of times to repeat
				RepeatTick =	0; -- Wait time between ticks
			};
			B = { -- Bleed out effect
				Amount = 		{1,1};
				Speed = 		5;
				Spread = 		{-15,15};
				Size = 			0.5; -- Pool Size
				WidthScale =	0.4;
				UpVector = 		Vector3.new(0,0,0);
				RepeatCount =	5; -- Amount of times to repeat
				RepeatTick =	0.5; -- Wait time between ticks
			};
		};

		Customs = {
			["SnowReload"] = {
				Time = 0.65;
				AnimSpeed = 1.5;
				ForceCrouch = true;
			}
		}
	}

return S