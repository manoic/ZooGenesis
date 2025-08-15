local Metal_Bat = 
{
		Handle = {"Tool","WeaponHandle"};
	
	EquipTime = 0.85;
		EquipAnimSpeed = 0.6;
	
	TrailEnabled = true;

	Mains = {
		S1 = {
			SwingWait =		0.4;
			SwingTime = 	0.275;
			DebounceTime = 	1.32;
			ComboEndTime = 	0.75;
			
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			
			ForceMulti =	1;
			CanKnock = 		true;
				KnockMode = "Head"; -- Default(all parts), Head(only head)
				KnockTime = 2;
				ConcussKnockMin = 0.6;
				ConcussionEffect = { -- If KnockMode = "Head"
					Enabled = true;
					Time = 2;
					Multi = 1.5;
					DoLimit = true;
					Limit_FadeTime = 0.5;
					Limit_Perc = 0.1;
				};
							
			AnimSpeed = 	0.8;
		
			MaxHits = 		2;
			
			FlinchTime =	0.5;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 6.5;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	14;
			BleedTime = 6;
			BleedTick = 0.5;
		};
		S2 = {
			SwingWait =		0.4;
			SwingTime = 	0.275;
			DebounceTime = 	1.32;
			ComboEndTime = 	0.75;
		
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			
			ForceMulti =	1;
			CanKnock = 		true;
				KnockMode = "Head"; -- Default(all parts), Head(only head)
				KnockTime = 2;
				ConcussKnockMin = 0.6;
				ConcussionEffect = { -- If KnockMode = "Head"
					Enabled = true;
					Time = 2;
					Multi = 1.5;
					DoLimit = true;
					Limit_FadeTime = 0.5;
					Limit_Perc = 0.1;
				};
			
			AnimSpeed = 	0.8;
			
			MaxHits = 		2;
			
			FlinchTime =	0.5;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 8.5;
			ForceUpVec = Vector3.new(0,1.5,0);
			
			BleedDmg =	18;
			BleedTime = 5;
			BleedTick = 0.5;
		};
		S3 = {
			SwingWait =		0.385;
			SwingTime = 	0.275;
			DebounceTime = 	1.75;
			ComboEndTime = 	0.25;
		
			DmgMulti = 		1.25;
			DmgMulti2 = 	2.2;
			
			ForceMulti =	1;
			CanKnock = 		true;
				KnockMode = "Head"; -- Default(all parts), Head(only head)
				KnockTime = 2.5;
				ConcussKnockMin = 0.3;
				ConcussionEffect = { -- If KnockMode = "Head"
					Enabled = true;
					Time = 2.5;
					Multi = 1.5;
					DoLimit = true;
					Limit_FadeTime = 0.5;
					Limit_Perc = 0.1;
				};
			
			AnimSpeed = 	0.9;
			
			MaxHits = 		2;
			
			FlinchTime =	0.6;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 8.5;
			ForceUpVec = Vector3.new(0,-1.5,0);
			
			BleedDmg =	23;
			BleedTime = 10;
			BleedTick = 0.5;

			ExplodeHead = false;
		};
		
		E = {
			SwingWait =		0.5;
			SwingTime = 	0.5;
			DebounceTime = 	1;

			DmgMulti = 		1;
			DmgMulti2 = 	2;
			ForceMulti =	1;

			AnimSpeed = 	1;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 9.5;
			ForceUpVec = Vector3.new(0,-1.5,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;

			ExplodeHead = true;
			
			HealMulti = 0.6;
		};
	};
	
	SlashStages = 3;
	Damage = 44;
		PassoverMulti = 1.25;
	StaminaUsage = 5;
	BlockHitStrength = 8;
	
	DCancelGuns = true;
	
	Combo = {
		Enabled = false;
			OnePerson = true; -- Only on the same person
			KnockTime = 0;
	};
	
	Fatal = false;
	Sharp = true; -- for block hits etc
	
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
					Dmg = 60;
					BleedDmg = 	0;
					BleedTime = 0;
					BleedStep = 0;
				};
				LArm = {
					Dmg = 101;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
				RArm = {
					Dmg = 101;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
				LLeg = {
					Dmg = 101;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
				RLeg = {
					Dmg = 101;
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
		Enabled = 		true;
		Strength = 		4;
		SlowDown = 		10;
		StaminaUsage =	0.175;
		HitFlinchTime = 0.6;
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
		--JReduction = 10;
	AntiCrouch =	false;
	
	Blood = {
		Enabled = true; -- blood hit
		
		Enabled2 = true; -- main.
			A = { -- Main
				Amount = 		{3,6};
				Speed = 		85;
				Spread = 		{-25,25};
				Size = 			3; -- Pool Size
				WidthScale =	3;
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

Metal_Bat.Blood.B.RepeatCount = Metal_Bat.Mains.S1.BleedTime / Metal_Bat.Mains.S1.BleedTick;
Metal_Bat.Blood.B.RepeatTick =	Metal_Bat.Mains.S1.BleedTick;

return Metal_Bat