










local S = 
	{
		Name 	= "Galil";
		Version = 2.0;
		HandleName = "WeaponHandle";

		EquipTime 	= 1;
		EquipAnimSpeed = 0.95;
		FallenDmgMulti = 0.05;
		MagSize		= 		35;
		StartFull = true;

		StoredAmmo 	= 		90;
		FireRate	= 		5.7;
		Range		= 		1150;
		BulletsPerShot	= 	1;
		Spread		= 		9;
		CrouchSpreadReduction = 0.9;
		WalkSpreadIncrease = 1.4;

		FireAnimWeight = 1;
		FireAnimSpeed = 1;

		BulletHoleSize = 0.35;

		Damage		= 21;
		HeadshotMultiplier = 1.62;
		LimbMultiplier = 0.75;
		DownedDiv = 8;
		FlinchTime = 0.2;
		DownedDmgMulti = 1.35;
		--PassoverCap = 45;

		CanExecute = false;

		ArmorPenetration = 0.8;

		ReloadTime	= 3.5;
		ReloadAnimSpeed = 1;
		ReloadSlowDown = 7.5;

		ShotgunSettings = {
			ShotgunReload = 	false;
			ShellInTime = 		0;
			ShellInAnimSpeed =	0;
			FirePump = 			false;
			FShellIn = 			false;
			FShellInTime =		0;
		};

		ShellType = "762x51";
		ShellOutSettings = {
			Do = true;
			Vec = Vector3.new(1,1,1);
			Vel = 5000;
			RotVel = 15;
			RotSpawn = CFrame.Angles(math.rad(90),math.rad(0),math.rad(0));
			ShellSound = true;	
			ShellSound_PitchMulti = 0.67;
		};

		RunOffset = Vector3.new(0.35,-0.3,-0.25);
		RunAnimSpeed = 1.45;	

		MagSettings = 
		{
			DropMag = true;
			DropWait = 1.5;
			DropForce = Vector3.new(0,10,0);
		};
		CrouchOffset = {
			Enabled = true;
			Offset = Vector3.new(0.15, -0.25, 0);
			Angle = Vector3.new(0, 0, 25);
		};		
		FireModeSettings = {
			FireMode	= "Auto";
			BurstAmount = 	3;
			BurstRate = 	17.5;	

			CanSwitch = true;
			SwitchTo = "Semi";
		};

		SniperEnabled = false;
		SniperSettings = {
		};

		MinigunEnabled = false;
		DelayBeforeFiring = 0;

		Dropoff		= 0.1;
		DropoffDistance = 3000;

		Knockback = 40;

		SlowDown = {
			Enabled = true;
			Amount = 3.25;
		};

		FireSlowDown = {
			Enabled = true;
			Amount = 5;
			Time = 0.35;
		};

		BulletSettings = {
			TracerEnabled = true; 
			ParticleEnabled = false;
			TracerOffset0 = Vector3.new(0.2, 0, 0); 
			TracerOffset1 = Vector3.new(-0.2, 0, 0);
			TracerTransparency = 0.1;
			TracerLifetime = 0.15;

			Velocity = 2500;
			Acceleration = Vector3.new(0,-100,0);
			WindOffset = Vector3.new(0, 0, 0); 
			Size = Vector3.new(0.2, 0.2, 0.2);
			Color = Color3.fromRGB(255, 89, 89);
			Transparency = 1;
			Material = Enum.Material.Neon;
			Shape = Enum.PartType.Block;

			MeshEnabled = false;
			MeshType = Enum.MeshType.Sphere;
			MeshID = nil; --437259501;
			TextureID = nil;-- 437259505;
			MeshScale = Vector3.new(1,1,1);

			LightEnabled = false;
			LightBrightness = 2;
			LightColor = Color3.fromRGB(255, 142, 119);
			LightRange = 10;
			LightShadows = true;

			ShakeMulti = 2.5;
		};

		Inspecting = {
			Enabled = true;
			AnimSpeed = 1;
			TR = -0.3;
		};

		SprayLerp = {
			Enabled = true;

			AngleX = 1;
			AngleY = 0.5;
			AngleZ = 2;

			AngleY2 = -0.75;

			HPFM = 2;	

			EaseTime = 0.05;
		};

		AimSettings = {
			Enabled = true;

			AimSpeed = 0.45;
			CrossSpeed = 30;

			IdleAnimSpeed = 0;

			FieldOfViewS = 45;
			MouseSensitiveP = 0.65; --In percent
			SpreadReductionP = 0.001; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"

			SlowDown = 12;

			RecoilReduction_X = 0.75;
			RecoilReduction_Y = 1;
			RecoilReduction_Z = 0.85;

			Offset = CFrame.new(-0.4365,0.285,0.25) * CFrame.Angles(math.rad(-0),math.rad(0),math.rad(0));

			FireAnimWeight = 1;

			EasingStyle =			Enum.EasingStyle.Quint;
			EasingDirection =		Enum.EasingDirection.Out;

			FOV_EasingStyle = 		Enum.EasingStyle.Quint;
			FOV_EasingDirection =	Enum.EasingDirection.Out;

			DepthOfField =  {
				Enabled =		true;
				FarIntensity =	0;
				FocusDistance =	0.5;
				InFocusRadius = 0.3;
				NearIntensity =	1;
			};

			ADS_ArmsOffset = CFrame.new(-0.85, 0.45, 0.2) * CFrame.Angles(math.rad(12),0,0);
			ADS_LArmOffset = CFrame.new(0, -0.4, 0);
		};

		LimitedAmmoEnabled = true;

		CameraRecoilingEnabled = true;
		Recoil = 23;
		AngleX_Min = 4; --	this is y basically idk
		AngleX_Max = 4; --	this is y basically idk
		AngleY_Min = -0.4; -- this is x idk
		AngleY_Max = 0.4; --	this is x idk
		AngleZ_Min = -1.5; --	z
		AngleZ_Max = 1.5; --	z
		Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
		RecoilSpeed = 9; 
		RecoilDamper = 0.9999;
		RecoilRedution = 0; --In percent.

		HitmarkersEnabled = true;
		CrossSize = 		13.5;
		CrossExpansion = 	100;
		CrossSpeed = 		14;
		CrossDamper	= 		0.8;

		TurnToMouse = true;
		TurnSpeed = 10;

		FlashSettings = {
			Enabled = 		true;
			Brightness = 	3;
			Color = 		Color3.fromRGB(255, 117, 89);
			Range = 		7;
			Shadows = 		true;
			Time = 			0.075;
		};

		MuzzleFlashEmitCount = 5;

		Blood = {
			Enabled = true;
			A = { -- Main
				Amount = 		{3,5};
				Speed = 		50;
				Spread = 		{-25,25};
				Size = 			5; -- Pool Size
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