










local S = 
{
	Name 	= "Savage";
		Type	= "Gun";
		Version = 1.0;
		HandleName = "WeaponHandle";

	EquipTime 	= 1;
	EquipAnimSpeed = 1.05;

	MagSize		= 		5;
	StartFull = true;

	StoredAmmo 	= 		20;
	FireRate	= 		2.5;
	Range		= 		1500;
	BulletsPerShot	= 	1;
	Spread		= 		30;
	CrouchSpreadReduction = 0.9;
	WalkSpreadIncrease = 1.2;

	FireAnimSpeed = 1.5;

		BulletHoleSize = 0.325;

	Damage		= 75;
	CanExecute = false;
	HeadshotMultiplier = 2.31;
	LimbMultiplier = 0.75;
	DownedDiv = 1;
	FlinchTime = 0.5;
	DownedDmgMulti = 1.35;
	PassoverCap = 80;

	ArmorPenetration = 0.8;

	ArmorDmgMulti = 1;

	--	CanExecute = false;
	--		BulletTypeChange = {
	--			Enabled = false;
	--			M1 = "HSP";
	--			RB_Reduction = 1.5; -- divide damage by;
	--			M2 = "RB";
	--		};

	ReloadTime	= 4.5;
	ReloadAnimSpeed = 0.8;
	ReloadSlowDown = 7.5;

	ShotgunSettings = {
		ShotgunReload = 	true;

		ReloadStartTime = 0.6666;

		ShellInTime = 		0.65;

		ReloadEndTime = 0.66666;

		ShellInAnimSpeed =	1.25;

		FirePump = 			true;

		FirePumpAnimSpeed = 1.5;

		ReloadStartAnimSpeed = 1.5;

		FirePumpWait1 = 2;
		FirePumpWait2 = 7;
		FShellIn = 			false;
		FShellInTime =		0;
			
		ReloadEndSound = true;
	};

	ChargeUpEnabled = false;
	ChargeUpSettings = {
		ChargeTime = 0.2;
		ChargeDB = 0.05;
	};

	ShellType = "M";
	ShellOutSettings = {
		Do = true;
		Vec = Vector3.new(1,0.5,1);
		Vel = 1500;
		RotVel = 10;
		Delay = 0.15;
		ShellSound = true;
		ShellSound_PitchMulti = 0.67;
	};

	MagSettings = 
	{
		DropMag = false;
		DropWait = 1.25;
		DropForce = Vector3.new(0,-10,0);
	};

	Inspecting = {
		Enabled = true;
		AnimSpeed = 1;
		TR = -0.45;
			
		FPOffset = Vector3.new(-0.15,0,-0.25);
		--FPOffset2 = Vector3.new(0,0,0.5); -- LA
	};

	CrouchOffset = {
		Enabled = true;
		Offset = Vector3.new(0.15, -0.25, 0);
		Angle = Vector3.new(0, 0, 25);
	};		
		
	SniperEnabled =	true;
	SniperReload =	true;

	SniperSettings = {
		AimSpeed = 0.5;
		AimAnimSpeed = 1;

		WalkIncrease = true;
		WalkBlur = 15;
		WalkSpread = 15;

		FieldOfViewS = 15;
		--FieldOfViewS2 = 60;

		MouseSensitiveP = 0.22; --In percent
		SpreadRedutionS = 0.6; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"

		ScopeSensitive = 0.25;
		ScopeKnockbackSpeed = 7;
		ScopeKnockbackDamper = 0.65;
		ScopeSwaySpeed = 20;
		ScopeSwayDamper	= 0.9;

		Offset = CFrame.new(-0.39,0.07,0) * CFrame.Angles(math.rad(5),math.rad(2),0);
		--	Offset = CFrame.new(-0.1,0.1,0.1);
		Anim_EasingStyle =			Enum.EasingStyle.Quad; --Linear, Sine, Back, Quad, Quart, Quint, Bounce or Elastic?
		Anim_EasingDirection =		Enum.EasingDirection.Out; --In, Out or InOut?


		TweenLength = 0.5; -- anim
		--TweenLength2 = 0.4; --fov

		EasingStyle = Enum.EasingStyle.Quad; --Linear, Sine, Back, Quad, Quart, Quint, Bounce or Elastic?
		EasingDirection = Enum.EasingDirection.In; --In, Out or InOut?


		TweenLengthNAD = 0.3; --In second
		EasingStyleNAD = Enum.EasingStyle.Quad; --Linear, Sine, Back, Quad, Quart, Quint, Bounce or Elastic?
		EasingDirectionNAD = Enum.EasingDirection.Out; --In, Out or InOut?
	};

	FireModeSettings = {
		FireMode	= "Semi";
		DisplayMode = "Lever-action";

		BurstAmount = 	3;
		BurstRate = 	25;	

		CanSwitch = false;
		SwitchTo = "Semi"
	};

	MinigunEnabled = false;
	DelayBeforeFiring = 0;

	Dropoff		= 0.75;
	Knockback = 40;

	SlowDown = {
		Enabled = true;
		Amount = 2;
	};

	FireSlowDown = {
		Enabled = true;
		Amount = 7;
		Time = 1;
	};
		
	RunAnimSpeed = 1.45;
	RunOffset = Vector3.new(0,-0.15,0.25);
		
	BulletSettings = {
		TracerEnabled = true; 
		ParticleEnabled = false;
		TracerOffset0 = Vector3.new(0.25, 0, 0); 
		TracerOffset1 = Vector3.new(-0.25, 0, 0);
		TracerTransparency = 0.1;
		TracerLifetime = 0.25;

		Velocity = 1350;
		Acceleration = Vector3.new(0,-100,0);
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
		LightBrightness = 4;
		LightColor = Color3.fromRGB(255, 117, 89);
		LightRange = 10;
		LightShadows = true;

		ShakeMulti = 12;
	};

	LimitedAmmoEnabled = true;

	CameraRecoilingEnabled = true;
	Recoil = 55;
	AngleX_Min = 4; --	this is y basically idk
	AngleX_Max = 4; --	this is y basically idk
	AngleY_Min = -1.7; -- this is x idk
	AngleY_Max = 1.7; --	this is x idk
	AngleZ_Min = -1; --	z
	AngleZ_Max = 1; --	z
	Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
	RecoilSpeed = 14; 
	RecoilDamper = 0.999;
	RecoilRedution = 0; --In percent.

	HitmarkersEnabled = true;
	CrossSize = 		16;
	CrossExpansion = 	100;
	CrossSpeed = 		30;
	CrossDamper	= 		0.8;

	TurnToMouse = true;
	TurnSpeed = 10;

	FlashSettings = {
		Enabled = 		true;
		Brightness = 	3.25;
		Color = 		Color3.fromRGB(255, 244, 202);
		Range = 		8;
		Shadows = 		true;
		Time = 			0.075;
	};

	MuzzleFlashEmitCount = 7;

	Blood = {
		Enabled = true;
		A = { -- Main
			Amount = 		{3,5};
			Speed = 		50;
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
			MaxSize = 10;
			ReverseSize = true;
		};
			
		NecroDmgMulti = 0.5;
	};
}

return S