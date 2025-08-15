










local S = 
{
	Name 	= "M82A1";
		Type	= "Gun";
		Version = 1.0;
		HandleName = "Handle";
		
	EquipTime 	= 1;
		EquipAnimSpeed = 1.1;
	
	MagSize		= 		4;
			StartFull = true;
	
	StoredAmmo 	= 		4;
	FireRate	= 		1;
	Range		= 		4500;
	BulletsPerShot	= 	1;
	Spread		= 		30;
		CrouchSpreadReduction = 1;
		WalkSpreadIncrease = 1.1;
	
	BulletHoleSize = 0.75;
	
	FireAnimSpeed = 0.35;
	FireAnimWeight = 0.75;
	
	Damage		= 98;
		HeadshotMultiplier = 1.5;
		LimbMultiplier = 0.95;
		DownedDiv = 1;
		FlinchTime = 1;
		PassoverMulti = 1;
		ForcePassover = true;
		
	CanExecute = false;
		BulletTypeChange = {
			Enabled = false;
			M1 = "HSP";
			RB_Reduction = 1.25; -- divide damage by;
			M2 = "RB";
		};
		
		ArmorPenetration = 1;
		
	ReloadTime	= 6;
		ReloadAnimSpeed = 0.94;
		ReloadSlowDown = 6;

	ShotgunSettings = {
		ShotgunReload = 	false;
		ShellInTime = 		0;
			ShellInAnimSpeed =	0;
		FirePump = 			false;
			FirePumpWait1 = 1;
			FirePumpWait2 = 0.85;
		FShellIn = 			false;
			FShellInTime =		0;
		
		FirePumpAnimSpeed = 0.6;
	};
	
	ShellType = "M";
	ShellOutSettings = {
		Do = false;
		Vec = Vector3.new(1,0.5,1);
		Vel = 1500;
		RotVel = 10;
		Delay = 0.45;
	};
		
	RunAnimSpeed = 1.45;
		
	MagSettings = 
	{
		DropMag = true;
		DropWait = 0.9;
		DropForce = Vector3.new(0,-10,0);
	};
		
	Inspecting = {
		Enabled = true;
		AnimSpeed = 1;
		TR = -0.3;
		FPOffset = Vector3.new(-0.2,0,-0.75);
	};

	CrouchOffset = {
		Enabled = true;
		Offset = Vector3.new(0.15, -0.25, 0);
		Angle = Vector3.new(0, 0, 25);
	};	
		
	SniperEnabled =	true;
	SniperReload =	true;
	SniperSettings = {
		AimSpeed = 0.7;
		AimAnimSpeed = 1;

		WalkIncrease = true;
		WalkBlur = 15;
		WalkSpread = 10;

		FieldOfViewS = 9;
		--FieldOfViewS2 = 45;

		MouseSensitiveS = 0.17; --In percent
		SpreadRedutionS = 0.001; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"

		CrossScaleS = 0;

		ScopeSensitive = 0.25;
		ScopeKnockbackSpeed = 7;
		ScopeKnockbackDamper = 0.65;
		ScopeSwaySpeed = 20;
		ScopeSwayDamper	= 0.9;

		Offset = CFrame.new(-0.65,0.25,0) * CFrame.Angles(math.rad(2.5),math.rad(2),0);

		Anim_EasingStyle =			Enum.EasingStyle.Quad; --Linear, Sine, Back, Quad, Quart, Quint, Bounce or Elastic?
		Anim_EasingDirection =		Enum.EasingDirection.Out; --In, Out or InOut?

		TweenLength = 0.7; -- anim
		--TweenLength2 = 0.4; --fov

		EasingStyle = Enum.EasingStyle.Quad; --Linear, Sine, Back, Quad, Quart, Quint, Bounce or Elastic?
		EasingDirection = Enum.EasingDirection.In; --In, Out or InOut?

		TweenLengthNAD = 0.3; --In second
		EasingStyleNAD = Enum.EasingStyle.Quad; --Linear, Sine, Back, Quad, Quart, Quint, Bounce or Elastic?
		EasingDirectionNAD = Enum.EasingDirection.Out; --In, Out or InOut?
	};
		
	FireModeSettings = {
		FireMode	= "Semi";
		DisplayMode = "Single-shot";
		
			BurstAmount = 	3;
			BurstRate = 	25;	
		
		CanSwitch = false;
			SwitchTo = "Semi"
	};

	MinigunEnabled = false;
		DelayBeforeFiring = 0;
			
	Dropoff		= 0.7;
		DropoffDistance = 2000;
		
	Knockback = 100;
	
	SlowDown = {
		Enabled = true;
		Amount = 5;
	};
	FireSlowDown = {
		Enabled = true;
		Amount = 7;
		Time = 1;
	};
	
	BulletSettings = {
		TracerEnabled = true; 
		ParticleEnabled = false;
		TracerOffset0 = Vector3.new(0.5, 0, 0); 
		TracerOffset1 = Vector3.new(-0.5, 0, 0);
		Velocity = 2600;
		Acceleration = Vector3.new(0,-100,0);
		WindOffset = Vector3.new(0, 0, 0); 
		Size = Vector3.new(0.2, 0.2, 0.2);
		Color = Color3.fromRGB(255, 143, 135);
		Transparency = 1;
		
		TracerTransparency = 0.1;
		TracerLifetime = 0.25;
		
		Material = Enum.Material.Neon;
       	Shape = Enum.PartType.Block;

        MeshEnabled = false;
        MeshID = 437259501;
      	TextureID = 437259505;
       	MeshScale = Vector3.new(0.002, 0.002, 0.002);

        LightEnabled = true;
        LightBrightness = 6;
		LightColor = Color3.fromRGB(255, 143, 135);
      	LightRange = 13;
		LightShadows = true;
			
		ShakeMulti = 18;
	};
	
	LimitedAmmoEnabled = true;
	
	CameraRecoilingEnabled = true;
	Recoil = 165;
	AngleX_Min = 4; --	this is y basically idk
	AngleX_Max = 4; --	this is y basically idk
	AngleY_Min = -2; -- this is x idk
	AngleY_Max = 2; --	this is x idk
	AngleZ_Min = -2.5; --	z
	AngleZ_Max = 2.5; --	z
    Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
    RecoilSpeed = 7; 
    RecoilDamper = 0.99999;
	RecoilRedution = 0; --In percent.
	
	HitmarkersEnabled = true;
    CrossSize = 		30;
    CrossExpansion = 	100;
    CrossSpeed = 		30;
    CrossDamper	= 		0.8;

	TurnToMouse = true;
		TurnSpeed = 10;
	
	FlashSettings = {
		Enabled = 		true;
		Brightness = 	5.7;
		Color = 		Color3.fromRGB(255, 244, 202);
		Range = 		10;
		Shadows = 		true;
		Time = 			0.075;
	};
	
	MuzzleFlashEmitCount = 7;
	
	Blood = {
		Enabled = true;
			A = { -- Main
				Amount = 		{9,20};
				Speed = 		89;
				Spread = 		{-25,25};
				Size = 			6; -- Pool Size
				WidthScale =	1;
				UpVector = 		Vector3.new(0,-20,0);
				RepeatCount =	1; -- Amount of times to repeat
				RepeatTick =	0; -- Wait time between ticks
			};
			B = { -- Bleed out effect
				Amount = 		{1,1};
				Speed = 		5;
				Spread = 		{-15,15};
				Size = 			0.65; -- Pool Size
				WidthScale =	0.4;
				UpVector = 		Vector3.new(0,0,0);
				RepeatCount =	5; -- Amount of times to repeat
				RepeatTick =	0.5; -- Wait time between ticks
			};
	};
		
	Customs = {
		["ScopeGlint"] = {
			PartName = "SGlarePart";
			Angle = 20;
			DistDiv = 6;
			MaxSize = 15;
			ReverseSize = true;
		};
			
		NecroDmgMulti = 0.75;
		
		FallenDmgMulti = 0.05;
	};
}

return S