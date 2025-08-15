local S = 
	{
		Name 	= "Ray Gun";
		Type	= "Gun";

		EquipTime 	= 0.75;
		EquipAnimSpeed = 1;

		MagSize		= 		20;
		StartFull = true;

		StoredAmmo 	= 		40;
		FireRate	= 		3;
		Range		= 		1000;
		BulletsPerShot	= 	1;
		Spread		= 		5;
		CrouchSpreadReduction = 0.9;
		WalkSpreadIncrease = 1.2;

		BulletHoleSize = 0.3;
		
		FireAnimSpeed = 1.5;

		Damage		= 39;
		HeadshotMultiplier = 1;
		DownedDiv = 4;
		FlinchTime = 0.35;

		ReloadTime	= 5;
		ReloadAnimSpeed = 0.9;
		ReloadSlowDown = 5;

		ShotgunSettings = {
			ShotgunReload = 	false;
			ShellInTime = 		0;
			ShellInAnimSpeed =	0;
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
			FireMode	= "Semi";

			BurstAmount = 	3;
			BurstRate = 	25;	

			CanSwitch = false;
			SwitchTo = "Semi"
		};

		SniperEnabled = false;
		SniperSettings = {
		};

		RunOffset = Vector3.new(0,0.5,0);

		MinigunEnabled = false;
		DelayBeforeFiring = 0;
		MinigunFireDB = 0.75;
		GrenadeLauncherEnabled = false;
		GrenadeSpeed = 100;
		GrenadeRotVel =	5;
		
		RocketLauncherEnabled = true;
		RocketSpeed = 300;
		RocketUpForce = 	250;
		RocketRotVel =		3;
		RotStartTime = 0.25;
		RocketMaxRange = 150;
		RocketMaxTime = 5;
		ExplosionName = "RayGun_Explosion";

		--DistExplosionType = {
		--	Enabled = false;
		--	UnderDist = 90;
		--	ExplosionName = "RPG_Explosion_Short";

		--	AccelerationM = true;
		--};

		RocketName = "RayGun_Ray";

		Dropoff		= 1;
		Knockback = 1000;

		SlowDown = {
			Enabled = false;
			Amount = 3;
		};
		FireSlowDown = {
			Enabled = true;
			Amount = 3.5;
			Time = 0.5;
		};

		FireBH = 0.25;

		AimSettings = {
			Enabled = true;

			AimSpeed = 0.3;
			CrossSpeed = 30;

			IdleAnimSpeed = 0;

			FieldOfViewS = 45;
			MouseSensitiveP = 0.35; --In percent
			SpreadReductionP = 0.001; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"

			SlowDown = 5;

			RecoilReduction_X = 0.75;
			RecoilReduction_Y = 1;
			RecoilReduction_Z = 0.85;

			Offset = CFrame.new(-0.671,0.228,0.6) * CFrame.Angles(math.rad(0.4),math.rad(0.9),0);

			FireAnimWeight = 1;

			EasingStyle =			Enum.EasingStyle.Quad;
			EasingDirection =		Enum.EasingDirection.Out;

			FOV_EasingStyle = 		Enum.EasingStyle.Quad;
			FOV_EasingDirection =	Enum.EasingDirection.Out;

			ForceADS = false;
		};

		LimitedAmmoEnabled = true;

		CameraRecoilingEnabled = true;
		Recoil = 40;
		AngleX_Min = 4; --	this is y basically idk
		AngleX_Max = 4; --	this is y basically idk
		AngleY_Min = -2; -- this is x idk
		AngleY_Max = 2; --	this is x idk
		AngleZ_Min = -6; --	z
		AngleZ_Max = 6; --	z
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
			Color =					Color3.fromRGB(135, 255, 116);
			LightEmission = 		1;
			LightInfluence = 		1;
			Transparency = 			0.1;
			FadeSpeed =				0.65;
			Width =					0.165;
		};

		FlashSettings = {
			Enabled = 		true;
			Brightness = 	5;
			Color = 		Color3.fromRGB(135, 255, 116);
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
		}
	}

return S