
local Bat = 
{
	Handle = {"Tool","WeaponHandle"};
	
	EquipTime = 0.85;
		EquipAnimSpeed = 0.6;
	
	TrailEnabled = true;

	Mains = {
		S1 = {
			SwingWait =		0.42;
			SwingTime = 	0.25;
			DebounceTime = 	1.25;
			ComboEndTime = 	0.75;
			
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			
			ForceMulti =	1;
			CanKnock = 		true;
				KnockMode = "Head"; -- Default(all parts), Head(only head)
				KnockTime = 1.5;
				ConcussKnockMin = 0.7;
				ConcussionEffect = { -- If KnockMode = "Head"
					Enabled = true;
					Time = 1.5;
					Multi = 1;
					DoLimit = true;
					Limit_FadeTime = 0.5;
					Limit_Perc = 0.1;
				};
			
			AnimSpeed = 	0.8;
			
			MaxHits = 		2;
			
			FlinchTime =	0.4;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 5;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
		};
		S2 = {
			SwingWait =		0.375;
			SwingTime = 	0.3;
			DebounceTime = 	1.25;
			ComboEndTime = 	0.75;
			
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			
			ForceMulti =	1;
			CanKnock = 		true;
				KnockMode = "Head"; -- Default(all parts), Head(only head)
				KnockTime = 1.5;
				ConcussKnockMin = 0.7;
				ConcussionEffect = { -- If KnockMode = "Head"
					Enabled = true;
					Time = 1.5;
					Multi = 1;
					DoLimit = true;
					Limit_FadeTime = 0.5;
					Limit_Perc = 0.1;
				};
							
			AnimSpeed = 	1;
			
			MaxHits = 		2;
			
			FlinchTime =	0.4;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 5;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
		};
		S3 = {
			SwingWait =		0.3;
			SwingTime = 	0.25;
			DebounceTime = 	1.4;
			ComboEndTime = 	0.25;
			
			DmgMulti = 		1.25;
			DmgMulti2 = 	1.5;
			
			ForceMulti =	1;
			CanKnock = 		true;
				KnockMode = "Head"; -- Default(all parts), Head(only head)
				KnockTime = 2.5;
				ConcussKnockMin = 0.6;
				ConcussionEffect = { -- If KnockMode = "Head"
					Enabled = true;
					Time = 2;
					Multi = 1;
					DoLimit = true;
					Limit_FadeTime = 0.5;
					Limit_Perc = 0.1;
				};
							
			AnimSpeed = 	1;
			
			MaxHits = 		2;
			
			FlinchTime =	0.5;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 8.5;
			ForceUpVec = Vector3.new(0,-1.5,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
		};
		
			E = {
				SwingWait =        0.6;
				SwingTime =     0.35;
				DebounceTime =     1;

				DmgMulti =         1;
				DmgMulti2 =     1;
				ForceMulti =    1;

				AnimSpeed =     0.916;

				Hitter =         {"Tool","WeaponHandle"};
				SoundPart =     {"Tool","WeaponHandle"};

				Force = 8.5;
				ForceUpVec = Vector3.new(0,-1.5,0);

				BleedDmg =    0;
				BleedTime = 0;
				BleedTick = 0;

				HealMulti = 0.55;
			};
	};
	
	SlashStages = 3;
	Damage = 34;
		PassoverMulti = 1.25;
	StaminaUsage = 8;
	BlockHitStrength = 2;
	
	DCancelGuns = true;
	
	Combo = {
		Enabled = false;
			OnePerson = true; -- Only on the same person
			KnockTime = 0;
	};
	
	Fatal = false;
	Sharp = false; -- for block hits etc
	
	RunIdle = true; -- play idle anim when running
	
	Customs = {
		["Infected_ExplodeHead"] = true;
	};
	
	BreakSettings = {
		Enabled = true;
			CanBreak = true;
				BreakType = 	"BoneBreak"; -- Normal,BoneBreak
				BleedKill = 	false;
				ExplodeHead = 	false;

				Head = {
					Dmg = 40;
					BleedDmg = 	0;
					BleedTime = 0;
					BleedStep = 0;
				};
				LArm = {
					Dmg = 55;
					BleedDmg = 	0;
					BleedTime = 0;
					BleedStep = 0;
				};
				RArm = {
					Dmg = 55;
					BleedDmg = 	0;
					BleedTime = 0;
					BleedStep = 0;
				};
				LLeg = {
					Dmg = 55;
					BleedDmg = 	0;
					BleedTime = 0;
					BleedStep = 0;
				};
				RLeg = {
					Dmg = 55;
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
		Strength = 		2;
		SlowDown = 		10;
		StaminaUsage =	0.175;
		HitFlinchTime = 0.5;
	};
	
	CanClash = false;
		
	SlowDown = {
		AntiSprint 		=	false;
		Enabled = true; -- forever slowdown
			Amount 			= 1.5;
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
		Enabled2 = false; -- main.
			A = { -- Main
				Amount = 		{2,4};
				Speed = 		100;
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
				RepeatCount =	5; -- Amount of times to do
				RepeatTick =	0.5; -- Wait time between ticks
				MaxYAngle =		nil;
			};
	};
	
	MMAG = 10;
}

return Bat