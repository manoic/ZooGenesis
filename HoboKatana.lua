local Katana = 
{
		Handle = {"Tool","WeaponHandle"};
	
	EquipTime = 0.55;
		EquipAnimSpeed = 1;
	
	TrailEnabled = true;

	Mains = {
		S1 = {
			SwingWait =		0.181818;
			SwingTime = 	0.136363636;
			DebounceTime = 	0.65;
			ComboEndTime = 	0.75;
			
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			
			ForceMulti =	1;
			
			CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;
			
			AnimSpeed = 	1;
			
			MaxHits = 		1;
			
			FlinchTime =	0.4;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 7;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	13;
			BleedTime = 14;
			BleedTick = 1;
		};
		S2 = {
			SwingWait =		0.181818;
			SwingTime = 	0.136363636;
			DebounceTime = 	0.65;
			ComboEndTime = 	0.75;
			
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			
			ForceMulti =	1;
			
			CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;
			
			AnimSpeed = 	1;
			
			MaxHits = 		1;
			
			FlinchTime =	0.4;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 7;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	2;
			BleedTime = 10;
			BleedTick = 1;
		};
		S3 = {
			SwingWait =		0.181818;
			SwingTime = 	0.136363636;
			DebounceTime = 	0.85;
			ComboEndTime = 	0.25;
			
			DmgMulti = 		1.35;
			DmgMulti2 = 	2; -- 1.53030303030303
			
			ForceMulti =	1;
			
			CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;
			
			AnimSpeed = 	1.25;
			
			MaxHits = 		3;
			
			FlinchTime =	0.45;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 5;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	2;
			BleedTime = 10;
			BleedTick = 1;
		};
		
		E = {
			SwingWait =		0.47;
			SwingTime = 	0.35;
			DebounceTime = 	1;

			DmgMulti = 		1;
			DmgMulti2 = 	3;
			ForceMulti =	1;
			
			AnimSpeed = 	1;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 5;
			ForceUpVec = Vector3.new(0,1,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
			
			HealMulti = 0.5;
		};
	};
	
	SlashStages = 3;
	Damage = 4;
		PassoverMulti = 1.35;
	StaminaUsage = 1;
	BlockHitStrength = 3;
	
	Combo = {
		Enabled = false;
			OnePerson = true; -- Only on the same person
			KnockTime = 0;
	};
	
	Fatal = false;
	Sharp = true; -- for block hits etc
	
	RunIdle = false; -- play idle anim when running
	
	Customs = {};
	
	DCancelGuns = true;
	
	BreakSettings = {
		Enabled = true;
			CanBreak = true;
				BreakType = 	"Normal"; -- Normal,BoneBreak
				KillType = 		"Normal";
				BleedKill = 	false;
				ExplodeHead = 	false;

				Head = {
					BreakType = "Normal";
					Dmg = 2;
					BleedDmg = 	5;
					BleedTime = 6;
					BleedStep = 0;
				};
				LArm = {
					Dmg = 2;
					BleedDmg =  2;
					BleedTime = 6;
					BleedStep = 0;
				};
				RArm = {
					Dmg = 2;
					BleedDmg =  2;
					BleedTime = 6;
					BleedStep = 0;
				};
				LLeg = {
					Dmg = 2;
					BleedDmg =  2;
					BleedTime = 6;
					BleedStep = 0;
				};
				RLeg = {
					Dmg = 2;
					BleedDmg =  2;
					BleedTime = 6;
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
		Enabled = false; -- forever slowdown
			Amount 			= 0;
	};
	
	AttackSlowDown = {
		AntiSprint 		=	true;
		Enabled = true; -- forever slowdown
			Amount 			= -7.5;		
	};
	
	AntiJump =		false;
	AntiCrouch =	false;
	
	Blood = {
		Enabled = true; -- blood hit
		
		Enabled2 = true; -- main.
			A = { -- Main
				Amount = 		{4,0};
				Speed = 		105;
				Spread = 		{-15,15};
				Size = 			5; -- Pool Size
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

Katana.Blood.B.RepeatCount = Katana.Mains.S1.BleedTime / Katana.Mains.S1.BleedTick;
Katana.Blood.B.RepeatTick =	Katana.Mains.S1.BleedTick;

return Katana