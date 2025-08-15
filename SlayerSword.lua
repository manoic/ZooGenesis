local Slayer = 
{
	Handle = {"Tool","Handle"};
	
	EquipTime = 1;
		EquipAnimSpeed = 0.65;
	
	TrailEnabled = true;

	Mains = {
		S1 = {
			SwingWait =		0.4;
			SwingTime = 	0.3;
			DebounceTime = 	1.5;
			ComboEndTime = 	0.25;
			
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			
			ForceMulti =	1;
				CanKnock = 		true;
				KnockMode = "Head"; -- Default(all parts), Head(only head)
				KnockTime = 1;
				ConcussKnockMin = 0.3;
				ConcussionEffect = { -- If KnockMode = "Head"
					Enabled = true;
					Time = 1;
					Multi = 1.25;
				};
			
			AnimSpeed = 	1;
			
			MaxHits = 		10;
			
			FlinchTime =	1;
			
			Hitter = 		{"Tool","Handle"};
			SoundPart = 	{"Tool","Handle"};
			
			Force = 15;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	10;
			BleedTime = 5;
			BleedTick = 1;
		};
		
		E = {
			SwingWait =		1.05;
			SwingTime = 	0.5;
			DebounceTime = 	2.5;

			DmgMulti = 		1;
			DmgMulti2 = 	3;
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
	Damage = 170;
	
	StaminaUsage = 22.5;
	BlockHitStrength = 10;
		
	DCancelGuns = true;
		
	Combo = {
		Enabled = false;
			OnePerson = true; -- Only on the same person
			KnockTime = 0;
	};
	
	MultipleHits = {
		Enabled = false;
		DB = 0;
	};
	
	Fatal = false;
	Sharp = true; -- for block hits etc
	
	RunIdle = true; -- play idle anim when running
	
	Customs = {
		["DoorKick"] = {
			Range = 		4;
			SwingWait =		0.7;
			SwingTime =		0.25;
			DebounceTime =	1.5;
			StaminaUsage =	15;
			Damage =		150;
			Hitter = 		{"Tool","Handle"};
			WoodOnly = false;

			ForceMulti = 1.5;
			CustomHitType = "AxeHit";
			DontPlayHitSound = true;
		};
			
		["SlayersFinishFull"] = {
			Radius = 100;
			Time = 1.5;
			DPS = 40;
			
			LimbDmgMin = 60;
			LimbDmgMax = 150;
				
			ConcussionEffect = { -- If KnockMode = "Head"
				Enabled = true;
				Time = 3;
				Multi = 0.2;
				DoLimit = true;
				Limit_FadeTime = 1.5;
				Limit_Perc = 0.1;
			};
				
			Rage_Enabled = true;
			Rage_LastTime = 10;
			Rage_Speed_Perc = 1;
			Rage_HP_Perc = 0.7;
		};
			
		["SlayersFinishStart"] = {
		
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
					Dmg = 161;
					BleedDmg = 	0;
					BleedTime = 0;
					BleedStep = 0;
				};
				LArm = {
					Dmg = 161;
					BleedDmg = 	0;
					BleedTime = 0;
					BleedStep = 0;
				};
				RArm = {
					Dmg = 161;
					BleedDmg = 	0;
					BleedTime = 0;
					BleedStep = 0;
				};
				LLeg = {
					Dmg = 161;
					BleedDmg = 	0;
					BleedTime = 0;
					BleedStep = 0;
				};
				RLeg = {
					Dmg = 161;
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
		Strength = 		3;
		SlowDown = 		10;
		StaminaUsage =	0.075;
		HitFlinchTime = 2;
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
				Amount = 		{5,10};
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
	
	MMAG = 10;
}

Slayer.Blood.B.RepeatCount =	Slayer.Mains.S1.BleedTime / Slayer.Mains.S1.BleedTick ;
Slayer.Blood.B.RepeatTick =	Slayer.Mains.S1.BleedTick;

return Slayer