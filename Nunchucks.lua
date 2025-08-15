local Nunchucks = 
{
	Handle = {"Tool","Handle1"};
	
	EquipTime = 0.55;
		EquipAnimSpeed = 1;
	
	TrailEnabled = true;
	
	Mains = {
		S1 = {
			SwingWait =		0.1;
			SwingTime = 	0.15;
			DebounceTime = 	0.4;
			ComboEndTime = 	0.25;
			
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			
			ForceMulti =	1;
			
			CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;
			
			AnimSpeed = 	1.15;
			MaxHits = 		1;
			
			FlinchTime =	0.2;
			
			Hitter = 		{"Tool","Handle2"};
			SoundPart = 	{"Tool","Handle2"};
			
			
			Force = 6.5;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
		};
		S2 = {
			SwingWait =		0.135;
			SwingTime = 	0.15;
			DebounceTime = 	0.4;
			ComboEndTime = 	0.25;
			
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			
			ForceMulti =	1;
			
			CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;
			
			AnimSpeed = 	1.15;
			MaxHits = 		1;
			
			FlinchTime =	0.2;
			
			Hitter = 		{"Tool","Handle2"};
			SoundPart = 	{"Tool","Handle2"};
			
			Force = 6.5;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
		};
		S3 = {
			SwingWait =		0.25;
			SwingTime = 	0.2;
			DebounceTime = 	0.55;
			ComboEndTime = 	0.25;
			
			DmgMulti = 		1.2;
			DmgMulti2 = 	1.5;
			
			ForceMulti =	1;
			
			CanKnock = 		true;
				KnockMode = "Head"; -- Default(all parts), Head(only head)
				KnockTime = 0.75;
				ConcussKnockMin = 0.7;
				ConcussionEffect = { -- If KnockMode = "Head"
					Enabled = true;
					Time = 1;
					Multi = 0.5;
				};
			
			AnimSpeed = 	1.15;
			MaxHits = 		2;
			
			FlinchTime =	0.3;
			
			Hitter = 		{"Tool","Handle2"};
			SoundPart = 	{"Tool","Handle2"};
			
			Force = 6.5;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
		};
		
		E = {
			SwingWait =		0.9;
			SwingTime = 	0.25;
			DebounceTime = 	2;

			DmgMulti = 		1;
			DmgMulti2 = 	1;
			ForceMulti =	1;

			AnimSpeed = 	1.2;
			
			Hitter = 		{"Tool","Handle2"};
			SoundPart = 	{"Tool","Handle2"};
			
			Force = 2.5;
			ForceUpVec = Vector3.new(0,-1.25,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
			
			HealMulti = 0.375;
		};
	};
	
	SlashStages = 3;
	Damage = 15;
		NoPassover = true;
	StaminaUsage = 4;
	BlockHitStrength = 2;
	
	Combo = {
		Enabled = false;
			OnePerson = false; -- Only on the same person
			KnockTime = 0;
	};
	
	M3HitCombo = true;
	
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
	
	DCancelGuns = true;
	
	BreakSettings = {
		Enabled = true;
		CanBreak = true;
		BreakType = 	"BoneBreak"; -- Normal,BoneBreak
		BleedKill = 	false;
		ExplodeHead = 	false;

		Head = {
			CantBreak = true;
			Dmg = 15;
			BleedDmg = 	0;
			BleedTime = 0;
			BleedStep = 0;
		};
		LArm = {
			Dmg = 15;
			BleedDmg =  0;
			BleedTime = 0;
			BleedStep = 0;
		};
		RArm = {
			Dmg = 15;
			BleedDmg =  0;
			BleedTime = 0;
			BleedStep = 0;
		};
		LLeg = {
			Dmg = 15;
			BleedDmg =  0;
			BleedTime = 0;
			BleedStep = 0;
		};
		RLeg = {
			Dmg = 15;
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
			Enabled = 		true;
			Strength = 		1;
			SlowDown = 		10;
			StaminaUsage =	0.175;
			HitFlinchTime = 0.5;
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
			Amount 			= -3;		
	};
	
	AntiJump =		false;
	AntiCrouch =	false;
	
	Blood = {
		Enabled = true; -- blood hit
		
		Enabled2 = false; -- main.
			A = { -- Main
				Amount = 		{2,4};
				Speed = 		100;
				Spread = 		{-15,15};
				Size = 			1.75; -- Pool Size
				WidthScale =	1.5;
				UpVector = 		Vector3.new(0,-5,0);
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
				RepeatCount =	5; -- Amount of times to do
				RepeatTick =	0.5; -- Wait time between ticks
				MaxYAngle =		nil;
			};
	};
	
	MMAG = 10;
}

return Nunchucks