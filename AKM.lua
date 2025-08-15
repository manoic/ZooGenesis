









local S = 
{
	Name 	= "AKM";
		Version = 2.0;	
		HandleName = "WeaponHandle";
		
	EquipTime 	= 1;
		EquipAnimSpeed = 1;
	
	MagSize		= 		30;
			StartFull = true;
	
	StoredAmmo 	= 		90;
	FireRate	= 		7;
	Range		= 		1000;
	BulletsPerShot	= 	1;
	Spread		= 		11;
		CrouchSpreadReduction = 0.9;
		WalkSpreadIncrease = 1.2;
	
	FireAnimWeight = 1;
	FireAnimSpeed = 1;
	
	BulletHoleSize = 0.4;
	
	Damage		= 29;
		HeadshotMultiplier = 1.5;
		LimbMultiplier = 0.75;
		DownedDiv = 8;
		FlinchTime = 0.25;
	CanExecute = false;
	DownedDmgMulti = 1.35;
	ArmorPenetration = 0.8;
		
	ReloadTime	= 3.85;
		ReloadAnimSpeed = 0.95;
		ReloadSlowDown = 7.5;

	ShotgunSettings = {
		ShotgunReload = 	false;
		ShellInTime = 		0;
			ShellInAnimSpeed =	0;
		FirePump = 			false;
		FShellIn = 			false;
			FShellInTime =		0;
	};
	
	ShellType = "545";
	ShellOutSettings = {
		Do = true;
		Vec = Vector3.new(1,1,1);
		Vel = 5000;
		RotVel = 15;
		RotSpawn = CFrame.Angles(math.rad(90),math.rad(0),math.rad(0));
		ShellSound = true;
		ShellSound_PitchMulti = 0.67;
	};

	MagSettings = 
	{
		DropMag = true;
		DropWait = 1.15;
		DropForce = Vector3.new(0,-10,0);
	};

	CrouchOffset = {
		Enabled = true;
		Offset = Vector3.new(0.15, -0.1, 0);
		Angle = Vector3.new(0, 0, 25);
	};
		
	FireModeSettings = {
		FireMode	= "Auto";
		
			BurstAmount = 	3;
			BurstRate = 	25;	
		
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
	Knockback = 30;
	
	SlowDown = {
		Enabled = true;
		Amount = 3.3;
	};
	
	FireSlowDown = {
		Enabled = true;
		Amount = 5;
		Time = 0.35;
	};
		
	Inspecting = {
		Enabled = true;
		AnimSpeed = 1;
		TR = -0.3;
	};
		
	RunOffset = Vector3.new(0,0,0.25);
	RunAnimSpeed = 1.45;
	
	BulletSettings = {
		TracerEnabled = true; 
		ParticleEnabled = false;
		TracerOffset0 = Vector3.new(-0.15, -0.025, -0.205); 
		TracerOffset1 = Vector3.new(0.15, 0.025, 0.025);

		TracerTransparency = 0.125;
		TracerLifetime = 0.125;

		TracerMaxLength = 50;

		Velocity = 2000;
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

		ShakeMulti = 2.25;
	};

	SprayLerp = {
		Enabled = true;

		AngleX = 1.2;
		AngleY = 0.5;
		AngleZ = 25;

		AngleY2 = -5;

		HPFM = 1;	

		EaseTime = 0.05;
	};
		
	AimSettings = {
		Enabled = true;
		
		AimSpeed = 0.45;
		CrossSpeed = 30;
		
		IdleAnimSpeed = 0;
		
		FieldOfViewS = 47;
		MouseSensitiveP = 0.65; --In percent
		SpreadReductionP = 0.001; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"
		
		SlowDown = 12;

		RecoilReduction_X = 0.85;
		RecoilReduction_Y = 0.85;
		RecoilReduction_Z = 0.85;

		SLM_X = 0.165;
		SLM_Y = 0.5;
		SLM_Z = 0.165;

		Offset = CFrame.new(-0.37,0.28,0.6) * CFrame.Angles(math.rad(-0.2),math.rad(0.02),0);

		FireAnimWeight = 0.5;
		FireAnimSpeed = 1;
		SwitchAnimWeight = 0.5;

		EasingStyle =			Enum.EasingStyle.Quint; --Linear, Sine, Back, Quad, Quart, Quint, Bounce or Elastic?
		EasingDirection =		Enum.EasingDirection.Out; --In, Out or InOut?

		EasingTimeAdd = 0.275;	
		CrouchEaseMulti = 0.5;

		FOV_EasingStyle = 		Enum.EasingStyle.Quint;
		FOV_EasingDirection =	Enum.EasingDirection.Out; --In, Out or InOut?

		DepthOfField =  {
			Enabled =		true;
			FarIntensity =	0;
			FocusDistance =	1.6;
			InFocusRadius = 1.35;
			NearIntensity =	1;
		};

		ADS_FirePos = false;
			ADS_Reload = false;
			
		ADS_ArmsOffset = CFrame.new(-0.45, 0.35, -0.05) * CFrame.Angles(math.rad(12),0,0);
		ADS_LArmOffset = CFrame.new(0, -0.4, 0);
	};
	
	Customs = {
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
	
	LimitedAmmoEnabled = true;
	
	CameraRecoilingEnabled = true;
	Recoil = 24;
	AngleX_Min = 4; --	this is y basically idk
	AngleX_Max = 4; --	this is y basically idk
	AngleY_Min = -0.4; -- this is x idk
	AngleY_Max = 0.4; --	this is x idk
	AngleZ_Min = -1.5; --	z
	AngleZ_Max = 1.5; --	z
	Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
	RecoilSpeed = 8; 
	RecoilDamper = 0.9999;
	RecoilRedution = 0; --In percent.
	
	HitmarkersEnabled = true;
    CrossSize = 		10;
    CrossExpansion = 	100;
    CrossSpeed = 		30;
    CrossDamper	= 		0.8;

	TurnToMouse = true;
		TurnSpeed = 10;
	
	FlashSettings = {
		Enabled = 		true;
		Brightness = 	3;
		Color = 		Color3.fromRGB(255, 117, 89);
		Range = 			7;
		Shadows = 		true;
		Time = 			0.075;
	};
	
	FallenDmgMulti = 0.05;
	MuzzleFlashEmitCount = 4;
	
	Blood = {
		Enabled = true;
			A = { -- Main
				Amount = 		{2,4};
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