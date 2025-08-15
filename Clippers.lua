 local Wrench = 
{
		Handle = {"Tool","WeaponHandle"};
	
	EquipTime = 0.35;
		EquipAnimSpeed = 1;
	
	TrailEnabled = true;

	Mains = {
		S1 = {
				SwingWait =		0.25;
				SwingTime = 	0.125;
			DebounceTime = 	0.6;
			ComboEndTime = 	0.25;
			
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			
			ForceMulti =	1;
			
			CanKnock = 		false;
			KnockMode = "Head"; -- Default(all parts), Head(only head)
			KnockTime = 0.4;
				--NORD = true;
			ConcussKnockMin = 0.8;
			ConcussionEffect = { -- If KnockMode = "Head"
				Enabled = true;
				Time = 0.5;
				Multi = 0.6;
				DoLimit = true;
				Limit_FadeTime = 0.35;
				Limit_Perc = 0.1;
			};
			
			AnimSpeed = 	1.25;
			
			MaxHits = 		1;
			
			FlinchTime =	0.35;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 4.5;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
		};
		S2 = {
				SwingWait =		0.18;
				SwingTime = 	0.14;
			DebounceTime = 	0.6;
			ComboEndTime = 	0.25;
			
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			
			ForceMulti =	1;
			
				CanKnock = 		false;
			KnockMode = "Head"; -- Default(all parts), Head(only head)
			KnockTime = 0.4;
				--NORD = true;
				ConcussKnockMin = 0.8;
			ConcussionEffect = { -- If KnockMode = "Head"
				Enabled = true;
				Time = 1;
				Multi = 0.6;
				DoLimit = true;
				Limit_FadeTime = 0.35;
				Limit_Perc = 0.1;
			};
			
				AnimSpeed = 	1.25;
			
			MaxHits = 		1;
			
			FlinchTime =	0.35;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 4.5;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
		};
		
		E = {
				SwingWait =		0.45;
			SwingTime = 	0.3;
			DebounceTime = 	1;

			DmgMulti = 		1;
			DmgMulti2 = 	1.35;
			ForceMulti =	1;
			
				AnimSpeed = 	1.25;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 2.5;
			ForceUpVec = Vector3.new(0,-1.5,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
			
			HealMulti = 0.45;
		};
	};
	
	SlashStages = 2;
	Damage = 1;
	StaminaUsage = 3;
	BlockHitStrength = 3;
	
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
			
		["Infected_ExplodeHead"] = true;
	};
	
	BreakSettings = {
		Enabled = true;
			CanBreak = true;
				BreakType = 	"BoneBreak"; -- Normal,BoneBreak
				BleedKill = 	false;
				ExplodeHead = 	false;

				Head = {
					CantBreak = true;
					Dmg = 20;
					BleedDmg = 	0;
					BleedTime = 0;
					BleedStep = 0;
				};
				LArm = {
					Dmg = 25;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
				RArm = {
					Dmg = 25;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
				LLeg = {
					Dmg = 25;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
				RLeg = {
					Dmg = 25;
					BleedDmg =  0;
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
		Enabled = 		false;
		Strength = 		3;
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
			Amount 			= -5;		
	};
	
	AntiJump =		false;
	AntiCrouch =	false;
	
	Blood = {
		Enabled = false; -- blood hit
		
		Enabled2 = false; -- main.
			A = { -- Main
				Amount = 		{2,3};
				Speed = 		80;
				Spread = 		{-15,15};
				Size = 			2.5; -- Pool Size
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
				RepeatCount =	0; -- Amount of times to do
				RepeatTick =	0; -- Wait time between ticks
				MaxYAngle =		nil;
			};
	};
	
	MMAG = 10;
}

Wrench.Blood.B.RepeatCount =	Wrench.Mains.S1.BleedTime / Wrench.Mains.S1.BleedTick;
Wrench.Blood.B.RepeatTick = Wrench.Mains.S1.BleedTick;

return Wrench