local S = 
	{
		Name 	= "AT4";
		Type	= "Gun";
		HandleName = "WeaponHandle";

		EquipTime 	= 1;
		EquipAnimSpeed = 1;

		MagSize		= 		1;
		StartFull = true;

		StoredAmmo 	= 		0;
		FireRate	= 		1;
		Range		= 		1500;
		BulletsPerShot	= 	1;
		Spread		= 		20;
		CrouchSpreadReduction = 0.9;
		WalkSpreadIncrease = 1.2;

		BulletHoleSize = 0.3;

		Damage		= 115;
		HeadshotMultiplier = 1.4;
		DownedDiv = 4;
		FlinchTime = 0.35;

		ReloadTime	= 6;
		ReloadAnimSpeed = 0.66666666666;
		ReloadSlowDown = 7.5;
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

		SniperEnabled =	false;
		SniperReload =	false;

		SniperSettings = {
			AimSpeed = 0.5;
			AimAnimSpeed = 1;

			WalkIncrease = true;
			WalkBlur = 15;
			WalkSpread = 15;

			FieldOfViewS = 15;
			--FieldOfViewS2 = 60;

			MouseSensitiveP = 0.22; --In percent
			SpreadRedutionS = 0.6; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"

			ScopeSensitive = 0.25;
			ScopeKnockbackSpeed = 7;
			ScopeKnockbackDamper = 0.65;
			ScopeSwaySpeed = 20;
			ScopeSwayDamper	= 0.9;

			Offset = CFrame.new(-0.4,-0.15,0) * CFrame.Angles(math.rad(5),0,0);
			--	Offset = CFrame.new(-0.1,0.1,0.1);
			Anim_EasingStyle =			Enum.EasingStyle.Quad; --Linear, Sine, Back, Quad, Quart, Quint, Bounce or Elastic?
			Anim_EasingDirection =		Enum.EasingDirection.Out; --In, Out or InOut?


			TweenLength = 0.5; -- anim
			--TweenLength2 = 0.4; --fov

			EasingStyle = Enum.EasingStyle.Quad; --Linear, Sine, Back, Quad, Quart, Quint, Bounce or Elastic?
			EasingDirection = Enum.EasingDirection.In; --In, Out or InOut?


			TweenLengthNAD = 0.3; --In second
			EasingStyleNAD = Enum.EasingStyle.Quad; --Linear, Sine, Back, Quad, Quart, Quint, Bounce or Elastic?
			EasingDirectionNAD = Enum.EasingDirection.Out; --In, Out or InOut?
		};


		MinigunEnabled = false;
		DelayBeforeFiring = 0;
		MinigunFireDB = 0.75;
		GrenadeLauncherEnabled = false;
		GrenadeSpeed = 100;
		GrenadeRotVel =	5;
		RocketLauncherEnabled = true;
		RocketSpeed = 300;
		RocketUpForce = 		240;
		RocketRotVel =			3;
		RotStartTime = 0.25;
		RocketMaxRange = 3000;
		RocketMaxTime = 60;
		ExplosionName = "Panzer_Explosion_Long";

		DistExplosionType = {
			Enabled = true;
			UnderDist = 90;
			ExplosionName = "Panzer_Explosion_Short";

			AccelerationM = true;
		};

		RocketName = "AT4_Rocket";

		Dropoff		= 1;
		Knockback = 1000;

		SlowDown = {
			Enabled = true;
			Amount = 5;
		};
		Inspecting = {
			Enabled = true;
			AnimSpeed = 1;
			TR = -0.3;
		};

		AimSettings = {
			Enabled = true;

			AimSpeed = 0.65;
			CrossSpeed = 30;

			IdleAnimSpeed = 0;

			FieldOfViewS = 70;
			MouseSensitiveP = 0.1; --In percent
			SpreadReductionP = 0.001; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"

			SlowDown = 12;

			RecoilReduction_X = 0.75;
			RecoilReduction_Y = 1;
			RecoilReduction_Z = 0.85;

			Offset = CFrame.new(-0.075, 0.3, 1.5) * CFrame.Angles(0.3, -0.168, 0.14);

			FireAnimWeight = 1;

			EasingStyle =			Enum.EasingStyle.Quad;
			EasingDirection =		Enum.EasingDirection.Out;

			FOV_EasingStyle = 		Enum.EasingStyle.Quad;
			FOV_EasingDirection =	Enum.EasingDirection.Out;

			ForceADS = true;
		};

		LimitedAmmoEnabled = true;

		CameraRecoilingEnabled = true;
		Recoil = 120;
		AngleX_Min = 4; --	this is y basically idk
		AngleX_Max = 4; --	this is y basically idk
		AngleY_Min = -2; -- this is x idk
		AngleY_Max = 2; --	this is x idk
		AngleZ_Min = -6; --	z
		AngleZ_Max = 6; --	z
		Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
		RecoilSpeed = 20; 
		RecoilDamper = 0.999;
		RecoilRedution = 0; --In percent.

		HitmarkersEnabled = true;
		CrossSize = 		20;
		CrossExpansion = 	100;
		CrossSpeed = 		30;
		CrossDamper	= 		0.8;

		TurnToMouse = true;
		TurnSpeed = 10;

		TrailSettings =
		{
			Color =					Color3.fromRGB(255, 249, 183);
			LightEmission = 		1;
			LightInfluence = 		1;
			Transparency = 			0.1;
			FadeSpeed =				0.65;
			Width =					0.165;
		};

		FlashSettings = {
			Enabled = 		true;
			Brightness = 	5;
			Color = 		Color3.fromRGB(255, 244, 202);
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