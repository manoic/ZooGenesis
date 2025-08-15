










local S = 
{
	Name 	= "USP";
		Version = 2.0;
		HandleName = "WeaponHandle";

	EquipTime 	= 0.85;
		EquipAnimSpeed = 1;
	
	MagSize		= 		16;
			StartFull = true;
			
	StoredAmmo 	= 		48;
	FireRate	= 		6;
	Range		= 		800;
	BulletsPerShot	= 	1;
	Spread		= 		9;
		CrouchSpreadReduction = 0.85;
		WalkSpreadIncrease = 1.3;
		
	BulletHoleSize = 0.2;
		FallenDmgMulti = 0.05;
	FireAnimWeight = 1;
	FireAnimSpeed = 1.25;
		
	Damage		= 29;
		HeadshotMultiplier = 1.6;
		LimbMultiplier = 0.65;
		DownedDiv = 1;
		FlinchTime = 0.125;
	CanExecute = false;
	
	PassoverMulti = 0.95;
	DownedDmgMulti = 1.115;
	
	ArmorPenetration = 0.5;
		
	ReloadTime	= 2;
		ReloadAnimSpeed = 1;
		ReloadSlowDown = 12;
		ReloadAnimCont = true;
		
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
		Vec = Vector3.new(1,1.5,1);
		Vel = 80000;
		RotVel = 50;
		ShellSound = true;
	};
	
	MagSettings = 
	{
		DropMag = true;
		DropWait = 0.35;
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
			
	Dropoff		= 0.1;
		DropoffDistance = 1500;
		
	Knockback = 10;
	
	SlowDown = {
		Enabled = false;
		Amount = 0;
	};
	
	FireSlowDown = {
		Enabled = true;
		Amount = 5;
		Time = 0.35;
	};
	
	CrouchOffset = {
		Enabled = true;
		Offset = Vector3.new(-0.2,-0.15,0.35);
		Angle = Vector3.new(0, 0, 20);
	};

	RunAnimSpeed = 1.35;
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

		TracerTransparency = 0.9;
		TracerLifetime = 0.125;

		TracerMaxLength = 50;
		TracerSizeMulti = 1;
		
		Velocity = 1000;
		Acceleration = Vector3.new(0,-129.2,0);
		WindOffset = Vector3.new(0, 0, 0); 
		Size = Vector3.new(0.2, 0.2, 0.2);
		Color = Color3.fromRGB(89, 255, 139);
		Transparency = 1;
		Material = Enum.Material.Neon;
		Shape = Enum.PartType.Block;

		MeshEnabled = false;
		MeshType = Enum.MeshType.Sphere;
		MeshID = nil; --437259501;
		TextureID = nil;-- 437259505;
		MeshScale = Vector3.new(1,1,1);

        LightEnabled = false;
        LightBrightness = 0.5;
		LightColor = Color3.fromRGB(255, 117, 89);
      	LightRange = 10;
        LightShadows = true;
	};
	
		
	SprayLerp = {
		Enabled = true;

		AngleX = 1.2;
		AngleY = 0.5;
		AngleZ = 7;
			
		AngleY2 = -3;
			
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
		
		Offset = CFrame.new(-0.565,0.41,0.65) * CFrame.Angles(math.rad(-0.24),math.rad(0),0);
		
		FireAnimWeight = 1;
		FireAnimSpeed = 1.75;
		
		EasingStyle =			Enum.EasingStyle.Quint;
		EasingDirection =		Enum.EasingDirection.Out;

		FOV_EasingStyle = 		Enum.EasingStyle.Quint;
		FOV_EasingDirection =	Enum.EasingDirection.Out;
		
		DepthOfField =  {
			Enabled =		true;
			FarIntensity =	0;
			FocusDistance =	2.3;
			InFocusRadius =	1.2;
			NearIntensity =	0.2;
			};
			
		ADS_ArmsOffset = CFrame.new(-0.15, 0.45, 0.2);
	};
	
	LimitedAmmoEnabled = true;
	
	CameraRecoilingEnabled = true;
		Recoil = 20;
		AngleX_Min = 4; --	this is y basically idk
		AngleX_Max = 4; --	this is y basically idk
		AngleY_Min = -1; -- this is x idk
		AngleY_Max = 1; --	this is x idk
		AngleZ_Min = -1; --	z
		AngleZ_Max = 1; --	z
		Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
		RecoilSpeed = 9; 
		RecoilDamper = 0.65;
		RecoilRedution = 0; --In percent.
	
	HitmarkersEnabled = true;
    CrossSize = 		9;
    CrossExpansion = 	100;
    CrossSpeed = 		30;
    CrossDamper	= 		0.8;

	TurnToMouse = true;
		TurnSpeed = 10;
		
	TrailSettings =
	{
		Color =					Color3.fromRGB(85, 255, 127);
		LightEmission = 		1;
		LightInfluence = 		1;
		Transparency = 			0.75;
		FadeSpeed =				0.4;
		Width =					0.1;
	};
	
	FlashSettings = {
		Enabled = 		true;
		Brightness = 	0.175;
		Color = 		Color3.new(1,1,1);
		Range = 		8;
		Shadows = 		true;
		Time = 			0.075;
	};
		
	MuzzleFlashEmitCount = 4;
	
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