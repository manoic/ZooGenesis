local Chainsaw = 
{
		Handle = {"Tool","WeaponHandle"};
	
	EquipTime = 1;
		EquipAnimSpeed = 1;
	
	TrailEnabled = false;

	Mains = {
		S1 = {
			SwingWait =		0.2;
			SwingTime = 	1.65;
			DebounceTime = 	3;
			ComboEndTime = 	0.25;
			
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			
			ForceMulti =	1;
			CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;
			
			AnimSpeed = 	1;
			
			MaxHits = 		10;
			
			FlinchTime =	0.6;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 1.5;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	5;
			BleedTime = 10;
			BleedTick = 0.5;
		};
		
		E = {
			SwingWait =		0.5;
			SwingTime = 	0.5;
			DebounceTime = 	1.3;

			DmgMulti = 		1;
			DmgMulti2 = 	5;
			ForceMulti =	1;

			AnimSpeed = 	1;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 1.5;
			ForceUpVec = Vector3.new(0,-1.25,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
			
			HealMulti = 0.7;
		};
	};
	
	SlashStages = 1;
	Damage = 26;
		DownedMulti = 0.75;
	StaminaUsage = 35;
	BlockHitStrength = 10;
	
	DCancelGuns = true;
	
	Combo = {
		Enabled = false;
			OnePerson = true; -- Only on the same person
			KnockTime = 0;
	};
	
	MultipleHits = {
		Enabled = true;
		DB = 0.15;
	};
	
	Fatal = false;
	Sharp = true; -- for block hits etc
	
	RunIdle = true; -- play idle anim when running
	
	Customs = {
		["DoorKick"] = {
			Range = 		4;
			SwingWait =		0.75;
			SwingTime =		0.25;
			DebounceTime =	1.6;
			StaminaUsage =	15;
			Damage =		105;
			Hitter = 		{"Tool","HHandle"};
			WoodOnly = true;
			AnimSpeed = 	1.5;

			ForceMulti = 0.5;
			CustomHitType = "AxeHit";
			DontPlayHitSound = true;
		}	
	};
	
	BreakSettings = {
		Enabled = true;
			CanBreak = true;
				BreakType = 	"Normal"; -- Normal,BoneBreak
				KillType = 		"Normal";
				BleedKill = 	false;
				ExplodeHead = 	false;

				Head = {
					Dmg = 37;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
				LArm = {
					Dmg = 37;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
				RArm = {
					Dmg = 37;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
				LLeg = {
					Dmg = 37;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
				RLeg = {
					Dmg = 37;
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
		HitFlinchTime = 0.75;
	};
	
	CanClash = false;
		
	SlowDown = {
		AntiSprint 		=	false;
		Enabled = true; -- forever slowdown
			Amount 			= 2.5;
	};
	
	AttackSlowDown = {
		AntiSprint 		=	true;
		Enabled = true; -- slowdown
			Amount 			= -10;		
	};
	
	AntiJump =		false;
		JReduction = 10;
	AntiCrouch =	false;
	
	Blood = {
		Enabled = true; -- blood hit
		
		Enabled2 = true; -- main.
			A = { -- Main
				Amount = 		{3,6};
				Speed = 		75;
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

Chainsaw.Blood.B.RepeatCount =	Chainsaw.Mains.S1.BleedTime / Chainsaw.Mains.S1.BleedTick ;
Chainsaw.Blood.B.RepeatTick =	Chainsaw.Mains.S1.BleedTick;

return Chainsaw