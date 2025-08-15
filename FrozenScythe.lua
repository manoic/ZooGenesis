local FrozenScythe = 
{
	Handle = {"Tool","Handle"};
	
	EquipTime = 1;
		EquipAnimSpeed = 1;
	
	TrailEnabled = true;

	Mains = {
		S1 = {
			SwingWait =		0.3;
			SwingTime = 	0.36;
			DebounceTime = 	1.5;
			ComboEndTime = 	0.9;
			
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			
			ForceMulti =	1;
			
			CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;
			
				AnimSpeed = 	0.8333333333333333;
			
			MaxHits = 		2;
			
			FlinchTime =	0.6;
			
			Hitter = 		{"Tool","Handle"};
			SoundPart = 	{"Tool","Handle"};
			
			Force = 10;
			ForceUpVec = Vector3.new(0,1.25,0);
		
			BleedDmg =	10;
			BleedTime = 5;
			BleedTick = 0.25;
		};
		S2 = {
				SwingWait =		0.3;
				SwingTime = 	0.54;
				DebounceTime = 	1.5;
				ComboEndTime = 	0.9;

			DmgMulti = 		1;
			DmgMulti2 = 	1;
			
			ForceMulti =	1;
			
			CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;
			
				AnimSpeed = 	0.8333333333333333;
			
			MaxHits = 		2;
			
			FlinchTime =	0.6;
			
			Hitter = 		{"Tool","Handle"};
			SoundPart = 	{"Tool","Handle"};
			
			Force = 10;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	10;
			BleedTime = 5;
			BleedTick = 0.25;
		};
		S3 = {
				SwingWait =		0.12;
				SwingTime = 	0.96;
				DebounceTime = 	2.4;
				ComboEndTime = 	0.3;
			
			DmgMulti = 		1.2;
			DmgMulti2 = 	1.15; -- 1.53030303030303
			
			ForceMulti =	1;
			
			CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;
			
				AnimSpeed = 	0.8333333333333333;
			
			MaxHits = 		8;
			
			FlinchTime =	0.65;
			
			Hitter = 		{"Tool","Handle"};
			SoundPart = 	{"Tool","Handle"};
			
			Force = 10;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	10;
			BleedTime = 5;
			BleedTick = 0.25;
		};
		
		E = {
				SwingWait =		1.08;
				SwingTime = 	0.24;
			DebounceTime = 	2.4;

			DmgMulti = 		1;
			DmgMulti2 = 	3;
			ForceMulti =	1;
			
				AnimSpeed = 	0.8333333333333333;
			
			Hitter = 		{"Tool","Handle"};
			SoundPart = 	{"Tool","Handle"};
			
			Force = 10;
			ForceUpVec = Vector3.new(0,1,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
			
			HealMulti = 1;
		};
	};
	
	SlashStages = 3;
	Damage = 55;
		PassoverMulti = 1.35;
	StaminaUsage = 15;
	BlockHitStrength = 3;
	
	Combo = {
		Enabled = false;
			OnePerson = true; -- Only on the same person
			KnockTime = 0;
		};
		
	MultipleHits = {
		Enabled = true;
		DB = 0.5;
	};
	
	Fatal = false;
	Sharp = true; -- for block hits etc
	
	RunIdle = true; -- play idle anim when running
	
	Customs = {
		["PoisonCharges"] = {
			Scream = true;
			StartCharges = 9;

			FinishCharges = 3;
		};	
			
			["NoFinishSpeedMulti"] = true;
			
		["DoorKick"] = {
			Range = 		4;
			SwingWait =		0.25;
			SwingTime = 	0.45;
			DebounceTime = 	1.15;
			StaminaUsage =	15;
			Damage =		111;
			Hitter = 		{"Tool","Handle"};
			WoodOnly = true;

			ForceMulti = 1;
			CustomHitType = "AxeHit";
			DontPlayHitSound = true;
		};
		
		["NecromancerFrozenFinishFull"] = {
			Radius = 75;
			Time = 1.5;
			DPS = 10;
				
			DoScreech = true;
			ScreechCooldown = 20;

			LimbDmgMin = 10;
			LimbDmgMax = 150;

			ConcussionEffect = { -- If KnockMode = "Head"
				Enabled = true;
				Time = 2;
				Multi = 0.2;
				DoLimit = true;
				Limit_FadeTime = 1.5;
				Limit_Perc = 0.1;
			};

			Rage_Enabled = false;
			Rage_LastTime = 10;
			Rage_Speed_Perc = 1;
			Rage_HP_Perc = 0.7;
		};

		["NecromancerFrozenFinishStart"] = {

		};	
	};
	
	DCancelGuns = true;
	
		BreakSettings = {
			Enabled = true;
			CanBreak = true;
			BreakType = 	"Normal"; -- Normal,BoneBreak
			KillType = 		"Normal";
			BleedKill = 	false;
			ExplodeHead = 	false;

			Head = {
				Dmg = 111;
				BleedDmg = 	0;
				BleedTime = 0;
				BleedStep = 0;
			};
			LArm = {
				Dmg = 111;
				BleedDmg = 	0;
				BleedTime = 0;
				BleedStep = 0;
			};
			RArm = {
				Dmg = 111;
				BleedDmg = 	0;
				BleedTime = 0;
				BleedStep = 0;
			};
			LLeg = {
				Dmg = 111;
				BleedDmg = 	0;
				BleedTime = 0;
				BleedStep = 0;
			};
			RLeg = {
				Dmg = 111;
				BleedDmg = 	0;
				BleedTime = 0;
				BleedStep = 0;
			};
		};
	
	ExecuteSettings = {
		Enabled 		= true;
		CanBreak 		= true;
		StaminaUsage 	= 10;
	};
	
	BlockSettings = {
		Enabled = 		true;
		Strength = 		3;
		SlowDown = 		10;
		StaminaUsage =	0.175;
		HitFlinchTime = 0.5;
	};
	
	CanClash = false;
		
	SlowDown = {
		AntiSprint 		=	false;
		Enabled = true; -- forever slowdown
		Amount 			= 2;
	};
	
	AttackSlowDown = {
		AntiSprint 		=	true;
		Enabled = true; -- forever slowdown
			Amount 			= -15;		
	};
	
	AntiJump =		false;
	AntiCrouch =	false;
	
	Blood = {
		Enabled = true; -- blood hit

		Enabled2 = true; -- main.
		A = { -- Main
			Amount = 		{5,10};
			Speed = 		100;
			Spread = 		{-25,25};
			Size = 			6; -- Pool Size
			WidthScale =	3;
			UpVector = 		Vector3.new(0,-2,0);
			RepeatCount =	1; -- Amount of times to do
			RepeatTick =	0; -- Wait time between ticks
			MaxYAngle =		50;
		};
		B = { -- Bleed out effect
			Amount = 		{1,1};
			Speed = 		5;
			Spread = 		{-30,30};
			Size = 			1; -- Pool Size
			WidthScale =	0.5;
			UpVector = 		Vector3.new(0,7.5,0);
			RepeatCount =	0; -- Amount of times to do
			RepeatTick =	0; -- Wait time between ticks
			MaxYAngle =		nil;
		};
	};
	
	MMAG = 10;
}

FrozenScythe.Blood.B.RepeatCount = FrozenScythe.Mains.S1.BleedTime / FrozenScythe.Mains.S1.BleedTick;
FrozenScythe.Blood.B.RepeatTick =	FrozenScythe.Mains.S1.BleedTick;

return FrozenScythe