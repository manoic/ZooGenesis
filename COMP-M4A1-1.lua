
local S = 
{
	Name 	= "COMP-M4A1";
	
	EquipTime 	= 0.85;
	EquipAnimSpeed = 0.882;
	
	MagSize		= 		30;
			StartFull = true;
	
	StoredAmmo 	= 		280;
	FireRate	= 		8.5;
	Range		= 		650;
	BulletsPerShot	= 	1;
	Spread		= 		9;
		CrouchSpreadReduction = 0.85;
		WalkSpreadIncrease = 1.5;
	
	FireAnimWeight = 0.5;
	FireAnimSpeed = 0.75;
	
	BulletHoleSize = 0.325;
	
	Damage		= 24;
		HeadshotMultiplier = 1.5;
		LimbMultiplier = 0.75;
		DownedDiv = 6;
		FlinchTime = 0.2;
		
		ArmorPenetration = 0.8;
		
	CanExecute = true;
		BulletTypeChange = {
			Enabled = true;
			M1 = "HSP";
			RB_Reduction = 1.5; -- divide damage by;
			M2 = "RB";
		};
		
	ReloadTime	= 3.1;
		ReloadAnimSpeed = 0.9;
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
	};
	
	MagSettings = 
	{
		DropMag = true;
		DropWait = 0.1;
		DropForce = Vector3.new(0,-10,0);
	};
		
	FireModeSettings = {
		FireMode	= "Auto";
		
			BurstAmount = 	3;
			BurstRate = 	25;	
		
		CanSwitch = true;
			SwitchTo = "Semi";
			SemiRate = 9;
	};

	SniperEnabled = false;
	SniperSettings = {
	};

	MinigunEnabled = false;
		DelayBeforeFiring = 0;
			
	Dropoff		= 0.75;
	Knockback = 17;
	
	SlowDown = {
		Enabled = true;
		Amount = 3;
	};
	
	FireSlowDown = {
		Enabled = true;
		Amount = 5;
		Time = 0.35;
	};
	
	BulletSettings = {
		TracerEnabled = true; 
		ParticleEnabled = false;
		TracerOffset0 = Vector3.new(0.125, 0, 0); 
		TracerOffset1 = Vector3.new(-0.125, 0, 0);
		
		TracerTransparency = 0.65;
		TracerLifetime = 0.1;
		
		Velocity = 2000;
		Acceleration = Vector3.new(0,-25,0);
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

        LightEnabled = true;
        LightBrightness = 2;
       	LightColor = Color3.fromRGB(255, 200, 180);
      	LightRange = 10;
		LightShadows = true;
			
		ShakeMulti = 1.5;
	};
	
	AimSettings = {
		Enabled = true;
		
		AimSpeed = 0.325;
		CrossSpeed = 30;
		
		IdleAnimSpeed = 0;
		
		FieldOfViewS = 30;
		MouseSensitiveP = 0.65; --In percent
		SpreadReductionP = 0.001; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"
		
		SlowDown = 12;
		
		RecoilReduction_X = 0.75;
		RecoilReduction_Y = 1;
		RecoilReduction_Z = 0.85;
		
		Offset = CFrame.new(-0.5474,0.2505,0) * CFrame.Angles(math.rad(-1),math.rad(-0.3),math.rad(0));
		
		FireAnimWeight = 0.15;
		
		EasingStyle =			Enum.EasingStyle.Quint;
		EasingDirection =		Enum.EasingDirection.Out;

		FOV_EasingStyle = 		Enum.EasingStyle.Quint;
		FOV_EasingDirection =	Enum.EasingDirection.Out;
	};
	
	
	LimitedAmmoEnabled = true;
	
	CameraRecoilingEnabled = true;
	Recoil = 35;
	AngleX_Min = 4; --	this is y basically idk
	AngleX_Max = 4; --	this is y basically idk
	AngleY_Min = -1.5; -- this is x idk
	AngleY_Max = 1.5; --	this is x idk
	AngleZ_Min = -1; --	z
	AngleZ_Max = 1; --	z
	Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
	RecoilSpeed = 19; 
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
	
	MuzzleFlashEmitCount = 5;
	
	Customs = {
		LaserSight = true;
		LaserAccuracy = 0.5;
			
		["ScopeGlint"] = {
			PartName = "GLaser";
			Angle = 20;
			DistDiv = 2.8;
			MaxSize = 75;
			ReverseSize = false;
		}
	};
		
	
	Blood = {
		Enabled = true;
			A = { -- Main
				Amount = 		{1,3};
				Speed = 		100;
				Spread = 		{-25,25};
				Size = 			2.25; -- Pool Size
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