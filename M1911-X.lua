









local S = 
{
	Name 	= "M1911-X";
		Version = 2.0;
		HandleName = "WeaponHandle";
	
	EquipTime 	= 0.75;
		EquipAnimSpeed = 0.95;
	
	MagSize		= 		11;
			StartFull = true;
			
	StoredAmmo 	= 		28;
	FireRate	= 		4.5;
	Range		= 		700;
	BulletsPerShot	= 	1;
	Spread		= 		13;
		CrouchSpreadReduction = 0.9;
		WalkSpreadIncrease = 1.2;
	
	FireAnimWeight = 1;
	FireAnimSpeed = 1;
	
	BulletHoleSize = 0.3;
	
	Damage		= 27;
		HeadshotMultiplier = 1.45;
		LimbMultiplier = 0.75;
		DownedDiv = 3;
		FlinchTime = 0.15;
		
		PassoverMulti = 0.9;
		
		ArmorPenetration = 0.42;
		
	ReloadTime	= 2.52;
		ReloadAnimSpeed = 1.1;
		ReloadSlowDown = 7.5;
		ReloadAnimCont = true;
		
	ShotgunSettings = {
		ShotgunReload = 	false;
		ShellInTime = 		0;
			ShellInAnimSpeed =	0;
		FirePump = 			false;
		FShellIn = 			false;
			FShellInTime =		0;
		ShellSound = true;
	};
	
	ShellType = "P";
	ShellOutSettings = {
		Do = true;
		Vec = Vector3.new(1,1.5,1);
		Vel = 90000;
		RotVel = 50;
		ShellSound = true;
	};
	
	MagSettings = 
	{
		DropMag = true;
		DropWait = 0.25;
		DropForce = Vector3.new(0,-10,0);
	};
		
	CrouchOffset = {
		Enabled = true;
		Offset = Vector3.new(-0.2,-0.15,0.35);
		Angle = Vector3.new(0, 0, 20);
	};
		
	RunAnimSpeed = 1.35;
	RunOffset = Vector3.new(0.3,0,0);	
		
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
			
	Dropoff		= 0.1;
		DropoffDistance = 1750;
		
	Knockback = 30;

	BulletSettings = {
		TracerEnabled = true; 
		ParticleEnabled = false;
		TracerOffset0 = Vector3.new(-0.075, -0.025, -0.205); 
		TracerOffset1 = Vector3.new(0.075, 0.025, 0.025);

		TracerTransparency = 0.1;
		TracerLifetime = 0.125;

		TracerMaxLength = 50;
		TracerSizeMulti = 1.3;

		Velocity = 1500;
		Acceleration = Vector3.new(0,-129.2,0);
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
			
		ShakeMulti = 1.5;
	};
	
	SlowDown = {
		Enabled = false;
		Amount = 0;
	};
	
	FireSlowDown = {
		Enabled = true;
		Amount = 5;
		Time = 0.35;
	};

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
	SprayLerp = {
		Enabled = true;

		AngleX = 1.2 * 2;
		AngleY = 0.5;
		AngleZ = 15;

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
		
		Offset = CFrame.new(-0.5605,0.458,0.2) * CFrame.Angles(math.rad(-0.1),math.rad(0),0);

		FireAnimWeight = 0.9;
		FireAnimSpeed = 1.4;
			
		EasingStyle =			Enum.EasingStyle.Quint;
		EasingDirection =		Enum.EasingDirection.Out;

		FOV_EasingStyle = 		Enum.EasingStyle.Quint;
		FOV_EasingDirection =	Enum.EasingDirection.Out;
			
		DepthOfField =  {
			Enabled =		true;
			FarIntensity =	0;
			FocusDistance =	2.6;
			InFocusRadius =	1.4;
			NearIntensity =	1;
		};
			
		ADS_ArmsOffset = CFrame.new(-0.15, 0.55, 0.2);
	};
	
	LimitedAmmoEnabled = true;
	
	CameraRecoilingEnabled = true;
		Recoil = 26;
		AngleX_Min = 4; --	this is y basically idk
		AngleX_Max = 4; --	this is y basically idk
		AngleY_Min = -1.25; -- this is x idk
		AngleY_Max = 1.25; --	this is x idk
		AngleZ_Min = -2; --	z
		AngleZ_Max = 2; --	z
		Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
		RecoilSpeed = 8; 
		RecoilDamper = 0.9999;
		RecoilRedution = 0; --In percent.
	
	HitmarkersEnabled = true;
    CrossSize = 		10;
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
		Time = 			0.05;
	};
	
	MuzzleFlashEmitCount = 3;
	
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
