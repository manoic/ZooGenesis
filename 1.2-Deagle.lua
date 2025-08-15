local S = 
{
	Name 	= "Deagle";
	
	EquipTime 	= 0.7;
		EquipAnimSpeed = 1;
	
	MagSize		= 		7;
			StartFull = true;
			
	StoredAmmo 	= 		21;
	FireRate	= 		2.5;
	Range		= 		850;
	BulletsPerShot	= 	1;
	Spread		= 		15;
		CrouchSpreadReduction = 0.9;
	WalkSpreadIncrease = 1.2;
		
	FireAnimWeight = 0.75;
	FireAnimSpeed = 0.75;
		
	BulletHoleSize = 0.35;
	
	Damage		= 37;
		HeadshotMultiplier = 1.4;
		LimbMultiplier = 0.75;
		DownedDiv = 3;
		FlinchTime = 0.25;
		
		ArmorPenetration = 0.9;
		
	ReloadTime	= 3;
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
	
	ShellType = "D";
	ShellOutSettings = {
		Do = true;
		Vec = Vector3.new(1,1.1,1);
		Vel = 55000;
		RotVel = 35;
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
			
	Dropoff		= 0.5;
	Knockback = 35;
	
	SlowDown = {
		Enabled = true;
		Amount = 2.5;
	};
	
	BulletSettings = {
		TracerEnabled = true; 
		ParticleEnabled = false;
		TracerOffset0 = Vector3.new(0.25, 0, 0); 
		TracerOffset1 = Vector3.new(-0.25, 0, 0);
		TracerTransparency = 0.1;
		TracerLifetime = 0.15;
		
		Velocity = 1800;
		Acceleration = Vector3.new(0,-100,0);
		WindOffset = Vector3.new(0, 0, 0); 
		Size = Vector3.new(0.2, 0.2, 0.2);
		Color = Color3.fromRGB(255, 181, 97);
		Transparency = 1;
		Material = Enum.Material.Neon;
       	Shape = Enum.PartType.Block;

        MeshEnabled = false;
        MeshID = 437259501;
      	TextureID = 437259505;
       	MeshScale = Vector3.new(0.002, 0.002, 0.002);

        LightEnabled = true;
        LightBrightness = 3;
       	LightColor = Color3.fromRGB(255, 200, 180);
      	LightRange = 10;
        LightShadows = true;
	};
	
	AimSettings = {
		Enabled = true;
		
		AimSpeed = 0.325;
		CrossSpeed = 30;
		
		IdleAnimSpeed = 0;
		
		FieldOfViewS = 60;
		MouseSensitiveP = 0.65; --In percent
		SpreadReductionP = 0.15; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"
		
		SlowDown = 12;
		
		RecoilReduction_X = 0.75;
		RecoilReduction_Y = 1;
		RecoilReduction_Z = 0.85;
		
		Offset =  CFrame.new(-0.711,0.465,1.1) * CFrame.Angles(math.rad(.15),math.rad(1.1),0);
		
		FireAnimWeight = 0.45;
		
		EasingStyle =			Enum.EasingStyle.Quint;
		EasingDirection =		Enum.EasingDirection.Out;

		FOV_EasingStyle = 		Enum.EasingStyle.Quint;
		FOV_EasingDirection =	Enum.EasingDirection.Out;
	};
	
	LimitedAmmoEnabled = true;
	
	CameraRecoilingEnabled = true;
	Recoil = 55;
	AngleX_Min = 4; --	this is y basically idk
	AngleX_Max = 4; --	this is y basically idk
	AngleY_Min = -1.75; -- this is x idk
	AngleY_Max = 1.75; --	this is x idk
	AngleZ_Min = -1; --	z
	AngleZ_Max = 1; --	z
	Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
	RecoilSpeed = 9; 
	RecoilDamper = 0.9999;
	RecoilRedution = 0; --In percent.
	
	HitmarkersEnabled = true;
    CrossSize = 		11;
    CrossExpansion = 	100;
    CrossSpeed = 		30;
    CrossDamper	= 		0.8;

	TurnToMouse = true;
		TurnSpeed = 10;
	
	FlashSettings = {
		Enabled = 		true;
		Brightness = 	5;
		Color = 		Color3.fromRGB(255, 244, 202);
		Range = 		7.5;
		Shadows = 		true;
		Time = 			0.05;
	};
	
	MuzzleFlashEmitCount = 6;
	
	Blood = {
		Enabled = true;
			A = { -- Main
				Amount = 		{1,3};
				Speed = 		100;
				Spread = 		{-25,25};
				Size = 			2.5; -- Pool Size
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