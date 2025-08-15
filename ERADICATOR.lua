local ERADICATOR = 
{
	Handle = {"Tool","Handle"};
	
	EquipTime = 1;
		EquipAnimSpeed = 0.65;
	
	TrailEnabled = true;

	Mains = {
		S1 = {
			SwingWait =		0.2;
			SwingTime = 	0.75;
			DebounceTime = 	2;
			ComboEndTime = 	0.25;
			
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			
			ForceMulti =	1;
			CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;
			
			AnimSpeed = 	1;
			
			MaxHits = 		20;
			
			FlinchTime =	2;
			
			Hitter = 		{"Tool","Handle"};
			SoundPart = 	{"Tool","Handle"};
			
			Force = 15;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
		};
		
		E = {
			SwingWait =		1.05;
			SwingTime = 	0.5;
			DebounceTime = 	2.5;

			DmgMulti = 		1;
			DmgMulti2 = 	5;
			ForceMulti =	1;
			
			AnimSpeed = 	1;
			
			Hitter = 		{"Tool","Handle"};
			SoundPart = 	{"Tool","Handle"};
			
			Force = 1.5;
			ForceUpVec = Vector3.new(0,-1.25,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
			
			HealMulti = 0.85;
		};
	};
	
	SlashStages = 1;
	Damage = 44;
	StaminaUsage = 5;
	BlockHitStrength = 10;
	
	Combo = {
		Enabled = false;
			OnePerson = true; -- Only on the same person
			KnockTime = 0;
	};
	
	MultipleHits = {
		Enabled = true;
		DB = 0;
	};
	
	Fatal = true;
	Sharp = true; -- for block hits etc
	
	RunIdle = true; -- play idle anim when running
	
	Customs = {
		["ExplodeFinish"] = true;
		
		["DoorKick"] = {
			Range = 		7;
			SwingWait =		0.46666666666;
			SwingTime =		0.16666666666;
			DebounceTime =	1.5;
			StaminaUsage =	-100;
			AnimSpeed = 	1.5;
			Damage =		510;
			Hitter = 		{"Tool","Handle"};

			ForceMulti = 13;
			CustomHitType = "AxeHit";
			DontPlayHitSound = true;
		};
		
		["RegisterHit"] = {
			Range = 		3;
			SwingWait =		1.04;
			SwingTime =		0.3;
			DebounceTime =	1.5;
			AnimSpeed =		1.25;
			StaminaUsage =	-100;
			Damage =		510;
			Hitter = 		{"Tool","Handle"};
			WoodOnly = false;
			InvertedAnim = true;
			
			BreakType = 10;

			ForceMulti = 1.5;
			CustomHitType = "AxeHit";
			DontPlayHitSound = true;
		};
			
		["NoFinishSpeedMulti"] = true;
	};
	
	BreakSettings = {
		Enabled = true;
			CanBreak = true;
				BreakType = 	"Normal"; -- Normal,BoneBreak
				KillType = 		"Normal";
				BleedKill = 	false;
				ExplodeHead = 	false;

				Head = {
					Dmg = 1001;
				BleedDmg = 	0;
				BleedTime = 0;
				BleedStep = 0;
				};
				LArm = {
					Dmg = 1001;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
				RArm = {
					Dmg = 1001;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
				LLeg = {
					Dmg = 1001;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
				RLeg = {
					Dmg = 1001;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
	};
	
	ExecuteSettings = {
		Enabled 		= true;
		CanBreak 		= true;
		StaminaUsage 	= 0;
	};
	
	BlockSettings = {
		Enabled = 		true;
		Strength = 		3;
		SlowDown = 		10;
		StaminaUsage =	0.05;
		HitFlinchTime = 2;
			
		DebounceTime = 0.25;

		DontCancelOnHit = true;	
		HitStaminaUsage = -17;
	};
	
	CanClash = false;
		
	SlowDown = {
		AntiSprint 		=	false;
		Enabled = true; -- forever slowdown
			Amount 			= -7.5;
	};
	
	AttackSlowDown = {
		AntiSprint 		=	true;
		Enabled = true; -- slowdown
			Amount 			= -15;		
	};
	
	AntiJump =		false;
	AntiCrouch =	false;
	
	Blood = {
		Enabled = true; -- blood hit
		
		Enabled2 = true; -- main.
			A = { -- Main
				Amount = 		{20,20};
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
	
	MMAG = 30;
}

ERADICATOR.Blood.B.RepeatCount =	ERADICATOR.Mains.S1.BleedTime / ERADICATOR.Mains.S1.BleedTick ;
ERADICATOR.Blood.B.RepeatTick =	ERADICATOR.Mains.S1.BleedTick;

return ERADICATOR