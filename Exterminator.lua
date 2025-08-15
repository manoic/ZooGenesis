










local S = 
{
	Name 	= "Exterminator";
		Version = 2.0;
		HandleName = "WeaponHandle";
		
		FallenDmgMulti = 0.05;
	EquipTime 	= 0.8;
		EquipAnimSpeed = 1;
	
	MagSize		= 		6;
			StartFull = true;
			
	StoredAmmo 	= 		28;
	FireRate	= 		1.75;
	Range		= 		2500;
	BulletsPerShot	= 	1;
	Spread		= 		18;
		CrouchSpreadReduction = 0.9;
	WalkSpreadIncrease = 1.2;
		
	FireAnimWeight = 1;
	FireAnimSpeed = 1;
		
	BulletHoleSize = 0.56;
	
	Damage		= 62;
		HeadshotMultiplier = 1.63;
		LimbMultiplier = 0.8;
		DownedDiv = 3;
		FlinchTime = 0.15;
		
		--PassoverCap = 60;
		
	ArmorPenetration = 0.83;
		
	ReloadTime	= 3;
		ReloadAnimSpeed = 0.95;
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
	
	ShellType = "D";
	ShellOutSettings = {
		Do = true;
		Vec = Vector3.new(1,1.1,1);
		Vel = 55000;
		RotVel = 35;
		ShellSound = true;
		ShellSound_PitchMulti = 0.8;
	};
	
	MagSettings = 
	{
		DropMag = true;
		DropWait = 0.45;
		DropForce = Vector3.new(0,-10,0);
	};
		
	CrouchOffset = {
		Enabled = true;
		Offset = Vector3.new(-0.2,-0.15,0.35);
		Angle = Vector3.new(0, 0, 20);
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
			
	Dropoff		= 0.1;
		DropoffDistance = 2500;
		
	Knockback = 72;
	
	SlowDown = {
		Enabled = true;
		Amount = 2;
	};
	
	RunAnimSpeed = 1.2;
	RunOffset = Vector3.new(0.3,0,0);
		
	Inspecting = {
		Enabled = true;
		AnimSpeed = 1;
		TR = -0.3;
	};

	BulletSettings = {
		TracerEnabled = true; 
		ParticleEnabled = false;
		TracerOffset0 = Vector3.new(-0.075, -0.025, -0.205); 
		TracerOffset1 = Vector3.new(0.075, 0.025, 0.025);

		TracerTransparency = 0.1;
		TracerLifetime = 0.125;

		TracerMaxLength = 50;
		TracerSizeMulti = 2;

		Velocity = 1500;
		Acceleration = Vector3.new(0,-129.2,0);
		WindOffset = Vector3.new(0, 0, 0); 
		Size = Vector3.new(0.4, 0.4, 0.4);
		--Color = Color3.fromRGB(144, 255, 110);
		Color = Color3.fromRGB(0, 255, 234);
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
		LightColor = Color3.fromRGB(62, 252, 255);
		LightRange = 10;
		LightShadows = true;

		ShakeMulti = 2;
	};
		
	SprayLerp = {
		Enabled = true;

		AngleX = 1.2;
		AngleY = 0.5;
		AngleZ = 5;
		
		AngleY2 = -1;
			
		HPFM = 2;	

		EaseTime = 0.05;
	};
		
	AimSettings = {
		Enabled = true;
		
		AimSpeed = 0.6;
		CrossSpeed = 30;
		
		IdleAnimSpeed = 0;
		
		FieldOfViewS = 60;
		MouseSensitiveP = 0.65; --In percent
		SpreadReductionP = 0.001; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"
		
		SlowDown = 12;
		
		RecoilReduction_X = 0.75;
		RecoilReduction_Y = 1;
		RecoilReduction_Z = 0.85;
		
		Offset = CFrame.new(-0.5395,0.352,0.2) * CFrame.Angles(math.rad(-0.1),math.rad(0),0);
		
		FireAnimWeight = 1;
		FireAnimSpeed = 1.2;
		
		EasingStyle =			Enum.EasingStyle.Quint;
		EasingDirection =		Enum.EasingDirection.Out;

		FOV_EasingStyle = 		Enum.EasingStyle.Quint;
		FOV_EasingDirection =	Enum.EasingDirection.Out;
		
		DepthOfField =  {
			Enabled =		true;
			FarIntensity =	0;
			FocusDistance =	3.1;
			InFocusRadius =	1.8;
			NearIntensity =	0.215;
		};	
			
			ADS_ArmsOffset = CFrame.new(-0.5, 0.3, 0.15);
	};
	
	LimitedAmmoEnabled = true;
	
	CameraRecoilingEnabled = true;
		Recoil = 60;
		AngleX_Min = 4; --	this is y basically idk
		AngleX_Max = 4; --	this is y basically idk
		AngleY_Min = -1.75; -- this is x idk
		AngleY_Max = 1.75; --	this is x idk
		AngleZ_Min = -3; --	z
		AngleZ_Max = 3; --	z
		Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
		RecoilSpeed = 7.5; 
		RecoilDamper = 0.9999;
		RecoilRedution = 0; --In percent.
	
	HitmarkersEnabled = true;
    CrossSize = 		12;
    CrossExpansion = 	100;
    CrossSpeed = 		30;
    CrossDamper	= 		0.8;

	TurnToMouse = true;
		TurnSpeed = 10;
	
	FlashSettings = {
		Enabled = 		true;
		Brightness = 	5;
		Color = 		Color3.fromRGB(255, 117, 89);
		Range = 		7.5;
		Shadows = 		true;
		Time = 			0.05;
	};
	
	MuzzleFlashEmitCount = 4;
	
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