
local S = 
{
	Name 	= "Milkor MGL";
	Type	= "Gun";
	
	EquipTime 	= 0.45;
		EquipAnimSpeed = 1.5;
	
	MagSize		= 		6;
			StartFull = true;
		
	StoredAmmo 	= 		36;
	FireRate	= 		2;
	Range		= 		150;
	BulletsPerShot	= 	1;
	Spread		= 		8;
		CrouchSpreadReduction = 0.9;
		WalkSpreadIncrease = 1.2;
	
	BulletHoleSize = 0.3;
	
	Damage		= 11.5;
		HeadshotMultiplier = 1.4;
		DownedDiv = 4;
		FlinchTime = 0.35;
		
	ReloadTime	= 0.66666666;
		ReloadAnimSpeed = 1.1;
		ReloadSlowDown = 5;

	ShotgunSettings = {
		ShotgunReload = 	true;
		
		ReloadStartTime = 0.5;
		
		ShellInTime = 		0.5;
		
		ReloadEndTime = 0.5;
		
			ShellInAnimSpeed =	1;
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
		FireMode	= "Semi";
		CanSwitch = true;
	};

	SniperEnabled = false;
	SniperSettings = {
	};
	
	MinigunEnabled = false;
		DelayBeforeFiring = 0;
		MinigunFireDB = 0.75;
	GrenadeLauncherEnabled = false;
		GrenadeSpeed = 250;
		GrenadeUpForceMulti =	0.7;
		GrenadeRotVel =	5;
		
	RocketLauncherEnabled = true;
		RocketSpeed = 700;
		RocketUpForce = 		0;
		RocketRotVel =			3;
		RotStartTime = 0.25;
		RocketMaxRange = 2000;
		RocketMaxTime = 60;

		ExplosionName = "GL_Explosion_Long";

		DistExplosionType = {
			Enabled = true;
			UnderDist = 20;
			ExplosionName = "GL_Explosion_Short";

			AccelerationM = true;
		};

		RocketName = "GrenadeLauncherGrenade";
			
	Dropoff		= 1;
	Knockback = 1000;
	
	SlowDown = {
		Enabled = true;
		Amount = 3;
	};
	
	AimSettings = {
		Enabled = true;
		
		AimSpeed = 0.5;
		CrossSpeed = 30;
		
		IdleAnimSpeed = 0;
		
		FieldOfViewS = 40;
		MouseSensitiveP = 0.65; --In percent
		SpreadReductionP = 0.001; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"
		
		SlowDown = 5;
		
		RecoilReduction_X = 0.75;
		RecoilReduction_Y = 1;
		RecoilReduction_Z = 0.85;
		
		Offset = CFrame.new(-0.58,0.69,0.85) * CFrame.Angles(math.rad(-15),math.rad(1.25),0);
		
		FireAnimWeight = 0.2;
		
		EasingStyle =			Enum.EasingStyle.Quint;
		EasingDirection =		Enum.EasingDirection.Out;

		FOV_EasingStyle = 		Enum.EasingStyle.Quint;
		FOV_EasingDirection =	Enum.EasingDirection.Out;
	};
	
	LimitedAmmoEnabled = true;
	
	CameraRecoilingEnabled = true;
	Recoil = 17;
	AngleX_Min = 4; --	this is y basically idk
	AngleX_Max = 4; --	this is y basically idk
	AngleY_Min = -1; -- this is x idk
	AngleY_Max = 1; --	this is x idk
	AngleZ_Min = -1; --	z
	AngleZ_Max = 1; --	z
    Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
    RecoilSpeed = 7; 
    RecoilDamper = 0.65;
	RecoilRedution = 0; --In percent.
	
	HitmarkersEnabled = true;
    CrossSize = 		8;
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
	};
	
	Customs = {
		["MGL_Stuff"] = {"Explosive","Smoke","Gas","Flash"}
	}
}

return S