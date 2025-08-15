local S = 
{
	Name 	= "FNP-45-R";
	
	EquipTime 	= 0.55;
		EquipAnimSpeed = 1.25;
	
	MagSize		= 		20;
			StartFull = true;
			
	StoredAmmo 	= 		60;
	FireRate	= 		10;
	Range		= 		650;
	BulletsPerShot	= 	1;
	Spread		= 		8;
		CrouchSpreadReduction = 0.9;
		WalkSpreadIncrease = 1.2;
		
	BulletHoleSize = 0.225;
	
	Damage		= 38;
		HeadshotMultiplier = 1.6;
		LimbMultiplier = 0.75;
		DownedDiv = 1;
	
	FlinchTime = 0.15;
	CanExecute = true;
	BulletTypeChange = {
		Enabled = true;
		M1 = "HSP";
		RB_Reduction = 2; -- divide damage by;
		M2 = "RB";
	};
	
	FireAnimWeight = 0.7;
	FireAnimSpeed = 1.2;
	
	ArmorPenetration = 0.6;
		
	ReloadTime	= 2.25;
		ReloadAnimSpeed = 1.05;
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
		Do = true;
		Vec = Vector3.new(1,1.5,1);
		Vel = 80000;
		RotVel = 50;
	};
	
	MagSettings = 
	{
		DropMag = true;
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
	
	MinigunEnabled = false;
		DelayBeforeFiring = 0;
			
	Dropoff		= 0.4;
	Knockback = 10;
	
	SlowDown = {
		Enabled = false;
		Amount = 0;
	};
	
	FireSlowDown = {
		Enabled = true;
		Amount = 5;
		Time = 0.35;
	};
	
	
	BulletSettings = {
		TracerEnabled = true; 
		ParticleEnabled = false;
		TracerOffset0 = Vector3.new(0.1, 0, 0); 
		TracerOffset1 = Vector3.new(-0.1, 0, 0);
		TracerTransparency = 0.9;
		TracerLifetime = 0.1;
		
		Velocity = 2000;
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
	};
	
	Customs = {
		["ReticleSight"] = true;
	};
	
	AimSettings = {
		Enabled = true;
		
		AimSpeed = 0.25;
		CrossSpeed = 30;
		
		IdleAnimSpeed = 0;
		
		FieldOfViewS = 60;
		MouseSensitiveP = 0.65; --In percent
		SpreadReductionP = 0.001; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"
		
		SlowDown = 12;
		
		RecoilReduction_X = 0.75;
		RecoilReduction_Y = 1;
		RecoilReduction_Z = 0.85;
		
		Offset = CFrame.new(-0.7,0.45,1) * CFrame.Angles(math.rad(-0.2),math.rad(1.15),0);
		
		FireAnimWeight = 0.3;
		
		EasingStyle =			Enum.EasingStyle.Quint;
		EasingDirection =		Enum.EasingDirection.Out;

		FOV_EasingStyle = 		Enum.EasingStyle.Quint;
		FOV_EasingDirection =	Enum.EasingDirection.Out;
	};
	
	LimitedAmmoEnabled = true;
	
	CameraRecoilingEnabled = true;
	Recoil = 21;
	AngleX_Min = 4; --	this is y basically idk
	AngleX_Max = 4; --	this is y basically idk
	AngleY_Min = -1.25; -- this is x idk
	AngleY_Max = 1.25; --	this is x idk
	AngleZ_Min = -0.1; --	z
	AngleZ_Max = 0.1; --	z
    Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
    RecoilSpeed = 15; 
    RecoilDamper = 0.999;
	RecoilRedution = 0; --In percent.
	
	HitmarkersEnabled = true;
    CrossSize = 		8;
    CrossExpansion = 	100;
    CrossSpeed = 		30;
    CrossDamper	= 		0.8;

	TurnToMouse = true;
		TurnSpeed = 10;
		
	TrailSettings =
	{
		Color =					Color3.fromRGB(85, 255, 127);
		LightEmission = 		1;
		LightInfluence = 		1;
		Transparency = 			0.75;
		FadeSpeed =				0.4;
		Width =					0.1;
	};
	
	FlashSettings = {
		Enabled = 		true;
		Brightness = 	0.175;
		Color = 		Color3.new(1,1,1);
		Range = 		8;
		Shadows = 		true;
		Time = 			0.075;
	};
		
	MuzzleFlashEmitCount = 4;
	
	Blood = {
		Enabled = true;
			A = { -- Main
				Amount = 		{1,3};
				Speed = 		100;
				Spread = 		{-15,15};
				Size = 			1.25; -- Pool Size
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