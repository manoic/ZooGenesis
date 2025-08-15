










local S = 
{
	Name 	= "Tommy Gun";
		Version = 2.0;
		HandleName = "WeaponHandle";
		
	EquipTime 	= 1;
		EquipAnimSpeed = 0.8;
	
	MagSize		= 		50;
			StartFull = true;
	
	StoredAmmo 	= 		100;
	FireRate	= 		9.25; -- 8.5
	Range		= 		850;
	BulletsPerShot	= 	1;
	Spread		= 		10;
		CrouchSpreadReduction = 0.9;
		WalkSpreadIncrease = 1.2;
	
	FireAnimWeight = 1;
	FireAnimSpeed = 1;
		FallenDmgMulti = 0.05;
	BulletHoleSize = 0.275;
	
	Damage		= 17;
		HeadshotMultiplier = 1.4;
		LimbMultiplier = 0.75;
		DownedDiv = 3;
		FlinchTime = 0.15;
	DownedDmgMulti = 1.2;
	ArmorPenetration = 0.57;
		
	ReloadTime	= 4;
		ReloadAnimSpeed = 0.765;
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
		RotSpawn = CFrame.Angles(math.rad(0),math.rad(0),math.rad(0));
		ShellSound = true;
	};
	
	MagSettings = 
	{
		DropMag = true;
		DropWait = 0.55;
		DropForce = Vector3.new(0,-10,0);
	};
		
	CrouchOffset = {
		Enabled = true;
		Offset = Vector3.new(-0.2,-0.15,0.25);
		Angle = Vector3.new(0, 0, 20);
	};	
	
	FireModeSettings = {
		FireMode	= "Auto";
		
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
		DropoffDistance = 1500;
		
	Knockback = 20;
	
	SlowDown = {
		Enabled = true;
		Amount = 2;
	};
	
	FireSlowDown = {
		Enabled = true;
		Amount = 5;
		Time = 0.35;
	};
		
	RunAnimSpeed = 1.45;
	RunOffset = Vector3.new(0,-0.15,0.25);
		
	Inspecting = {
		Enabled = true;
		AnimSpeed = 1;
		TR = -0.3;
	};		
		
	BulletSettings = {
		TracerEnabled = true; 
		ParticleEnabled = false;
		TracerOffset0 = Vector3.new(-0.075, -0.025, -0.205); 
		TracerOffset1 = Vector3.new(0.075, 0.025, 0.025);

		TracerTransparency = 0.1;
		TracerLifetime = 0.125;

		TracerMaxLength = 50;
		TracerSizeMulti = 1;

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

		ShakeMulti = 2.5;
	};
		
	SprayLerp = {
		Enabled = true;

		AngleX = 1;
		AngleY = 0.5;
		AngleZ = 3;

		AngleY2 = -0;

		HPFM = 3.5;	

		EaseTime = 0.05;
	};
		
	AimSettings = {
		Enabled = true;
		
		AimSpeed = 0.4;
		CrossSpeed = 30;
		
		IdleAnimSpeed = 0;
		
		FieldOfViewS = 60;
		MouseSensitiveP = 0.65; --In percent
		SpreadReductionP = 0.001; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"
		
		SlowDown = 12;
		
		RecoilReduction_X = 0.75;
		RecoilReduction_Y = 1;
		RecoilReduction_Z = 0.85;
		
		Offset = CFrame.new(-0.4385,0.358,0.15) * CFrame.Angles(math.rad(-0.4),math.rad(0),0);
	
		FireAnimWeight = 1;
		FireAnimSpeed = 1;
		
        EasingStyle =			Enum.EasingStyle.Quint;
        EasingDirection =		Enum.EasingDirection.Out;

		FOV_EasingStyle = 		Enum.EasingStyle.Quint;
		FOV_EasingDirection =	Enum.EasingDirection.Out;
		
		DepthOfField =  {
			Enabled =		true;
			FarIntensity =	0;
			FocusDistance =	0.15;
			InFocusRadius =	0.075;
			NearIntensity =	1;
		};
			
		ADS_ArmsOffset = CFrame.new(-0.85, 0.55, 0) * CFrame.Angles(math.rad(12),0,0);
		ADS_LArmOffset = CFrame.new(0, -0.4, 0);
	};
	
	LimitedAmmoEnabled = true;
	
	CameraRecoilingEnabled = true;
		Recoil = 17;
		AngleX_Min = 4; --	this is y basically idk
		AngleX_Max = 4; --	this is y basically idk
		AngleY_Min = -0.7; -- this is x idk
		AngleY_Max = 0.7; --	this is x idk
		AngleZ_Min = -1.5; --	z
		AngleZ_Max = 1.5; --	z
		Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
		RecoilSpeed = 8; 
		RecoilDamper = 0.9999;
		RecoilRedution = 0; --In percent.
	
	HitmarkersEnabled = true;
    CrossSize = 		9;
    CrossExpansion = 	100;
    CrossSpeed = 		30;
    CrossDamper	= 		0.8;

	TurnToMouse = true;
		TurnSpeed = 10;
	
	FlashSettings = {
		Enabled = 		true;
		Brightness = 	3;
		Color = 		Color3.fromRGB(255, 117, 89);
		Range = 		6.5;
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