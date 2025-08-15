










local S = 
{
	Name 	= "RPG-7";
		Type	= "Gun";
		Version = 2.0;
		HandleName = "Handle";
	
	EquipTime 	= 1;
		EquipAnimSpeed = 0.6;
	
	MagSize		= 		1;
			StartFull = true;
		
	StoredAmmo 	= 		2;
	FireRate	= 		1;
	Range		= 		1000;
	BulletsPerShot	= 	1;
	Spread		= 		12;
		CrouchSpreadReduction = 0.9;
		WalkSpreadIncrease = 1.2;
	
	BulletHoleSize = 0.3;
	
	Damage		= 185;
		HeadshotMultiplier = 1.4;
		DownedDiv = 4;
		FlinchTime = 0.35;
		
	ReloadTime	= 6;
	ReloadAnimSpeed = 0.61666666666;
		ReloadSlowDown = 7.5;
		
	ShotgunSettings = {
		ShotgunReload = 	false;
		ShellInTime = 		0;
			ShellInAnimSpeed =	0;
		FirePump = 			false;
		FShellIn = 			false;
			FShellInTime =		0;
	};
		
	RunOffset = Vector3.new(0,-0.35,0);
	RunAnimSpeed = 1;
	
	ShellType = "P";
	ShellOutSettings = {
		Do = false;
		Vec = Vector3.new(0,0,0);
		Vel = 0;
		RotVel = 0;
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
	
	SniperEnabled = false;
	SniperSettings = {
	};

	MinigunEnabled = false;
		DelayBeforeFiring = 0;
		MinigunFireDB = 0.75;
	GrenadeLauncherEnabled = false;
		GrenadeSpeed = 100;
		GrenadeRotVel =	5;
	RocketLauncherEnabled = true;
		RocketSpeed = 200;
		RocketUpForce = 		240;
		RocketRotVel =			3;
		RotStartTime = 0.25;
		RocketMaxRange =2000;
		RocketMaxTime = 60;
		ExplosionName = "RPG_Explosion_Long";
		
		DistExplosionType = {
			Enabled = true;
			UnderDist = 90;
			ExplosionName = "RPG_Explosion_Short";
			
			AccelerationM = true;
		};
		
		RocketName = "RPG_Rocket";
			
	Dropoff		= 1;
	Knockback = 1000;
	
	SlowDown = {
		Enabled = true;
		Amount = 4;
	};
	
	FireBH = 0.5;
		
	Inspecting = {
		Enabled = true;
		AnimSpeed = 1;
		TR = -0.3;
	};
		
	CrouchOffset = {
		Enabled = true;
		Offset = Vector3.new(0.15, -0.25, 0);
		Angle = Vector3.new(0, 0, 25);
	};
		
	AimSettings = {
		Enabled = true;
		
		AimSpeed = 0.6;
		CrossSpeed = 30;
		
		IdleAnimSpeed = 0;
		
		FieldOfViewS = 35;
		MouseSensitiveP = 0.35; --In percent
		SpreadReductionP = 0.001; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"
		
		SlowDown = 12;
		
		RecoilReduction_X = 0.75;
		RecoilReduction_Y = 1;
		RecoilReduction_Z = 0.85;
		
		Offset = CFrame.new(-0.65,0.32,0.4) * CFrame.Angles(math.rad(-0.5),math.rad(-0.15),0);
		
		FireAnimWeight = 1;
		
		EasingStyle =			Enum.EasingStyle.Quint;
		EasingDirection =		Enum.EasingDirection.Out;

		FOV_EasingStyle = 		Enum.EasingStyle.Quint;
		FOV_EasingDirection =	Enum.EasingDirection.Out;
		
		ForceADS = false;
			
		DepthOfField =  {
			Enabled =		true;
			FarIntensity =	0;
			FocusDistance =	3.6;
			InFocusRadius = 2;
			NearIntensity =	1;
		};
			
		ADS_ArmsOffset = CFrame.new(-0.5, 0.3, 0.25);
	};
	
	LimitedAmmoEnabled = true;
	
	CameraRecoilingEnabled = true;
	Recoil = 80;
	AngleX_Min = 4; --	this is y basically idk
	AngleX_Max = 4; --	this is y basically idk
	AngleY_Min = -2; -- this is x idk
	AngleY_Max = 2; --	this is x idk
	AngleZ_Min = -6; --	z
	AngleZ_Max = 6; --	z
    Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
    RecoilSpeed = 15; 
    RecoilDamper = 0.999;
	RecoilRedution = 0; --In percent.
	
	HitmarkersEnabled = true;
    CrossSize = 		12;
    CrossExpansion = 	100;
    CrossSpeed = 		30;
    CrossDamper	= 		0.8;

	TurnToMouse = true;
		TurnSpeed = 10;
		
	TrailSettings =
	{
		Color =					Color3.fromRGB(255, 249, 183);
		LightEmission = 		1;
		LightInfluence = 		1;
		Transparency = 			0.1;
		FadeSpeed =				0.65;
		Width =					0.165;
	};
	
	FlashSettings = {
		Enabled = 		true;
		Brightness = 	5;
		Color = 		Color3.fromRGB(255, 244, 202);
		Range = 		6;
		Shadows = 		true;
		Time = 			0.05;
	};
	
	MuzzleFlashEmitCount = 17;
	
	Blood = {
		Enabled = true;
			A = { -- Main
				Amount = 		{1,1};
				Speed = 		50;
				Spread = 		{-15,15};
				Size = 			1; -- Pool Size
				WidthScale =	1;
				UpVector = 		Vector3.new(0,0,0);
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