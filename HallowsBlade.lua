local Rambo = 
{
	Handle = {"Tool","Handle"};
	
	EquipTime = 0.55;
		EquipAnimSpeed = 0.9;
	
	TrailEnabled = true;

	Mains = {
		S1 = {
			SwingWait =		0.222222222;
			SwingTime = 	0.16666666667;
			DebounceTime = 	1;
			ComboEndTime = 	0.45;
			
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			
			ForceMulti =	1;
			CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;
			
			AnimSpeed = 	0.9;
			
			MaxHits = 		1;
			
			FlinchTime =	0.35;
			
			Hitter = 		{"Tool","Handle"};
			SoundPart = 	{"Tool","Handle"};
			
			Force = 4;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	5;
			BleedTime = 3.5;
			BleedTick = 0.15;
		};
		S2 = {
			SwingWait =		0.222222222;
			SwingTime = 	0.16666666667;
			DebounceTime = 	1;
			ComboEndTime = 	0.45;
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			ForceMulti =	1;
			CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;
			
			AnimSpeed = 	1;
			
			MaxHits = 		1;
			
			FlinchTime =	0.35;
			
			Hitter = 		{"Tool","Handle"};
			SoundPart = 	{"Tool","Handle"};
			
			Force = 4;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	5;
			BleedTime = 3.5;
			BleedTick = 0.15;
		};
		S3 = {
			SwingWait =		0.275;
			SwingTime = 	0.16666666667;
			DebounceTime = 	1.25;
			ComboEndTime = 	0.45;
			DmgMulti = 		1.25;
			DmgMulti2 = 	1;
			ForceMulti =	1;
			CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;
			
			AnimSpeed = 	1;
			
			MaxHits = 		1;
			
			FlinchTime =	0.35;
			
			Hitter = 		{"Tool","Handle"};
			SoundPart = 	{"Tool","Handle"};
			
			Force = 4;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	5;
			BleedTime = 3.5;
			BleedTick = 0.15;
		};
		
		E = {
			SwingWait =		1.075;
			SwingTime = 	0.225;
			DebounceTime = 	2.5;

			DmgMulti = 		1;
			DmgMulti2 = 	5;
			ForceMulti =	1;
			
			AnimSpeed = 	1;
			
			Hitter = 		{"Tool","Handle"};
			SoundPart = 	{"Tool","Handle"};
			
			Force = 3.5;
			ForceUpVec = Vector3.new(0,0,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
		};
	};
	
	SlashStages = 3;
	Damage = 25;
	StaminaUsage = 8;
	BlockHitStrength = 2;
	
	Combo = {
		Enabled = false;
			OnePerson = true; -- Only on the same person
			KnockTime = 0;
	};
	
	Fatal = false;
	Sharp = true; -- for block hits etc
	
	RunIdle = false; -- play idle anim when running
	
	Customs = {
		["DoorKick"] = {
			Range = 		3.5;
			SwingWait =		0.4;
			SwingTime =		0.2;
			DebounceTime =	1;
			StaminaUsage =	5;
			Damage =		22;		
			Hitter = 		{"Char","Right Leg"};

			ForceMulti = 1;
		};	
	};
	
	BreakSettings = {
		Enabled = true;
			CanBreak = true;
				BreakType = 	"Normal"; -- Normal,BoneBreak
				BleedKill = 	false;
				ExplodeHead = 	false;

				Head = {
					Dmg = 35;
					BleedDmg = 	0;
					BleedTime = 0;
					BleedStep = 0;
				};
				LArm = {
					Dmg = 0;
					BleedDmg = 	0;
					BleedTime = 0;
					BleedStep = 0;
				};
				RArm = {
					Dmg = 0;
					BleedDmg = 	0;
					BleedTime = 0;
					BleedStep = 0;
				};
				LLeg = {
					Dmg = 0;
					BleedDmg = 	0;
					BleedTime = 0;
					BleedStep = 0;
				};
				RLeg = {
					Dmg = 0;
					BleedDmg = 	0;
					BleedTime = 0;
					BleedStep = 0;
				};
	};
	
	ExecuteSettings = {
		Enabled 		= true;
		CanBreak 		= false;
		StaminaUsage 	= 10;
	};
	
	BlockSettings = {
		Enabled = 		false;
		Strength = 		2;
		SlowDown = 		10;
		StaminaUsage =	0.175;
		HitFlinchTime = 0.75;
	};
	
	CanClash = false;
		
	SlowDown = {
		AntiSprint 		=	false;
		Enabled = false; -- forever slowdown
			Amount 			= 0;
	};
	
	AttackSlowDown = {
		AntiSprint 		=	true;
		Enabled = true; -- forever slowdown
			Amount 			= -10;		
	};
	
	AntiJump =		false;
	AntiCrouch =	false;
	
	Blood = {
		Enabled = true; -- blood hit
		
		Enabled2 = true; -- main.
			A = { -- Main
				Amount = 		{1,3};
				Speed = 		65;
				Spread = 		{-15,15};
				Size = 			4; -- Pool Size
				WidthScale =	1.25;
				UpVector = 		Vector3.new(0,-5,0);
				RepeatCount =	1; -- Amount of times to do
				RepeatTick =	0; -- Wait time between ticks
				MaxYAngle =		50;
			};
			B = { -- Bleed out effect
				Amount = 		{1,1};
				Speed = 		5;
				Spread = 		{-10,10};
				Size = 			1.15; -- Pool Size
				WidthScale =	0.5;
				UpVector = 		Vector3.new(0,7.5,0);
				RepeatCount =	5; -- Amount of times to do
				RepeatTick =	0.5; -- Wait time between ticks
				MaxYAngle =		nil;
			};
	};
	
	MMAG = 10;
}

return Rambo