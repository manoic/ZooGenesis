local S = 
{
	Name 	= "Mosin Nagant";
	
	EquipTime 	= 0.8;
		EquipAnimSpeed = 1;
	
	MagSize		= 		5;
			StartFull = true;
	
	StoredAmmo 	= 		15;
	FireRate	= 		2;
	Range		= 		15000;
	BulletsPerShot	= 	1;
	Spread		= 		5;
		CrouchSpreadReduction = 0.9;
		WalkSpreadIncrease = 1.2;
	
	BulletHoleSize = 0.5;
	
	Damage		= 70;
		CanExecute = false;
		HeadshotMultiplier = 1.2;
		LimbMultiplier = 0.75;
		DownedDiv = 1;
		FlinchTime = 0.5;
		FallenDmgMulti = 0.05;
	ArmorPenetration = 0.95;
		
--	CanExecute = false;
--		BulletTypeChange = {
--			Enabled = false;
--			M1 = "HSP";
--			RB_Reduction = 1.5; -- divide damage by;
--			M2 = "RB";
--		};
		
	ReloadTime	= 0.6;
		ReloadAnimSpeed = 1.1;
		ReloadSlowDown = 7.5;

	ShotgunSettings = {
		ShotgunReload = 	true;
		
		ReloadStartTime = 0.6;
		
		ShellInTime = 		0.6;
		
		ReloadEndTime = 0.6;
		
		ShellInAnimSpeed =	0.72115384614;
			
		FirePump = 			true;
			FirePumpWait1 = 3;
			FirePumpWait2 = 4;
		FShellIn = 			false;
			FShellInTime =		0;
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
	};
	
	MagSettings = 
	{
		DropMag = false;
		DropWait = 1.25;
		DropForce = Vector3.new(0,-10,0);
	};
	
	
	SniperEnabled =	false;
		SniperReload =	true;
		
		
	--SniperSettings = {
	--	AimSpeed = 0.5;
	--	AimAnimSpeed = 0.75;
		
	--	WalkIncrease = false;
	--		WalkBlur = 15;
	--		WalkSpread = 60;
		
	--	FieldOfViewS = 15;
	--	MouseSensitiveS = 0.2; --In percent
	--		SpreadRedutionS = 0.6; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"
			
	--	ScopeSensitive = 0.25;
	--	ScopeKnockbackSpeed = 7;
 --       ScopeKnockbackDamper = 0.65;
	--	ScopeSwaySpeed = 10;
 --       ScopeSwayDamper	= 0.4;

	--	Offset = CFrame.new(-0.61,0.425,0.95);
	--	--	Offset = CFrame.new(-0.1,0.1,0.1);
 --       Anim_EasingStyle =			Enum.EasingStyle.Quad; --Linear, Sine, Back, Quad, Quart, Quint, Bounce or Elastic?
 --       Anim_EasingDirection =		Enum.EasingDirection.Out; --In, Out or InOut?

 --       TweenLength = 1.1; --In second
 --       EasingStyle = Enum.EasingStyle.Quint; --Linear, Sine, Back, Quad, Quart, Quint, Bounce or Elastic?
 --       EasingDirection = Enum.EasingDirection.InOut; --In, Out or InOut?

 --       TweenLengthNAD = 0.35; --In second
 --       EasingStyleNAD = Enum.EasingStyle.Quint; --Linear, Sine, Back, Quad, Quart, Quint, Bounce or Elastic?
 --       EasingDirectionNAD = Enum.EasingDirection.Out; --In, Out or InOut?
	--};
		
	AimSettings = {
		Enabled = true;

		AimSpeed = 0.5;
		AimAnimSpeed = 1;
			
		CrossSpeed = 30;

		IdleAnimSpeed = 0;

		FieldOfViewS = 45;
		MouseSensitiveP = 0.65; --In percent
		SpreadReductionP = 0.001; --In percent. NOTE: Must be the same value as "SpreadRedutionOS"

		SlowDown = 5;

		RecoilReduction_X = 0.75;
		RecoilReduction_Y = 1;
		RecoilReduction_Z = 0.85;

		Offset = CFrame.new(-0.6777,0.63,1.3) * CFrame.Angles(math.rad(0),math.rad(1.35),math.rad(0));

		FireAnimWeight = 0.2;

		EasingStyle =			Enum.EasingStyle.Quad; --Linear, Sine, Back, Quad, Quart, Quint, Bounce or Elastic?
		EasingDirection =		Enum.EasingDirection.Out; --In, Out or InOut?

		FOV_EasingStyle = 		Enum.EasingStyle.Quad; --Linear, Sine, Back, Quad, Quart, Quint, Bounce or Elastic?
		FOV_EasingDirection =	Enum.EasingDirection.Out; --In, Out or InOut?
	};
		
	FireModeSettings = {
		FireMode	= "Semi";
		
			BurstAmount = 	3;
			BurstRate = 	25;	
		
		CanSwitch = false;
			SwitchTo = "Semi"
	};

		Inspecting = {
			Enabled = true;
			AnimSpeed = 1;
			TR = -0.3;
		};

	MinigunEnabled = false;
		DelayBeforeFiring = 0;
			
	Dropoff		= 0.7;
	Knockback = 25;
	
	SlowDown = {
		Enabled = true;
		Amount = 5;
	};
	
	FireSlowDown = {
		Enabled = true;
		Amount = 5;
		Time = 1;
	};
	
	BulletSettings = {
		TracerEnabled = true; 
		ParticleEnabled = false;
		TracerOffset0 = Vector3.new(0.25, 0, 0); 
		TracerOffset1 = Vector3.new(-0.25, 0, 0);
		TracerTransparency = 0.1;
		TracerLifetime = 0.2;
		
		Velocity = 2000;
		Acceleration = Vector3.new(0,-25,0);
		WindOffset = Vector3.new(0, 0, 0); 
		Size = Vector3.new(0.2, 0.2, 0.2);
		Color = Color3.fromRGB(255, 181, 97);
		Transparency = 1;
		Material = Enum.Material.Neon;
       	Shape = Enum.PartType.Block;

        MeshEnabled = false;
        MeshID = 437259501;
      	TextureID = 437259505;
       	MeshScale = Vector3.new(0.002, 0.002, 0.002);

        LightEnabled = true;
        LightBrightness = 4;
       	LightColor = Color3.fromRGB(255, 200, 180);
      	LightRange = 10;
		LightShadows = true;
			
		ShakeMulti = 6;
	};
	
	LimitedAmmoEnabled = true;
	
	CameraRecoilingEnabled = true;
	Recoil = 100;
	AngleX_Min = 4; --	this is y basically idk
	AngleX_Max = 4; --	this is y basically idk
	AngleY_Min = -1.5; -- this is x idk
	AngleY_Max = 1.5; --	this is x idk
	AngleZ_Min = -3; --	z
	AngleZ_Max = 3; --	z
    Accuracy = 0.1; --	In percent. For example: 0.5 is 50%
    RecoilSpeed = 8; 
    RecoilDamper = 0.65;
	RecoilRedution = 0; --In percent.
	
	HitmarkersEnabled = true;
    CrossSize = 		5;
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
				Amount = 		{2,4};
				Speed = 		125;
				Spread = 		{-25,25};
				Size = 			3.5; -- Pool Size
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
		LimbDamage2 = {
			Dmg = 35;

			HeadMultiplier = 0.86;
			Multiplier = 0.4;

			LimbBreakType = "Destroy";
			HeadBreakType = "Explode";
		};
		["ScopeGlint"] = {
			PartName = "SGlarePart";
			Angle = 7;
			DistDiv = 6;
			MaxSize = 30;
			ReverseSize = false;
		}
	};
}

return S