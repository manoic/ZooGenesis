










local S = 
{
	Name 	= "UTS-15";
	
	EquipTime 	= 0.8;
		EquipAnimSpeed = 0.7;
	
	MagSize		=		 15;
			StartFull =	true;
			
	StoredAmmo 	= 		45;
	FireRate	= 		7;
	Range		= 		500;
	BulletsPerShot	= 	7;
	
	Spread		= 		9;
		CrouchSpreadReduction = 0.85;
		WalkSpreadIncrease = 1.25;
	
	BulletHoleSize = 0.35;
	
	Damage		= 31;
		HeadshotMultiplier = 1.4;
		LimbMultiplier = 0.75;
		DownedDiv = 1;
		FlinchTime = 0.45;
		
		ArmorPenetration = 0.6;
		PassoverMulti = 5;
		ForcePassover = true;
		--NoPassover = true;
		DidDownMulti = 0;
		
	CanExecute = true;
		BulletTypeChange = {
			Enabled = true;
			M1 = "HSP";
			RB_Reduction = 2; -- divide damage by;
			M2 = "RB";
		};
		
		ReloadTime	= 1.25;
		ReloadAnimSpeed = 0.65;
		ReloadSlowDown = 5.5;
		ReloadFinishAnimSpeed_Start = 0.225;
		ShotgunSettings = {
			ShotgunReload =			true;
			ShellInTime =			0.65;

			ReloadStartTime = 0.35;
			ReloadFinishTime = 0.5;

			ShellInAnimSpeed =		0.666;
			FirePump =				true;
			FirePumpWait1 = 2.5;
			FirePumpWait2 = 3.75;

			FirePumpAnimSpeed = 1;

			FShellIn =				true;
			FShellInTime =			0.2;

		};
	
	ShellType = "SG";
	ShellOutSettings = {
		Do = true;
		Vec = Vector3.new(1,1,1);
		Vel = 1500;
		RotVel = 10;
	};

	MagSettings = 
	{
		DropMag = false;
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
	
	FireSlowDown = {
		Enabled = true;
		Amount = 5;
		Time = 0.35;
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
	DropoffDistance = 400;
		MinDropoff = 15;
	
	Knockback = 	50;
	
	SlowDown = {
		Enabled = true;
		Amount = 4;
	};

	BulletSettings = {
		TracerEnabled = true; 
		ParticleEnabled = false;
		TracerOffset0 = Vector3.new(0.15, 0, 0); 
		TracerOffset1 = Vector3.new(-0.15, 0, 0);
		TracerTransparency = 0.1;
		TracerLifetime = 0.1;
		
		Velocity = 2500;
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
        LightBrightness = 2.5;
       	LightColor = Color3.fromRGB(255, 200, 180);
      	LightRange = 10;
			LightShadows = true;
			
		ShakeMulti = 3;
	};
	
	AimSettings = {
		Enabled = true;
		
		AimSpeed = 0.5;
		CrossSpeed = 30;
		
		IdleAnimSpeed = 0;
		
		FieldOfViewS = 60;
		MouseSensitiveP = 0.65; --In percent
		SpreadReductionP = 0.9; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"
		
		SlowDown = 12;
		
		RecoilReduction_X = 0.75;
		RecoilReduction_Y = 1;
		RecoilReduction_Z = 0.85;
		
		Offset = CFrame.new(-0.66,0.14,0.6) * CFrame.Angles(math.rad(-0.1),math.rad(-0),math.rad(-1.25));
		
		FireAnimWeight = 0.55;
		
		EasingStyle =			Enum.EasingStyle.Quad;
		EasingDirection =		Enum.EasingDirection.Out;

		FOV_EasingStyle = 		Enum.EasingStyle.Quad;
		FOV_EasingDirection =	Enum.EasingDirection.Out;
	};
	LimitedAmmoEnabled = true;
	
	CameraRecoilingEnabled = true;
	Recoil = 90;
	AngleX_Min = 4; --	this is y basically idk
	AngleX_Max = 4; --	this is y basically idk
	AngleY_Min = -1.7; -- this is x idk
	AngleY_Max = 1.7; --	this is x idk
	AngleZ_Min = -1; --	z
	AngleZ_Max = 1; --	z
    Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
    RecoilSpeed = 10; 
    RecoilDamper = 0.999;
	RecoilRedution = 0; --In percent.
	
	HitmarkersEnabled = true;
	CrossSize = 		13;
	CrossExpansion = 	100;
	CrossSpeed = 		30;
	CrossDamper	= 		0.8;

	TurnToMouse = true;
		TurnSpeed = 10;

	FlashSettings = {
		Enabled = 		true;
		Brightness = 	6;
		Color = 		Color3.fromRGB(255, 244, 202);
		Range = 		7.25;
		Shadows = 		true;
		Time = 			0.1;
	};
	
	Customs = {
		LaserSight = true;
		LaserAccuracy = 0.7;

		["ScopeGlint"] = {
			PartName = "GLaser";
			Angle = 30;
			DistDiv = 5;
			MaxSize = 2;
			ReverseSize = false;
		};

		["ReticleSight"] = true;
		Infected_ExplodeHead = true;
	};

	
	MuzzleFlashEmitCount = 5;
	
	Blood = {
		Enabled = true;
			A = { -- Main
				Amount = 		{3,6};
				Speed = 		100;
				Spread = 		{-25,25};
				Size = 			2; -- Pool Size
				WidthScale =	2;
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