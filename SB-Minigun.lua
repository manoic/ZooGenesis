local S = 
{
	Name 	= "SB-Minigun";
	Type	= "Gun";
	
	EquipTime 	= 1;
		EquipAnimSpeed = 1;
	
	MagSize		= 		100;
			StartFull = true;
		HideStoredAmmo = false;
		
	StoredAmmo 	= 		100;
	FireRate	= 		11;
	Range		= 		400;
	BulletsPerShot	= 	2;
	Spread		= 		5;
		CrouchSpreadReduction = 0.85;
		WalkSpreadIncrease = 1.5;
	
	BulletHoleSize = 0.4;
	
	FireAnimWeight = 0.1;
	
	Damage		= 5;
		HeadshotMultiplier = 1.4;
		LimbMultiplier = 0.85;
		DownedDiv = 3;
		FlinchTime = 0.25;
	CanExecute = false;
		BulletTypeChange = {
			Enabled = false;
			M1 = "HSP";
			RB_Reduction = 1.2; -- divide damage by;
			M2 = "RB";
		};
		
	ReloadTime	= 5;
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
		RotSpawn = CFrame.Angles(0,math.rad(90),0);
		RotVel = 7;
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
		
		CanSwitch = false;
			SwitchTo = "Semi"
	};
	
	SniperEnabled = false;
	SniperSettings = {
	};
	
	MinigunEnabled = true;
	MinigunSettings = {
		WindTime = 0.6;
		FireDB = 0;
		WindDB = 0.5;
		SensitivityReduction = 0.35;
		SlowDown = 2.5;
		BarrelSpeed = 30;
	};
	GrenadeLauncherEnabled = false;
		GrenadeSpeed = 100;
		GrenadeRotVel =	5;
	RocketLauncherEnabled = false;
		RocketSpeed = 			45;
		RocketUpForceMulti =	4;
		RocketRotVel =			2.5;		
			
	Dropoff		= 1;
	Knockback = 20;
	
	SlowDown = {
		Enabled = true;
		Amount = 5;
	};
	
	BulletSettings = {
		TracerEnabled = true; 
		ParticleEnabled = false;
		TracerOffset0 = Vector3.new(0.15, 0, 0); 
		TracerOffset1 = Vector3.new(-0.15, 0, 0);
		TracerTransparency = 0.1;
		TracerLifetime = 0.1;
		
		Velocity = 2800;
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
		
		NoHitEffect = true;
	};
	
	LimitedAmmoEnabled = true;
	
	AntiSprint = true;
	
	CameraRecoilingEnabled = true;
	Recoil = 2;
	AngleX_Min = 4; --	this is y basically idk
	AngleX_Max = 4; --	this is y basically idk
	AngleY_Min = -0.5; -- this is x idk
	AngleY_Max = 0.5; --	this is x idk
	AngleZ_Min = -0.5; --	z
	AngleZ_Max = 0.5; --	z
    Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
    RecoilSpeed = 8; 
    RecoilDamper = 0.65;
	RecoilRedution = 0; --In percent.
	
	HitmarkersEnabled = true;
    CrossSize = 		19;
    CrossExpansion = 	100;
    CrossSpeed = 		30;
    CrossDamper	= 		0.8;

	TurnToMouse = true;
		TurnSpeed = 10;
	
	FlashSettings = {
		Enabled = 		true;
		Brightness = 	7;
		Color = 		Color3.fromRGB(255, 244, 202);
		Range = 		8;
		Shadows = 		true;
		Time = 			0.05;
	};
	
	MuzzleFlashEmitCount = 5;
	
	Blood = {
		Enabled = true;
			A = { -- Main
				Amount = 		{1,3};
				Speed = 		100;
				Spread = 		{-25,25};
				Size = 			2; -- Pool Size
				WidthScale =	1.5;
				UpVector = 		Vector3.new(0,-20,0);
				RepeatCount =	1; -- Amount of times to repeat
				RepeatTick =	0; -- Wait time between ticks
			};
			B = { -- Bleed out effect
				Amount = 		{1,1};
				Speed = 		5;
				Spread = 		{-15,15};
				Size = 			0.75; -- Pool Size
				WidthScale =	0.4;
				UpVector = 		Vector3.new(0,0,0);
				RepeatCount =	5; -- Amount of times to repeat
				RepeatTick =	0.5; -- Wait time between ticks
			};
		};
		
	Customs = {
		["Snowball"] = {
			UpVecP = 0.55;
			RotVel = 20;
			Velocity = 300;
			Size = 1;
		};
		["SnowReload"] = {
			Time = 0.65;
			AnimSpeed = 1.5;
			ForceCrouch = true;
		}
	}
}

return S