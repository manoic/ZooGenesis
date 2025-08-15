local S = 
{
	Name 	= "AUTO-PANZER";
	Type	= "Gun";
	
	EquipTime 	= 1;
		EquipAnimSpeed = 1;
	
	MagSize		= 		1000;
			StartFull = true;
		
	StoredAmmo 	= 		10000000000;
	FireRate	= 		50;
	Range		= 		150;
	BulletsPerShot	= 	1;
	Spread		= 		20;
		CrouchSpreadReduction = 0.75;
		WalkSpreadIncrease = 1.25;
	
	BulletHoleSize = 0.3;
	
	Damage		= 11.5;
		HeadshotMultiplier = 1.5;
		DownedDiv = 4;
		FlinchTime = 0.35;
		
	ReloadTime	= 4;
		ReloadAnimSpeed = 1;
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
		FireMode	= "Auto";
		
			BurstAmount = 	3;
			BurstRate = 	25;	
		
		CanSwitch = true;
			SwitchTo = "Semi";
			SemiRate = 3000;
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
		RocketSpeed = 300;
		RocketUpForce = 		240;
		RocketRotVel =			3;
		RotStartTime = 0.25;
		RocketMaxRange = 3000;
		RocketMaxTime = 60;
		ExplosionName = "Panzer_Explosion_Long";

		DistExplosionType = {
			Enabled = true;
			UnderDist = 90;
			ExplosionName = "Panzer_Explosion_Short";

			AccelerationM = true;
		};

		RocketName = "Panzer_Rocket";
			
	Dropoff		= 1;
	Knockback = 1000;
	
	SlowDown = {
		Enabled = true;
		Amount = 8.5;
	};
	
	AimSettings = {
		Enabled = true;
		
		AimSpeed = 0.65;
		CrossSpeed = 30;
		
		IdleAnimSpeed = 0;
		
		FieldOfViewS = 10;
		MouseSensitiveP = 0.1; --In percent
		SpreadReductionP = 0.001; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"
		
		SlowDown = 12;
		
		RecoilReduction_X = 0.75;
		RecoilReduction_Y = 1;
		RecoilReduction_Z = 0.85;
		
		Offset = CFrame.new(-0.8545,0.078,-3) * CFrame.Angles(math.rad(5),math.rad(-5.3),0);
		
		FireAnimWeight = 0.15;
		
		EasingStyle =			Enum.EasingStyle.Quint;
		EasingDirection =		Enum.EasingDirection.Out;

		FOV_EasingStyle = 		Enum.EasingStyle.Quint;
		FOV_EasingDirection =	Enum.EasingDirection.Out;
	};
	
	LimitedAmmoEnabled = true;
	
	CameraRecoilingEnabled = true;
	Recoil = 1;
	AngleX_Min = 4; --	this is y basically idk
	AngleX_Max = 4; --	this is y basically idk
	AngleY_Min = -1; -- this is x idk
	AngleY_Max = 1; --	this is x idk
	AngleZ_Min = -1; --	z
	AngleZ_Max = 1; --	z
    Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
    RecoilSpeed = 3.5; 
    RecoilDamper = 0.65;
	RecoilRedution = 0; --In percent.
	
	HitmarkersEnabled = true;
    CrossSize = 		20;
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