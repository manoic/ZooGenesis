 










local FireAxe = 
{
	Handle = {"Tool","Handle"};
	
	EquipTime = 1;
		EquipAnimSpeed = 1;
	
	TrailEnabled = true;

	Mains = {
		S1 = {
			SwingWait =		0.73;
			SwingTime = 	0.3;
			DebounceTime = 	2.2;
			ComboEndTime = 	0.25;
				
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			
			ForceMulti =	1;
			CanKnock = 		true;
				KnockMode = "Head"; -- Default(all parts), Head(only head)
				KnockTime = 3;
				ConcussKnockMin = 0.59;
				ConcussionEffect = { -- If KnockMode = "Head"
					Enabled = true;
					Time = 3;
					Multi = 1.5;

					DoLimit = true;
					Limit_FadeTime = 1;
					Limit_Perc = 0.1;
				};
							
			AnimSpeed = 	1;
			
			MaxHits = 		3;
			
			FlinchTime =	0.65;
			
			Hitter = 		{"Tool","Handle"};
			SoundPart = 	{"Tool","Handle"};
			
			Force = 11;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	5;
			BleedTime = 5;
			BleedTick = 1;
		};
		
		E = {
			SwingWait =		1.4;
			SwingTime = 	0.5;
			DebounceTime = 	2.5;

			DmgMulti = 		1;
			DmgMulti2 = 	3;
			ForceMulti =	1;
			
			AnimSpeed = 	0.9;
			
			Hitter = 		{"Tool","Handle"};
			SoundPart = 	{"Tool","Handle"};
			
			Force = 9.5;
			ForceUpVec = Vector3.new(0,-1.5,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
			
			HealMulti = 0.6;
				
			ExplodeHead = true;
		};
	};
	
	SlashStages = 1;
	Damage = 70;
		PassoverMulti = 1.45;
		
	StaminaUsage = 15;
	
	Combo = {
		Enabled = false;
			OnePerson = true; -- Only on the same person
			KnockTime = 0;
	};
	
	Fatal = false;
	Sharp = true; -- for block hits etc
	
	RunIdle = true; -- play idle anim when running
		
		
	DCancelGuns = true;
	
	Customs = {
		["Infected_ExplodeHead"] = true;

		["DoorKick"] = {
			Range = 		5;
			SwingWait =		0.65;
			SwingTime =		0.3;
			DebounceTime =	1.5;
			AnimSpeed = 	1;
			StaminaUsage =	15;
			Damage =		55;
			Hitter = 		{"Tool","Handle"};
			WoodOnly = false;
			InvertedAnim = true;

			ForceMulti = 1.75;
			CustomHitType = "AxeHit";
			DontPlayHitSound = true;
		};
	};
	
	BreakSettings = {
		Enabled = true;
			CanBreak = true;
				BreakType = 	"BoneBreak"; -- Normal,BoneBreak
				KillType = 		"BoneBreak";
				BleedKill = 	false;
				ExplodeHead = 	false;

				Head = {
					Dmg = 125;
					BleedDmg = 	0;
					BleedTime = 0;
					BleedStep = 0;
				};
				LArm = {
					Dmg = 125;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
				RArm = {
					Dmg = 125;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
				LLeg = {
					Dmg = 125;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
				RLeg = {
					Dmg = 125;
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
		HitFlinchTime = 0.3;
	};
	
	CanClash = false;
		
	SlowDown = {
		AntiSprint 		=	false;
		Enabled = true; -- forever slowdown
			Amount 			= 2.35;
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
				Amount = 		{1,3};
				Speed = 		50;
				Spread = 		{-45,45};
				Size = 			5.5; -- Pool Size
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

FireAxe.Blood.B.RepeatCount = FireAxe.Mains.S1.BleedTime / FireAxe.Mains.S1.BleedTick;
FireAxe.Blood.B.RepeatTick =	FireAxe.Mains.S1.BleedTick;

return FireAxe