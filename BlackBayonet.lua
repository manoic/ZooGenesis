local Bayonet = 
{
	Handle = {"Tool","Handle"};
	
	EquipTime = 0.45;
		EquipAnimSpeed = 1;
	
	TrailEnabled = true;

	Mains = {
		S1 = {
			SwingWait =		0.16;
			SwingTime = 	0.12;
			DebounceTime = 	0.5;
			ComboEndTime = 	0.5;
			
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			
			ForceMulti =	1;
			CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;
			
			AnimSpeed = 	1.25;
			
			MaxHits = 		2;
			
			FlinchTime =	0.35;
			
			Hitter = 		{"Tool","Handle"};
			SoundPart = 	{"Tool","Handle"};
			
			Force = 3.75;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	20;
			BleedTime = 10;
			BleedTick = 0.5;
		};
		S2 = {
			SwingWait =		0.16;
			SwingTime = 	0.12;
			DebounceTime = 	0.5;
			ComboEndTime = 	0.5;
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			ForceMulti =	1;
			CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;
			
			AnimSpeed = 	1.25;
			
			MaxHits = 		2;
			
			FlinchTime =	0.35;
			
			Hitter = 		{"Tool","Handle"};
			SoundPart = 	{"Tool","Handle"};
			
			Force = 3.75;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	20;
			BleedTime = 10;
			BleedTick = 0.5;
		};
		S3 = {
			SwingWait =		0.16;
			SwingTime = 	0.25;
			DebounceTime = 	0.55;
			ComboEndTime = 	0.5;
			DmgMulti = 		1.25;
			DmgMulti2 = 	1;
			ForceMulti =	1;
			CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;
			
			AnimSpeed = 	1.25;
			
			MaxHits = 		2;
			
			FlinchTime =	0.4;
			
			Hitter = 		{"Tool","Handle"};
			SoundPart = 	{"Tool","Handle"};
			
			Force = 3.75;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	20;
			BleedTime = 10;
			BleedTick = 0.5;
		};
		
		E = {
			SwingWait =		0.9;
			SwingTime = 	0.25;
			DebounceTime = 	2;

			DmgMulti = 		1;
			DmgMulti2 = 	5;
			ForceMulti =	1;

			AnimSpeed = 	1.2;
			
			Hitter = 		{"Tool","Handle"};
			SoundPart = 	{"Tool","Handle"};
			
			Force = 3.5;
			ForceUpVec = Vector3.new(0,0,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
			
			HealMulti = 0.5;
		};
	};
	
	SlashStages = 3;
	Damage = 37;
		PassoverMulti = 1.75;
	
	StaminaUsage = 5;
	BlockHitStrength = 2;
	
	DCancelGuns = true;
	
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
				BreakType = 	"BoneBreak"; -- Normal,BoneBreak
				BleedKill = 	false;
				ExplodeHead = 	false;

				Head = {
					Dmg = 30;
					CantBreak = true;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
				LArm = {
					Dmg = 40;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
				RArm = {
					Dmg = 40;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
				LLeg = {
					Dmg = 40;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
				RLeg = {
					Dmg = 40;
					BleedDmg =  0;
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
			Amount 			= -5;		
	};
	
	AntiJump =		false;
	AntiCrouch =	false;
	Blood = {
			Enabled = true; -- blood hit
			
			Enabled2 = true; -- main.
				A = { -- Main
					Amount = 		{4,8};
					Speed = 		65;
					Spread = 		{-15,15};
					Size = 			3; -- Pool Size
					WidthScale =	2;
					UpVector = 		Vector3.new(0,-5,0);
					RepeatCount =	1; -- Amount of times to do
					RepeatTick =	0; -- Wait time between ticks
					MaxYAngle =		50;
				};
				B = { -- Bleed out effect
					Amount = 		{1,2};
					Speed = 		5;
					Spread = 		{-20,20};
					Size = 			1.5; -- Pool Size
					WidthScale =	0.5;
					UpVector = 		Vector3.new(0,7.5,0);
					RepeatCount =	0; -- Amount of times to do
					RepeatTick =	0; -- Wait time between ticks
					MaxYAngle =		nil;
				};
		};
		
	MMAG = 10;
}
	
Bayonet.Blood.B.RepeatCount =	Bayonet.Mains.S1.BleedTime / Bayonet.Mains.S1.BleedTick ;
Bayonet.Blood.B.RepeatTick =	Bayonet.Mains.S1.BleedTick;

return Bayonet