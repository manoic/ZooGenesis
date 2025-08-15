










local S = 
{
	Name 	= "TEC-9-X";
		Version = 2.0;
		HandleName = "WeaponHandle";
		
	EquipTime 	= 0.75;
	EquipAnimSpeed = 1;
	
	MagSize		= 		20;
			StartFull = true;
	
	StoredAmmo 	= 		59;
	FireRate	= 		2.5;
	Range		= 		650;
	BulletsPerShot	= 	1;
	Spread		= 		14;
		CrouchSpreadReduction = 0.9;
		WalkSpreadIncrease = 1.2;
	
	BulletHoleSize = 0.275;
	
	Damage		= 18;
		HeadshotMultiplier = 1.4;
		LimbMultiplier = 0.75;
		DownedDiv = 3;
		FlinchTime = 0.1;
		
	ArmorPenetration = 0.33;	
		
	ReloadTime	= 3;
		ReloadAnimSpeed = 0.9;
		ReloadSlowDown = 7.5;
		ReloadFPOffset = Vector3.new(0.4,-0.25,-0.2);

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
		Vec = Vector3.new(1,1.25,1);
		Vel = 95000;
		RotVel = 25;
		ShellSound = true;
	};
	
	MagSettings = 
	{
		DropMag = true;
		DropWait = 0.5;
		DropForce = Vector3.new(25,10,25);
	};
		
	CrouchOffset = {
		Enabled = true;
		Offset = Vector3.new(-0.2,-0.15,0.35);
		Angle = Vector3.new(0, 0, 20);
	};
		
	FireModeSettings = {
		FireMode	= "Semi";
		
			BurstAmount = 	3;
			BurstRate = 	19;	
		
		CanSwitch = true;
			SwitchTo = "Burst";
			SemiRate = 8;
	};

	SniperEnabled = false;
	SniperSettings = {
	};

	MinigunEnabled = false;
		DelayBeforeFiring = 0;
			
	Dropoff		= 0.1;
		DropoffDistance = 1250;
		
	Knockback = 15;
	
	SlowDown = {
		Enabled = true;
		Amount = 1;
	};
	
	FireSlowDown = {
		Enabled = true;
		Amount = 5;
		Time = 0.35;
	};
		
	RunOffset = Vector3.new(0.35,-0.5,-0.35);
	RunAnimSpeed = 1;

	Inspecting = {
		Enabled = true;
		AnimSpeed = 1;
		TR = -0.3;
	};
		Customs = {
			LaserSight = true;
			LaserAccuracy = 0.1;

			["ScopeGlint"] = {
				PartName = "GLaser";
				Angle = 15;
				DistDiv = 5;
				MaxSize = 5;
				ReverseSize = false;
			};


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
		Transparency = 0.3;
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
	};
		
	SprayLerp = {
		Enabled = true;

		AngleX = 1.2;
		AngleY = 0.5;
		AngleZ = 5;

		AngleY2 = -2;

		HPFM = 2;	

		EaseTime = 0.05;
	};
		
	AimSettings = {
		Enabled = true;
		
		AimSpeed = 0.3;
		CrossSpeed = 30;
		
		IdleAnimSpeed = 0;
		
		FieldOfViewS = 60;
		MouseSensitiveP = 0.65; --In percent
		SpreadReductionP = 0.001; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"
		
		SlowDown = 12;
		
		RecoilReduction_X = 0.75;
		RecoilReduction_Y = 1;
		RecoilReduction_Z = 0.85;
		
		Offset = CFrame.new(-0.4985,0.436,0) * CFrame.Angles(math.rad(-0.5),math.rad(-0),0);

		FireAnimWeight = 0.45;
		FireAnimSpeed = 1;
		SwitchAnimWeight = 0.3;
		
		EasingStyle =			Enum.EasingStyle.Quint;
		EasingDirection =		Enum.EasingDirection.Out;

		FOV_EasingStyle = 		Enum.EasingStyle.Quint;
		FOV_EasingDirection =	Enum.EasingDirection.Out;

		DepthOfField =  {
			Enabled =		true;
			FarIntensity =	0;
			FocusDistance =	2.7;
			InFocusRadius =	1.4;
			NearIntensity =	1;
		};
			
		ADS_ArmsOffset = CFrame.new(-0.15 - 0.5, 0.45, 0.125);
	};
		
	ArmsOffsetCF = {
		Enabled = true;
		Offset = CFrame.new(0.75,0,0);
		IgnoreHolster = true;
		IgnoreReload = true;
	};
		
	LimitedAmmoEnabled = true;
	
	CameraRecoilingEnabled = true;
		Recoil = 19;
		AngleX_Min = 4; --	this is y basically idk
		AngleX_Max = 4; --	this is y basically idk
		AngleY_Min = -1.5; -- this is x idk
		AngleY_Max = 1.5; --	this is x idk
		AngleZ_Min = -2; --	z
		AngleZ_Max = 2; --	z
		Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
		RecoilSpeed = 8.5; 
		RecoilDamper = 0.9999;
		RecoilRedution = 0; --In percent.
	
	
	HitmarkersEnabled = true;
    CrossSize = 		13.5;
    CrossExpansion = 	100;
    CrossSpeed = 		30;
    CrossDamper	= 		0.8;

	TurnToMouse = true;
		TurnSpeed = 10;
	
	FlashSettings = {
		Enabled = 		true;
		Brightness = 	3;
		Color = 		Color3.fromRGB(255, 117, 89);
		Range = 		6;
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