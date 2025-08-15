local S = 
{
	Name 	= "AR2";
	
	EquipTime 	= 1;
		EquipAnimSpeed = 100;
	
	MagSize		= 		30;
			StartFull = true;
	
	StoredAmmo 	= 		300;
	FireRate	= 		10;
	Range		= 		650;
	BulletsPerShot	= 	1;
	Spread		= 		11;
		CrouchSpreadReduction = 0.85;
		WalkSpreadIncrease = 1.25;
	
	BulletHoleSize = 0.4;
	
	Damage		= 40;
		HeadshotMultiplier = 1.5;
		LimbMultiplier = 0.75;
		DownedDiv = 3;
		FlinchTime = 0.2;
		
		ArmorPenetration = 0.95;
		
		
	CanExecute = true;
	BulletTypeChange = {
		Enabled = true;
		M1 = "HSP";
		RB_Reduction = 1.5; -- divide damage by;
		M2 = "RB";
	};
	ReloadTime	= 2.5;
		ReloadAnimSpeed = 1;
		ReloadSlowDown = 7.5;
		ReloadAnimWeight = 0.35;

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
		DropMag = false;
		DropWait = 0.2;
		DropForce = Vector3.new(0,-10,0);
	};
		
	FireModeSettings = {
		FireMode	= "Auto";
		
			BurstAmount = 	3;
			BurstRate = 	25;	
		
		CanSwitch = true;
			SwitchTo = "Semi";
			SemiRate = 10;
	};

	SniperEnabled = false;
	SniperSettings = {
	};

	MinigunEnabled = false;
		DelayBeforeFiring = 0;
			
	Dropoff		= 0.8;
	Knockback = 30;
	
	SlowDown = {
		Enabled = true;
		Amount = 4;
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
		
		Velocity = 3000;
		WindOffset = Vector3.new(0, 0, 0); 
		Size = Vector3.new(0.2, 0.2, 0.2);
		Acceleration = Vector3.new(0,-10,0);
		Color = Color3.fromRGB(255, 181, 97);
		Transparency = 1;
		Material = Enum.Material.Neon;
       	Shape = Enum.PartType.Block;

        MeshEnabled = false;
        MeshID = 437259501;
      	TextureID = 437259505;
       	MeshScale = Vector3.new(0.002, 0.002, 0.002);

        LightEnabled = true;
        LightBrightness = 2;
       	LightColor = Color3.fromRGB(255, 200, 180);
      	LightRange = 10;
		LightShadows = true;
			
		ShakeMulti = 3;
	};
	
	AimSettings = {
		Enabled = true;
		
		AimSpeed = 0.45;
		CrossSpeed = 30;
		
		ShowCursor = true;
		
		CrossScale = 0.85;
		
		IdleAnimSpeed = 0;
		
		FieldOfViewS = 35;
		MouseSensitiveP = 0.5; --In percent
		SpreadReductionP = 0.001; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"
		
		SlowDown = 12;
		
		RecoilReduction_X = 0.75;
		RecoilReduction_Y = 1;
		RecoilReduction_Z = 0.85;
		
		Offset =  CFrame.new(-0.92,0.4,0.75) * CFrame.Angles(math.rad(5),math.rad(-3.5),math.rad(-20));

		FireAnimWeight = 0.6;
		
		EasingStyle =			Enum.EasingStyle.Quint;
		EasingDirection =		Enum.EasingDirection.Out;

		FOV_EasingStyle = 		Enum.EasingStyle.Quint;
		FOV_EasingDirection =	Enum.EasingDirection.Out;
	};
	
	LimitedAmmoEnabled = true;
	
	CameraRecoilingEnabled = true;
	Recoil = 20;
	AngleX_Min = 4; --	this is y basically idk
	AngleX_Max = 4; --	this is y basically idk
	AngleY_Min = -0.5; -- this is x idk
	AngleY_Max = 0.5; --	this is x idk
	AngleZ_Min = -0.5; --	z
	AngleZ_Max = 0.5; --	z
    Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
    RecoilSpeed = 10; 
    RecoilDamper = 0.65;
	RecoilRedution = 0; --In pe	rcent.
	
	HitmarkersEnabled = true;
    CrossSize = 		11.5;
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
	
	MuzzleFlashEmitCount = 5;
	
	Blood = {
		Enabled = true;
			A = { -- Main
				Amount = 		{1,3};
				Speed = 		100;
				Spread = 		{-25,25};
				Size = 			2.75; -- Pool Size
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