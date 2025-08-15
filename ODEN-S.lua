











local S = 
	{
		Name 	= "ODEN-S";

		EquipTime 	= 0.75;
		EquipAnimSpeed = 1;

		MagSize		= 		30;
		StartFull = true;

		StoredAmmo 	= 		200;
		FireRate	= 		8;
		Range		= 		1500;
		BulletsPerShot	= 	1;
		Spread		= 		7;
		CrouchSpreadReduction = 0.9;
		WalkSpreadIncrease = 1.2;

		FireAnimWeight = 1;
		FireAnimSpeed = 0.7;

		BulletHoleSize = 0.35;

		Damage		= 45;
		HeadshotMultiplier = 1.5;
		LimbMultiplier = 0.75;
		DownedDiv = 1;
		FlinchTime = 0.2;
		CanExecute = true;
		BulletTypeChange = {
			Enabled = true;
			M1 = "HSP";
			RB_Reduction = 2.04; -- divide damage by;
			M2 = "RB";
		};
		
		PassoverMulti = 1;
		ForcePassover = true;
		
		ArmorPenetration = 0.9;

		ReloadTime	= 3.5;
		ReloadAnimSpeed = 1;
		ReloadSlowDown = 3;

		ShotgunSettings = {
			ShotgunReload = 	false;
			ShellInTime = 		0;
			ShellInAnimSpeed =	0;
			FirePump = 			false;
			FShellIn = 			false;
			FShellInTime =		0;
		};

		ShellType = "M";
		ShellOutSettings = {
			Do = true;
			Vec = Vector3.new(1,1,1);
			Vel = 1500;
			RotVel = 25;
			RotSpawn = CFrame.Angles(math.rad(90),math.rad(90),math.rad(0));
		};

		MagSettings = 
		{
			DropMag = true;
			DropWait = 0.5;
			DropForce = Vector3.new(0,-25,0);
		};

		FireModeSettings = {
			FireMode	= "Auto";

			BurstAmount = 	3;
			BurstRate = 	35;	

			CanSwitch = true;
			SwitchTo = "Semi";
		};

		SniperEnabled = false;
		SniperSettings = {
		};

		MinigunEnabled = false;
		DelayBeforeFiring = 0;

		Dropoff		= 0.55;
		Knockback = 17;

		SlowDown = {
			Enabled = true;
			Amount = 3;
		};

		FireSlowDown = {
			Enabled = true;
			Amount = 3;
			Time = 0.2;
		};

		RunOffset = Vector3.new(0,1.2,0);

		BulletSettings = {
			TracerEnabled = true; 
			ParticleEnabled = false;
			TracerOffset0 = Vector3.new(0.2, 0, 0); 
			TracerOffset1 = Vector3.new(-0.2, 0, 0);

			TracerTransparency = 0.9;
			TracerLifetime = 0.1;

			Velocity = 2500;
			Acceleration = Vector3.new(0,-100,0);
			WindOffset = Vector3.new(0, 0, 0); 
			Size = Vector3.new(0.2, 0.2, 0.2);
			Color = Color3.fromRGB(255, 255, 204);
			Transparency = 1;
			Material = Enum.Material.Neon;
			Shape = Enum.PartType.Block;

			MeshEnabled = false;
			MeshID = 437259501;
			TextureID = 437259505;
			MeshScale = Vector3.new(0.002, 0.002, 0.002);

			LightEnabled = false;
			LightBrightness = 0.5;
			LightColor = Color3.fromRGB(255, 200, 180);
			LightRange = 10;
			LightShadows = true;
			
			ShakeMulti = 4;
		};

		AimSettings = {
			Enabled = true;

			AimSpeed = 0.5;
			CrossSpeed = 30;

			IdleAnimSpeed = 0;

			FieldOfViewS = 35;
			MouseSensitiveP = 0.65; --In percent
			SpreadReductionP = 0.001; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"

			SlowDown = 5;

			RecoilReduction_X = 0.75;
			RecoilReduction_Y = 1;
			RecoilReduction_Z = 0.85;

			Offset = CFrame.new(-0.573,0.052,0.2) * CFrame.Angles(math.rad(0.05),math.rad(-0.3),math.rad(0));

			FireAnimWeight = 0.1;

			EasingStyle =			Enum.EasingStyle.Quad; --Linear, Sine, Back, Quad, Quart, Quint, Bounce or Elastic?
			EasingDirection =		Enum.EasingDirection.Out; --In, Out or InOut?

			FOV_EasingStyle = 		Enum.EasingStyle.Quad; --Linear, Sine, Back, Quad, Quart, Quint, Bounce or Elastic?
			FOV_EasingDirection =	Enum.EasingDirection.Out; --In, Out or InOut?
		};


		LimitedAmmoEnabled = true;

		CameraRecoilingEnabled = true;
		Recoil = 38;
		AngleX_Min = 4; --	this is y basically idk
		AngleX_Max = 4; --	this is y basically idk
		AngleY_Min = -0.4; -- this is x idk
		AngleY_Max = 0.4; --	this is x idk
		AngleZ_Min = -1; --	z
		AngleZ_Max = 1; --	z
		Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
		RecoilSpeed = 8; 
		RecoilDamper = 0.9999;
		RecoilRedution = 0; --In percent.

		HitmarkersEnabled = true;
		CrossSize = 		7;
		CrossExpansion = 	100;
		CrossSpeed = 		30;
		CrossDamper	= 		0.8;

		TurnToMouse = true;
		TurnSpeed = 10;


		FlashSettings = {
			Enabled = 		false;
			Brightness = 	0.175;
			Color = 		Color3.fromRGB(255, 244, 202);
			Range = 		8;
			Shadows = 		true;
			Time = 			0.075;
		};

		MuzzleFlashEmitCount = 8;

		Customs = {
			LaserSight = true;
			LaserAccuracy = 0.1;
	
			["ScopeGlint"] = {
				PartName = "GLaser";
				Angle = 20;
				DistDiv = 5;
				MaxSize = 10;
				ReverseSize = false;
			};
			
			["ReticleSight"] = true;
		};


		Blood = {
			Enabled = true;
			A = { -- Main
				Amount = 		{1,3};
				Speed = 		100;
				Spread = 		{-25,25};
				Size = 			2.25; -- Pool Size
				WidthScale =	1;
				UpVector = 		Vector3.new(0,-20,0);
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