










local S = 
{
	Name 	= "G36K";
		Version = 2.0;
		HandleName = "WeaponHandle";
		
	EquipTime 	= 0.85;
		EquipAnimSpeed = 0.9;
	
	MagSize		= 		36;
			StartFull = true;
	
	StoredAmmo 	= 		108;
	FireRate	= 		6.65;
	Range		= 		900;
	BulletsPerShot	= 	1;
	Spread		= 		6;
		CrouchSpreadReduction = 0.9;
		WalkSpreadIncrease = 1.2;
	
	FireAnimWeight = 1;
	FireAnimSpeed = 1;
		FallenDmgMulti = 0.05;
	BulletHoleSize = 0.35;
	
	Damage		= 27;
		HeadshotMultiplier = 1.47;
		LimbMultiplier = 0.75;
		DownedDiv = 3;
		FlinchTime = 0.15;
	DownedDmgMulti = 1.2;
	ArmorPenetration = 0.66;
		
	ReloadTime	= 3.25;
		ReloadAnimSpeed = 0.75;
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
		Vec = Vector3.new(1,1.25,1);
		Vel = 100000;
		RotVel = 25;
			ShellSound = true;
			
	};
	
	MagSettings = 
	{
		DropMag = true;
		DropWait = 0.7;
		DropForce = Vector3.new(0,-10,0);
	};
		
	CrouchOffset = {
		Enabled = true;
		Offset = Vector3.new(-0.2,-0.2,0.25);
		Angle = Vector3.new(0, 0, 20);
	};
		
	FireModeSettings = {
		FireMode	= "Auto";
		
			BurstAmount = 	3;
			BurstRate = 	14.5;	
		
		CanSwitch = true;
			SwitchTo = "Semi";
	};

	SniperEnabled = false;
	SniperSettings = {
	};

	MinigunEnabled = false;
		DelayBeforeFiring = 0;
			
	Dropoff		= 0.1;
		DropoffDistance = 1500;
		
	Knockback = 21;
	
	SlowDown = {
		Enabled = true;
		Amount = 2;
	};
	
	FireSlowDown = {
		Enabled = true;
		Amount = 5;
		Time = 0.35;
	};
		
	RunAnimSpeed = 1.35;
	RunOffset = Vector3.new(0,-0.15,0.25);
		
	Inspecting = {
		Enabled = true;
		AnimSpeed = 1;
		TR = -0.3;
	};	
		
	BulletSettings = {
		TracerEnabled = true; 
		ParticleEnabled = false;
		TracerOffset0 = Vector3.new(0.15, 0, 0); 
		TracerOffset1 = Vector3.new(-0.15, 0, 0);
		
		TracerTransparency = 0.1;
		TracerLifetime = 0.125;
		
		Velocity = 2000;
		Acceleration = Vector3.new(0,-100,0);
		Size = Vector3.new(0.2, 0.2, 4);
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

		ShakeMulti = 1.5;
	};
		
	SprayLerp = {
		Enabled = true;

		AngleX = 0.5;
		AngleY = 0.5;
		AngleZ = 2.5;

		AngleY2 = -2.15;

		HPFM = 2;	

		EaseTime = 0.05;
	};
		
	AimSettings = {
		Enabled = true;
		
		AimSpeed = 0.35;
		CrossSpeed = 30;
		
		IdleAnimSpeed = 0;
		
		FieldOfViewS = 55;
		MouseSensitiveP = 0.65; --In percent
		SpreadReductionP = 0.001; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"
		
		SlowDown = 12;
		
		RecoilReduction_X = 0.75;
		RecoilReduction_Y = 1;
		RecoilReduction_Z = 0.85;
		
		Offset = CFrame.new(-0.5085,0.2511,0.45) * CFrame.Angles(math.rad(1),math.rad(0),0);
		
		FireAnimWeight = 0.65;
		
		EasingStyle =			Enum.EasingStyle.Quint;
		EasingDirection =		Enum.EasingDirection.Out;

		FOV_EasingStyle = 		Enum.EasingStyle.Quint;
		FOV_EasingDirection =	Enum.EasingDirection.Out;
		
		DepthOfField =  {
			Enabled =		true;
			FarIntensity =	0;
			FocusDistance =	1.5;
			InFocusRadius =	0.7;
			NearIntensity =	0.21;
		};
			
		ADS_ArmsOffset = CFrame.new(-0.55, 0.35, 0.1) * CFrame.Angles(math.rad(12),0,0);
		ADS_LArmOffset = CFrame.new(0, -0.4, 0);
	};
		
	ArmsOffsetCF = {
		Enabled = true;
		Offset = CFrame.new(0,0.15,0.35);
		IgnoreHolster = false;
		IgnoreReload = false;
	};	
		
	LimitedAmmoEnabled = true;
	
	CameraRecoilingEnabled = true;
		Recoil = 19;
		AngleX_Min = 4; --	this is y basically idk
		AngleX_Max = 4; --	this is y basically idk
		AngleY_Min = -0.65; -- this is x idk
		AngleY_Max = 0.65; --	this is x idk
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
	
	MuzzleFlashEmitCount = 3;
	
	Blood = {
		Enabled = true;
			A = { -- Main
				Amount = 		{2,4};
				Speed = 		50;
				Spread = 		{-25,25};
				Size = 			4; -- Pool Size
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