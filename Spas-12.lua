










local S = 
{
	Name 	= "SPAS-12";
		Version = 2.0;
		HandleName = "WeaponHandle";
		
	EquipTime 	= 0.9;
		EquipAnimSpeed = 0.9;
	
	MagSize		=		 6;
			StartFull =	true;
			
	StoredAmmo 	= 		24;
	FireRate	= 		6.5;
	Range		= 		200;
		BulletsPerShot	= 	12;
		
	FireAnimSpeed = 1.1;
		FallenDmgMulti = 0.05;
	Spread		= 		24;
		CrouchSpreadReduction = 0.8;
		WalkSpreadIncrease = 1.35;
	
	BulletHoleSize = 0.1;
	
	Damage		= 12;
		HeadshotMultiplier = 1.4;
		LimbMultiplier = 0.65;
		DownedDiv = 3;
		FlinchTime = 0.15;
		
		--PassoverCap = 90;
		PassoverMulti = 3;
		--Passover2 = true;
		--NoPassover = false;
		DidDownMulti = 0;
		
	ArmorPenetration = 0.2;
	ArmorDmgMulti = 0.55;
		
	ReloadTime	= 1;
		ReloadAnimSpeed = 0.8;
		ReloadSlowDown = 9;
		
	ShotgunSettings = {
		ShotgunReload =			true;
		ShellInTime =			0.65;
		
		ReloadStartTime = 0.3;
		ReloadFinishTime = 0.45;
		
			ShellInAnimSpeed =		1.15;
		FirePump =				true;
			FirePumpWait1 = 1.35;
			FirePumpWait2 = 3.75;
		
			FirePumpAnimSpeed = 0.75;
		
		FShellIn =				true;
		FShellInTime =			0.2;
		
	};
	
	ShellType = "SG2";
	ShellOutSettings = {
		Do = true;
		Vec = Vector3.new(1,1,1);
		Vel = 2000;
		RotVel = 0;
		RotSpawn = CFrame.Angles(0,math.rad(180),0);

		Delay = 0.15;
		ShellSound = true;
		IsSG =  true;
	};
	
	RunOffset = Vector3.new(0.15,-0.25,0);
	RunAnimSpeed = 1.35;
		
	MagSettings = 
	{
		DropMag = false;
		DropWait = 0.2;
		DropForce = Vector3.new(0,-10,0);
	};
	CrouchOffset = {
		Enabled = true;
		Offset = Vector3.new(0.15, -0.25, 0);
		Angle = Vector3.new(0, 0, 25);
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

	MinigunEnabled = false;
		DelayBeforeFiring = 0;
		MinigunFireDB = 0.75;
	GrenadeLauncherEnabled = false;
		GrenadeSpeed = 100;
		GrenadeRotVel =	5;
	RocketLauncherEnabled = false;
		RocketSpeed = 			45;
		RocketUpForceMulti =	4;
		RocketRotVel =			2.5;
			
	Dropoff		= 0.1;
		DropoffDistance = 17;
		MinDropoff = 11;
	
	Knockback = 	65;
	KnockbackUpVec = 1;
	
	SlowDown = {
		Enabled = true;
		Amount = 3.5;
	};
	
	FireSlowDown = {
		Enabled = true;
		Amount = 5;
		Time = 0.75;
	};

	Customs = {
		Infected_ExplodeHead = true;
	};
		
	BulletSettings = {
		TracerEnabled = true; 
		ParticleEnabled = false;
		TracerOffset0 = Vector3.new(0.1, 0, 0); 
		TracerOffset1 = Vector3.new(-0.1, 0, 0);
		TracerTransparency = 0.1;
		TracerLifetime = 0.125;
		
		Velocity = 1500;
		Acceleration = Vector3.new(0,-100,0);
		WindOffset = Vector3.new(0, 0, 0); 
		Size = Vector3.new(0.2, 0.2, 0.2);
		Color = Color3.fromRGB(255, 117, 89);
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
		LightColor = Color3.fromRGB(196, 255, 119);
		LightRange = 10;
		LightShadows = true;
			
		ShakeMulti = 1;
	};
		
	Inspecting = {
		Enabled = true;
		AnimSpeed = 1;
		TR = -0.3;
	};

	SprayLerp = {
		Enabled = true;

		AngleX = 7.5;
		AngleY = 0.5;
		AngleZ = 7.5;

		AngleY2 = -0.1;

		HPFM = 1;	

		EaseTime = 0.1;
	};
		
	AimSettings = {
		Enabled = true;
		
		AimSpeed = 0.45;
		CrossSpeed = 30;
		
		IdleAnimSpeed = 0;
		
		FieldOfViewS = 65;
		MouseSensitiveP = 0.65; --In percent
		SpreadReductionP = 0.9; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"
		
		SlowDown = 12;
		
		RecoilReduction_X = 0.75;
		RecoilReduction_Y = 1;
		RecoilReduction_Z = 0.85;
		
		Offset = CFrame.new(-0.548,0.33,0.2) * CFrame.Angles(math.rad(1),math.rad(0),0);
		
		FireAnimWeight = 1;
		
		EasingStyle =			Enum.EasingStyle.Quint;
		EasingDirection =		Enum.EasingDirection.Out;

		FOV_EasingStyle = 		Enum.EasingStyle.Quint;
		FOV_EasingDirection =	Enum.EasingDirection.Out;
		
			DepthOfField =  {
				Enabled =		true;
				FarIntensity =	0;
				FocusDistance =	0.55;
				InFocusRadius = 0.3;
				NearIntensity =	1;
			};
			
		ADS_ArmsOffset = CFrame.new(-0.5, 0.45, 0.2);
	};

	LimitedAmmoEnabled = true;
	
	CameraRecoilingEnabled = true;
	Recoil = 75;
	AngleX_Min = 4; --	this is y basically idk
	AngleX_Max = 4; --	this is y basically idk
	AngleY_Min = -1.5; -- this is x idk
	AngleY_Max = 1.5; --	this is x idk
	AngleZ_Min = -1; --	z
	AngleZ_Max = 1; --	z
	Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
	RecoilSpeed = 10; 
	RecoilDamper = 0.9999;
	RecoilRedution = 0; --In percent.
	
	HitmarkersEnabled = true;
    CrossSize = 		20;
    CrossExpansion = 	100;
    CrossSpeed = 		30;
    CrossDamper	= 		0.8;

	TurnToMouse = true;
		TurnSpeed = 10;
	
	FlashSettings = {
		Enabled = 		true;
		Brightness = 	4;
		Color = 		Color3.fromRGB(255, 117, 89);
		Range = 		6;
		Shadows = 		true;
		Time = 			0.1;
	};
	
	MuzzleFlashEmitCount = 7;
	
	Blood = {
		Enabled = true;
			A = { -- Main
				Amount = 		{2,4};
				Speed = 		50;
				Spread = 		{-25,25};
				Size = 			3; -- Pool Size
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