










local S = 
{
	Name 	= "Super-Shotty";
		Version = 2.0;
		HandleName = "WeaponHandle";
		
	EquipTime 	= 0.7;
		EquipAnimSpeed = 1.3;
	
	MagSize		=		 3;
			StartFull =	true;
			
	StoredAmmo 	= 		12;
	FireRate	= 		4;
	Range		= 		200;
	BulletsPerShot	= 	8;
	
	Spread		= 		15;
		CrouchSpreadReduction = 0.9;
		WalkSpreadIncrease = 1.2;
	
	BulletHoleSize = 0.15;
		FallenDmgMulti = 0.05;
	Damage		= 14;
		HeadshotMultiplier = 1.3;
		LimbMultiplier = 0.75;
		DownedDiv = 3;
		FlinchTime = 0.15;
		
		--PassoverCap = 90;
		PassoverMulti = 3;
		DidDownMulti = 0;
		
	ArmorPenetration = 0.2;	
	ArmorDmgMulti = 0.55;
		
	ReloadTime	= 1;
		ReloadAnimSpeed = 0.9;
		ReloadSlowDown = 7.5;
		
	ShotgunSettings = {
		ShotgunReload =			true;
		ShellInTime =			0.8;
		
		ReloadStartTime = 0.35;
		ReloadFinishTime = 0.5;
		
			ShellInAnimSpeed =		1;
		FirePump =				true;
				FirePumpWait1 = 2;
				FirePumpWait2 = 3.75;
				
				FirePumpAnimSpeed = 0.75;

			FShellIn =				true;
			FShellInTime =			0.2;
	};
	
	ShellType = "SG2";
	ShellOutSettings = {
		Do = true;
		Vec = Vector3.new(1,1,1);
		Vel = 4000;
		RotVel = 3;
		RotSpawn = CFrame.Angles(math.rad(-90),math.rad(0),0);
		Delay = 0.15;
		ShellSound = true;
		IsSG =  true;
	};

	RunOffset = Vector3.new(0.15,-0.25,0);
	RunAnimSpeed = 1.45;

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
		DropoffDistance = 14;
		MinDropoff = 9;
	
	Knockback = 	40;
	
	SlowDown = {
		Enabled = true;
		Amount = 1.5;
	};
	
	FireSlowDown = {
		Enabled = true;
		Amount = 5;
		Time = 0.5;
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

		Velocity = 1400;
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
			
		FPOffset = Vector3.new(0.35,-0.25,0);
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
		
		AimSpeed = 0.35;
		CrossSpeed = 30;
		
		IdleAnimSpeed = 0;
		
		FieldOfViewS = 65;
		MouseSensitiveP = 0.65; --In percent
		SpreadReductionP = 0.9; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"
		
		SlowDown = 12;
		
		RecoilReduction_X = 0.75;
		RecoilReduction_Y = 1;
		RecoilReduction_Z = 0.85;
		
		Offset = CFrame.new(-0.548,0.335,0.2) * CFrame.Angles(math.rad(1),math.rad(0),0);
		
		FireAnimWeight = 1;
		
		EasingStyle =			Enum.EasingStyle.Quint;
		EasingDirection =		Enum.EasingDirection.Out;

		FOV_EasingStyle = 		Enum.EasingStyle.Quint;
		FOV_EasingDirection =	Enum.EasingDirection.Out;
			
		DepthOfField =  {
			Enabled =		true;
			FarIntensity =	0;
			FocusDistance =	1.3;
			InFocusRadius = 0.7;
			NearIntensity =	1;
			};			
			
		ADS_ArmsOffset = CFrame.new(-0.5, 0.45, 0.2);
	};
	
	LimitedAmmoEnabled = true;
	
	CameraRecoilingEnabled = true;
	Recoil = 35;
	AngleX_Min = 4; --	this is y basically idk
	AngleX_Max = 4; --	this is y basically idk
	AngleY_Min = -1.25; -- this is x idk
	AngleY_Max = 1.25; --	this is x idk
	AngleZ_Min = -2; --	z
	AngleZ_Max = 2; --	z
	Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
	RecoilSpeed = 6.5; 
	RecoilDamper = 0.9999;
	RecoilRedution = 0; --In percent.
	
	HitmarkersEnabled = true;
    CrossSize = 		18.5;
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