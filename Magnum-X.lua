









local S = 
{
	Name 	= "Magnum";
		Version = 2.0;
		HandleName = "WeaponHandle";
		
	EquipTime 	= 0.8;
		EquipAnimSpeed = 0.85;
	
	MagSize		= 		6;
			StartFull = true;
			
	StoredAmmo 	= 		18;
	FireRate	= 		2;
	Range		= 		850;
	BulletsPerShot	= 	1;
	Spread		= 		17;
		CrouchSpreadReduction = 0.9;
		WalkSpreadIncrease = 1.2;
		
	BulletHoleSize = 0.385;
	
	Damage		= 51;
		HeadshotMultiplier = 2;
		LimbMultiplier = 0.75;
		DownedDiv = 3;
		FlinchTime = 0.15;
		DownedDmgMulti = 1.35;	
		
		--PassoverCap = 60;
		
	ArmorPenetration = 0.52;
		
	ReloadTime	= 3;
	ReloadAnimSpeed = 0.965;
		ReloadSlowDown = 7.5;
		ReloadAnimCont = true;

	ShotgunSettings = {
		ShotgunReload = 	false;
		ShellInTime = 		0;
			ShellInAnimSpeed =	0;
		FirePump = 			false;
		FShellIn = 			false;
			FShellInTime =		0;
	};
	
	ChargeUpEnabled = true;
	ChargeUpSettings = {
		ChargeTime = 0.1;
		ChargeDB = 0.01;
	};
	
	ShellType = "D";
	ShellOutSettings = {
		Do = false;
		Vec = Vector3.new(1,1.25,1);
		Vel = 50000;
		RotVel = 35;
	};
	
	MagSettings = 
	{
		DropMag = true;
		DropWait = 2.5;
		--DropForce = Vector3.new(0,0,0);
		};
		
	CrouchOffset = {
		Enabled = true;
		Offset = Vector3.new(-0.2,-0.15,0.35);
		Angle = Vector3.new(0, 0, 20);
	};
		
	FireModeSettings = {
		FireMode	= "Semi";
		DisplayMode = "Double-action";
		
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
			
	Dropoff		= 0.15;
		DropoffDistance = 2000;
		
	Knockback = 30;
	
	BulletSettings = {
		TracerEnabled = true; 
		ParticleEnabled = false;
		TracerOffset0 = Vector3.new(0.25, 0, 0); 
		TracerOffset1 = Vector3.new(-0.25, 0, 0);
		TracerTransparency = 0.1;
		TracerLifetime = 0.15;
		
		Velocity = 1700;
		Acceleration = Vector3.new(0,-129.2,0);
		WindOffset = Vector3.new(0, 0, 0); 
		Size = Vector3.new(0.2, 0.2, 0.2);
		Color = Color3.fromRGB(255, 117, 89);
		Transparency = 1;
		Material = Enum.Material.Neon;
       	Shape = Enum.PartType.Block;

        MeshEnabled = false;
        MeshID = 437259501;
      	TextureID = 437259505;
       	MeshScale = Vector3.new(0.002, 0.002, 0.002);

        LightEnabled = false;
        LightBrightness = 3;
		LightColor = Color3.fromRGB(255, 117, 89);
      	LightRange = 10;
		LightShadows = true;
			
		ShakeMulti = 3.5;
	};
	
	SlowDown = {
		Enabled = true;
		Amount = 1.25;
	};
	
	FireSlowDown = {
		Enabled = true;
		Amount = 5;
		Time = 0.35;
	};
	
	RunAnimSpeed = 1.35;
	RunOffset = Vector3.new(0.3,0,0.5);
		
	Inspecting = {
		Enabled = true;
		AnimSpeed = 1;
		TR = -0.3;
	};
		
	SprayLerp = {
		Enabled = true;

		AngleX = 1.2;
		AngleY = 0.5;
		AngleZ = 10;

		HPFM = 2;	

		EaseTime = 0.05;
	};
		
	AimSettings = {
		Enabled = true;
		
		AimSpeed = 0.4;
		CrossSpeed = 30;
		
		IdleAnimSpeed = 0;
		
		FieldOfViewS = 50;
		MouseSensitiveP = 0.5; --In percent
		SpreadReductionP = 0.001; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"
		
		SlowDown = 12;
		
		RecoilReduction_X = 0.75;
		RecoilReduction_Y = 1;
		RecoilReduction_Z = 0.85;
		
			Offset = CFrame.new(-0.58,0.130,0.5) * CFrame.Angles(math.rad(-0.17),math.rad(-0.03),0);
		
		FireAnimWeight = 0.7;
		
		EasingStyle =			Enum.EasingStyle.Quint;
		EasingDirection =		Enum.EasingDirection.Out;

		FOV_EasingStyle = 		Enum.EasingStyle.Quint;
		FOV_EasingDirection =	Enum.EasingDirection.Out;

		DepthOfField =  {
			Enabled =		true;
			FarIntensity =	0;
			FocusDistance =	2.5;
			InFocusRadius =	1.4;
			NearIntensity =	1;
		};	
			
		ADS_ArmsOffset = CFrame.new(-0.15, 0.5, 0.225);
	};
	
	LimitedAmmoEnabled = true;
	
	CameraRecoilingEnabled = true;
		Recoil = 55;
		AngleX_Min = 4; --	this is y basically idk
		AngleX_Max = 4; --	this is y basically idk
		AngleY_Min = -1.75; -- this is x idk
		AngleY_Max = 1.75; --	this is x idk
		AngleZ_Min = -3; --	z
		AngleZ_Max = 3; --	z
		Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
		RecoilSpeed = 6.5; 
		RecoilDamper = 0.9999;
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
		Brightness = 	5;
		Color = 		Color3.fromRGB(255, 244, 202);
		Range = 		7.5;
		Shadows = 		true;
		Time = 			0.05;
	};
	
	MuzzleFlashEmitCount = 5;
	
	Blood = {
		Enabled = true;
			A = { -- Main
				Amount = 		{2,4};
				Speed = 		50;
				Spread = 		{-25,25};
				Size = 			5; -- Pool Size
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