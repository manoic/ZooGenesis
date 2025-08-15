










local S = 
{
	Name 	= "SCAR-L";
	Version = 2.0;	

	HandleName = "WeaponHandle";
	
	EquipTime 	= 0.85;
	EquipAnimSpeed = 1.15;
	
	MagSize		= 		24;
			StartFull = true;
	
	StoredAmmo 	= 		96;
	FireRate	= 		6;
	Range		= 		1000;
	BulletsPerShot	= 	1;
	Spread		= 		7.5;
		CrouchSpreadReduction = 0.8;
		WalkSpreadIncrease = 1.25;
	
	FireAnimWeight = 0.7;
	FireAnimSpeed = 1;
	FallenDmgMulti = 0.05;
	FireAnimStartSpeed = 0;
	
	BulletHoleSize = 0.5;
	
	Damage		= 28;
		HeadshotMultiplier = 1.5;
		LimbMultiplier = 0.8;
		DownedDiv = 4;
		FlinchTime = 0.15;
		
	ArmorPenetration = 0.6;
	--CanExecute = true;
	--	BulletTypeChange = {
	--		Enabled = true;
	--		M1 = "HSP";
	--		RB_Reduction = 1.25; -- divide damage by;
	--		M2 = "RB";
	--	};
		
	ReloadTime	= 2.5;
	ReloadAnimSpeed = 1.3;
		ReloadSlowDown = 10;
		
	ShotgunSettings = {
		ShotgunReload = 	false;
		ShellInTime = 		0;
			ShellInAnimSpeed =	0;
		FirePump = 			false;
		FShellIn = 			false;
			FShellInTime =		0;
	};
	
	ShellType = "556";
	ShellOutSettings = {
		Do = true;
		Vec = Vector3.new(1,1,1);
		Vel = 5000;
		RotVel = 15;
		RotSpawn = CFrame.Angles(math.rad(90),math.rad(0),math.rad(0));
		ShellSound = true;
		ShellSound_PitchMulti = 0.67;
	};
	
	RunAnimSpeed = 1.35;	
	RunOffset = Vector3.new(0,-0.2,0);
		
	MagSettings = 
	{
		DropMag = true;
		DropWait = 0.375;
		DropForce = Vector3.new(0,-10,0);
	};
	CrouchOffset = {
		Enabled = true;
		Offset = Vector3.new(0.15, -0.25, 0);
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
		
	Knockback = 17;
		
	SlowDown = {
		Enabled = true;
		Amount = 2;
	};
	
	FireSlowDown = {
		Enabled = true;
		Amount = 5;
		Time = 0.35;
	};
	
	BulletSettings = {
		TracerEnabled = true; 
		ParticleEnabled = false;
		TracerOffset0 = Vector3.new(-0.15, -0.025, -0.205); 
		TracerOffset1 = Vector3.new(0.15, 0.025, 0.025);

		TracerTransparency = 0.1;
		TracerLifetime = 0.125;

		TracerMaxLength = 50;

		Velocity = 2200;
		Acceleration = Vector3.new(0,-100,0);
		WindOffset = Vector3.new(0, 0, 0); 
		Size = Vector3.new(0.2, 0.2, 0.2);
		Color = Color3.fromRGB(255, 89, 89);
		Transparency = 1;
		Material = Enum.Material.Neon;
		Shape = Enum.PartType.Block;

		MeshEnabled = true;
		MeshType = Enum.MeshType.Sphere;
		MeshID = nil; --437259501;
		TextureID = nil;-- 437259505;
		MeshScale = Vector3.new(1,1,1);

		LightEnabled = false;
		LightBrightness = 2;
		LightColor = Color3.fromRGB(255, 142, 119);
		LightRange = 10;
		LightShadows = true;
			
		ShakeMulti = 1.5;
	};
		
	Inspecting = {
		Enabled = true;
		AnimSpeed = 1;
		TR = -0.3;
	};
		
	SprayLerp = {
		Enabled = true;

		AngleX = 0.6;
		AngleY = 0.5;
		AngleZ = 3;

		AngleY2 = -1;

		HPFM = 2;	

		EaseTime = 0.05;
	};
		
	AimSettings = {
		Enabled = true;
		
		AimSpeed = 0.45;
		CrossSpeed = 30;
		
		IdleAnimSpeed = 0;
		
		FieldOfViewS = 55;
		MouseSensitiveP = 0.65; --In percent
		SpreadReductionP = 0.001; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"
		
		SlowDown = 12;
		
		RecoilReduction_X = 0.75;
		RecoilReduction_Y = 1;
		RecoilReduction_Z = 0.85;
		
		Offset = CFrame.new(-0.3587,0.129,0.4) * CFrame.Angles(math.rad(-0.175),math.rad(0),math.rad(0));
		
		FireAnimWeight = 0.715;
		FireAnimSpeed = 1;
		SwitchAnimWeight = 0.5;

		EasingStyle =			Enum.EasingStyle.Quint; --Linear, Sine, Back, Quad, Quart, Quint, Bounce or Elastic?
		EasingDirection =		Enum.EasingDirection.Out; --In, Out or InOut?

		EasingTimeAdd = 0.275;	
		CrouchEaseMulti = 0.5;

		FOV_EasingStyle = 		Enum.EasingStyle.Quint;
		FOV_EasingDirection =	Enum.EasingDirection.Out; --In, Out or InOut?
			
		ArmOffset = {
			Enabled = true;
			rArmOffset = CFrame.new(0.3,0.275,-0.7) *  CFrame.Angles(0,math.rad(2.5),0);
			lArmOffset = CFrame.new(-0.15,0.2,0.9);
		};

		DepthOfField =  {
			Enabled =		true;
			FarIntensity =	0;
			FocusDistance =	0.55;
			InFocusRadius = 0.3;
			NearIntensity =	1;
			};
			
		ADS_ArmsOffset = CFrame.new(-0.15, 0.2, 0.2) * CFrame.Angles(math.rad(12),0,0);
		ADS_LArmOffset = CFrame.new(0, -0.35, 0.1);
	};
	
	
	LimitedAmmoEnabled = true;
	
	CameraRecoilingEnabled = true;
	Recoil = 19;
	AngleX_Min = 4; --	this is y basically idk
	AngleX_Max = 4; --	this is y basically idk
	AngleY_Min = -0.4; -- this is x idk
	AngleY_Max = 0.4; --	this is x idk
	AngleZ_Min = -1; --	z
	AngleZ_Max = 1; --	z
	Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
	RecoilSpeed = 9; 
	RecoilDamper = 0.9999;
	RecoilRedution = 0; --In percent.
	
	HitmarkersEnabled = true;
    CrossSize = 		9.5;
    CrossExpansion = 	100;
    CrossSpeed = 		30;
    CrossDamper	= 		0.8;

	TurnToMouse = true;
		TurnSpeed = 10;
	
	
	FlashSettings = {
		Enabled = 		true;
		Brightness = 	3;
		Color = 		Color3.fromRGB(255, 244, 202);
		Range = 		7;
		Shadows = 		true;
		Time = 			0.075;
	};
	
	MuzzleFlashEmitCount = 2;
	
	Blood = {
		Enabled = true;
			A = { -- Main
				Amount = 		{2,4};
				Speed = 		50;
				Spread = 		{-25,25};
				Size = 			4; -- Pool Size
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