local Bali = 
{
	Handle = {"Tool","WeaponHandle"};
	
	EquipTime = 0.37;
		EquipAnimSpeed = 1.2;
	
	TrailEnabled = true;

	Mains = {
		S1 = {
			SwingWait =		0.08;
			SwingTime = 	0.16;
			DebounceTime = 	0.35;
			ComboEndTime = 	0.35;
			
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			
			ForceMulti =	1;
			CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;
			
			AnimSpeed = 	1.25;
			
			MaxHits = 		1;
			
			FlinchTime =	0.25;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 3.25;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	6;
			BleedTime = 10;
			BleedTick = 0.5;
		};
		S2 = {
			SwingWait =		0.08;
			SwingTime = 	0.16;
			DebounceTime = 	0.35;
			ComboEndTime = 	0.35;
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			ForceMulti =	1;
			CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;
			
			AnimSpeed = 	1.25;
			
			MaxHits = 		1;
			
			FlinchTime =	0.25;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 3.25;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	6;
			BleedTime = 10;
			BleedTick = 0.5;
		};
		S3 = {
			SwingWait =		0.12;
			SwingTime = 	0.2;
			DebounceTime = 	0.35;
			ComboEndTime = 	0.35;
			DmgMulti = 		1.35;
			DmgMulti2 = 	1;
			ForceMulti =	1;
			CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;
			
			AnimSpeed = 	1.25;
			
			MaxHits = 		1;
			
			FlinchTime =	0.25;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 3.25;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	6;
			BleedTime = 10;
			BleedTick = 0.5;
		};
		
		E = {
			SwingWait =		0.4;
			SwingTime = 	0.127;
			DebounceTime = 	1;

			DmgMulti = 		1;
			DmgMulti2 = 	1;
			ForceMulti =	1;
			
			AnimSpeed = 	1;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 2.5;
			ForceUpVec = Vector3.new(0,0,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
			
			HealMulti = 0.325;
		};
	};
	
	SlashStages = 3;
	Damage = 18;
		PassoverMulti = 1.35;
	
	StaminaUsage = 3;
	BlockHitStrength = 2;
	
	Combo = {
		Enabled = false;
			OnePerson = true; -- Only on the same person
			KnockTime = 0;
	};
	
	Fatal = false;
	Sharp = true; -- for block hits etc
	
	RunIdle = false; -- play idle anim when running
	
	DCancelGuns = true;
	
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
			CantBreak = true;
			Dmg = 12;
			BleedDmg = 	0;
			BleedTime = 0;
			BleedStep = 0;
		};
		LArm = {
			Dmg = 17;
			BleedDmg = 	0;
			BleedTime = 0;
			BleedStep = 0;
		};
		RArm = {
			Dmg = 17;
			BleedDmg = 	0;
			BleedTime = 0;
			BleedStep = 0;
		};
		LLeg = {
			Dmg = 17;
			BleedDmg = 	0;
			BleedTime = 0;
			BleedStep = 0;
		};
		RLeg = {
			Dmg = 17;
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
			Amount 			= -5;		
	};
	
	AntiJump =		false;
	AntiCrouch =	false;
	
	Blood = {
		Enabled = true; -- blood hit
		
		Enabled2 = true; -- main.
			A = { -- Main
				Amount = 		{1,1};
				Speed = 		75;
				Spread = 		{-15,15};
				Size = 			3; -- Pool Size
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

Bali.Blood.B.RepeatCount =	Bali.Mains.S1.BleedTime / Bali.Mains.S1.BleedTick;
Bali.Blood.B.RepeatTick =	Bali.Mains.S1.BleedTick;

return Bali