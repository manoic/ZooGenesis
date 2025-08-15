local S = 
{
	Name 	= "MAXIM";
	
	EquipTime 	= 0.7;
		EquipAnimSpeed = 1;
	
	MagSize		= 		20;
			StartFull = true;
			
	StoredAmmo 	= 		80;
	FireRate	= 		6;
	Range		= 		500;
	BulletsPerShot	= 	1;
	Spread		= 		11;
		CrouchSpreadReduction = 0.9;
	WalkSpreadIncrease = 1.2;
		
	FireAnimWeight = 0.75;
	FireAnimSpeed = 1;
		
	BulletHoleSize = 0.35;
	
	Damage		= 56;
		HeadshotMultiplier = 1.5;
		LimbMultiplier = 0.75;
		DownedDiv = 3;
		FlinchTime = 0.2;
		CanExecute = true;
		BulletTypeChange = {
			Enabled = true;
			M1 = "HSP";
			RB_Reduction = 1.5; -- divide damage by;
			M2 = "RB";
		};
		
		ArmorPenetration = 0.8;
		
	ReloadTime	= 3;
		ReloadAnimSpeed = 0.75;
		ReloadSlowDown = 3;

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
		DropWait = 0.5;
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
		Enabled = false;
		Amount = 1.5;
	};
	
	BulletSettings = {
		TracerEnabled = true; 
		ParticleEnabled = false;
		TracerOffset0 = Vector3.new(0.25, 0, 0); 
		TracerOffset1 = Vector3.new(-0.25, 0, 0);
		TracerTransparency = 0.9;
		TracerLifetime = 0.15;
		
		Velocity = 1500;
		Acceleration = Vector3.new(0,-129.2,0);
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

        LightEnabled = false;
        LightBrightness = 3;
       	LightColor = Color3.fromRGB(255, 200, 180);
      	LightRange = 10;
		LightShadows = true;
			
		ShakeMulti = 2;
	};
	
	AimSettings = {
		Enabled = true;
		
		AimSpeed = 0.15;
		CrossSpeed = 30;
		
		IdleAnimSpeed = 0;
		
		FieldOfViewS = 50;
		MouseSensitiveP = 0.65; --In percent
		SpreadReductionP = 0.001; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"
		
		SlowDown = 5;
		
		RecoilReduction_X = 0.75;
		RecoilReduction_Y = 1;
		RecoilReduction_Z = 0.85;
		
		Offset = CFrame.new(-0.685,0.3825,0.2) * CFrame.Angles(math.rad(0.555),math.rad(1.1),0);
		
		FireAnimWeight = 0.45;
		
		EasingStyle =			Enum.EasingStyle.Quint;
		EasingDirection =		Enum.EasingDirection.Out;

		FOV_EasingStyle = 		Enum.EasingStyle.Quint;
		FOV_EasingDirection =	Enum.EasingDirection.Out;
	};
	
	LimitedAmmoEnabled = true;
	
	CameraRecoilingEnabled = true;
	Recoil = 40;
	AngleX_Min = 4; --	this is y basically idk
	AngleX_Max = 4; --	this is y basically idk
	AngleY_Min = -1.25; -- this is x idk
	AngleY_Max = 1.25; --	this is x idk
	AngleZ_Min = -1; --	z
	AngleZ_Max = 1; --	z
	Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
	RecoilSpeed = 17; 
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
		Enabled = 		false;
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