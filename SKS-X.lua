 










local S = 
{
	Name 	= "SKS-X";
		Type	= "Gun";
		Version = 1.0;
		HandleName = "Handle";
		
	EquipTime 	= 1;
		EquipAnimSpeed = 1.1;
	
	MagSize		= 		10;
			StartFull = true;
	
	StoredAmmo 	= 		30;
	FireRate	= 		4.5;
	Range		= 		1000;
	BulletsPerShot	= 	1;
	Spread		= 		11;
		CrouchSpreadReduction = 0.9;
		WalkSpreadIncrease = 1.4;
	
	FireAnimWeight = 1;
	FireAnimSpeed = 0.85;

	BulletHoleSize = 0.35;
	
	Damage		= 29;
		HeadshotMultiplier = 1.5;
		LimbMultiplier = 0.75;
		DownedDiv = 8;
		FlinchTime = 0.25;
	CanExecute = false;
	
	ArmorPenetration = 0.73;
		
	ReloadTime	= 4;
		ReloadAnimSpeed = 0.85;
		ReloadSlowDown = 7.5;

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
		ShellSound = true;
		ShellSound_PitchMulti = 0.67;
	};
	
	MagSettings = 
	{
		DropMag = true;
		DropWait = 2;
		DropForce = Vector3.new(0,10,0);
	};
		
	FireModeSettings = {
		FireMode	= "Semi";
		
			BurstAmount = 	3;
			BurstRate = 	25;	
		
		CanSwitch = false;
			SwitchTo = "Semi";
	};

	SniperEnabled = false;
	SniperSettings = {
	};

	MinigunEnabled = false;
		DelayBeforeFiring = 0;
		
	Dropoff		= 0.1;
		DropoffDistance = 2000;
		
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
		
	RunAnimSpeed = 1.45;
	RunOffset = Vector3.new(0,-0.15,0.1);
	
	BulletSettings = {
		TracerEnabled = true; 
		ParticleEnabled = false;
		TracerOffset0 = Vector3.new(0.2, 0, 0); 
		TracerOffset1 = Vector3.new(-0.2, 0, 0);
		TracerTransparency = 0.1;
		TracerLifetime = 0.15;
		
		Velocity = 2500;
		WindOffset = Vector3.new(0, 0, 0); 
		Size = Vector3.new(0.2, 0.2, 0.2);
		Acceleration = Vector3.new(0,-100,0);
		Color = Color3.fromRGB(255, 117, 89);
		Transparency = 1;
		Material = Enum.Material.Neon;
       	Shape = Enum.PartType.Block;

        MeshEnabled = false;
        MeshID = 437259501;
      	TextureID = 437259505;
       	MeshScale = Vector3.new(0.002, 0.002, 0.002);

        LightEnabled = false;
        LightBrightness = 2;
			LightColor = Color3.fromRGB(255, 117, 89);
      	LightRange = 10;
		LightShadows = true;
			
		ShakeMulti = 2.25;
	};
	
	Customs = {
		--LaserSight = true;
		--LaserAccuracy = 0.1;

		--["ScopeGlint"] = {
		--	PartName = "GLaser";
		--	Angle = 15;
		--	DistDiv = 5;
		--	MaxSize = 5;
		--	ReverseSize = false;
		--};
		
		--["ReticleSight"] = true;
	};
	
	LimitedAmmoEnabled = true;
		
	Inspecting = {
		Enabled = true;
		AnimSpeed = 1;
		TR = -0.3;
	};

	CrouchOffset = {
		Enabled = true;
		Offset = Vector3.new(0.15, -0.25, 0);
		Angle = Vector3.new(0, 0, 25);
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

		Offset = CFrame.new(-0.515,0.39,0.55) * CFrame.Angles(math.rad(2.5),math.rad(4.18),math.rad(-0.5));

		FireAnimWeight = 0.65;

		EasingStyle =			Enum.EasingStyle.Quint;
		EasingDirection =		Enum.EasingDirection.Out;

		FOV_EasingStyle = 		Enum.EasingStyle.Quint;
		FOV_EasingDirection =	Enum.EasingDirection.Out;
		
		DepthOfField =  {
			Enabled =		true;
			FarIntensity =	0;
			FocusDistance =	0;
			InFocusRadius =	0.1;
			NearIntensity =	1;
		};
			
			ADS_ArmsOffset = CFrame.new(0, 0.35, 0.15);
	};

	CameraRecoilingEnabled = true;
	Recoil = 21;
	AngleX_Min = 4; --	this is y basically idk
	AngleX_Max = 4; --	this is y basically idk
	AngleY_Min = -0.4; -- this is x idk
	AngleY_Max = 0.4; --	this is x idk
	AngleZ_Min = -1.5; --	z
	AngleZ_Max = 1.5; --	z
	Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
	RecoilSpeed = 8.5; 
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
		Color = 		Color3.fromRGB(255, 244, 202);
		Range = 		7;
		Shadows = 		true;
		Time = 			0.075;
	};
	
	MuzzleFlashEmitCount = 4;
	
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