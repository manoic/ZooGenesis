
local S = 
{
	Name 	= "SB-Launcher";
	Type	= "Gun";
	
	EquipTime 	= 1;
		EquipAnimSpeed = 1;
	
	MagSize		= 		12;
			StartFull = true;
		
	StoredAmmo 	= 		24;
		HideStoredAmmo = false;
		
	FireRate	= 		6;
	Range		= 		350;
	BulletsPerShot	= 	1;
	Spread		= 		5;
		CrouchSpreadReduction = 0.75;
		WalkSpreadIncrease = 1.25;
	
	BulletHoleSize = 0.3;
	
	Damage		= 5;
		HeadshotMultiplier = 1.5;
		DownedDiv = 4;
		FlinchTime = 0.35;
		
	ReloadTime	= 0.66666666;
		ReloadAnimSpeed = 1.1;
		ReloadSlowDown = 0;

	ShotgunSettings = {
		ShotgunReload = 	true;
		
		ReloadStartTime = 0.6666;
		
		ShellInTime = 		0.325;
		
		ReloadEndTime = 0.66666;
		
			ShellInAnimSpeed =	2;
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
		SemiRate = 4.5;
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
	RocketLauncherEnabled = false;
		RocketSpeed = 			45;
		RocketUpForceMulti =	4;
		RocketRotVel =			2.5;
			
	Dropoff		= 1;
	Knockback = 1000;
	
	SlowDown = {
		Enabled = true;
		Amount = 1;
	};
	
	AimSettings = {
		Enabled = true;
		
		AimSpeed = 0.3;
		CrossSpeed = 30;
		
		ShowCursor = true;
		CrossScale = 0.4;
		
		IdleAnimSpeed = 0;
		
		FieldOfViewS = 50;
		MouseSensitiveP = 0.65; --In percent
		SpreadReductionP = 0.2; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"
		
		SlowDown = 5;
		
		RecoilReduction_X = 0.75;
		RecoilReduction_Y = 1;
		RecoilReduction_Z = 0.85;
		
		Offset =  CFrame.new(-0.5,0.5,0.85) * CFrame.Angles(math.rad(-10),math.rad(1),0);
		
		FireAnimWeight = 0.2;
		
		EasingStyle =			Enum.EasingStyle.Quad;
		EasingDirection =		Enum.EasingDirection.Out;

		FOV_EasingStyle = 		Enum.EasingStyle.Quad;
		FOV_EasingDirection =	Enum.EasingDirection.Out;
	};
	
	LimitedAmmoEnabled = true;
	
	CameraRecoilingEnabled = true;
	Recoil = 5;
	AngleX_Min = 4; --	this is y basically idk
	AngleX_Max = 4; --	this is y basically idk
	AngleY_Min = -1; -- this is x idk
	AngleY_Max = 1; --	this is x idk
	AngleZ_Min = -1; --	z
	AngleZ_Max = 1; --	z
    Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
    RecoilSpeed = 8; 
    RecoilDamper = 0.65;
	RecoilRedution = 0; --In percent.
	
	HitmarkersEnabled = true;
    CrossSize = 		7;
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
		["Snowball"] = {
			UpVecP = 0.45;
			RotVel = 20;
			Velocity = 250;
			Size = 0.95;
		};
		["SnowReload"] = {
			Time = 0.65;
			AnimSpeed = 1.5;
			ForceCrouch = true;
		}
	}
}

return S