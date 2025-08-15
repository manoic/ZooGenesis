local Crowbar = 
{
		Handle = {"Tool","WeaponHandle"};
	
	EquipTime = 0.7;
		EquipAnimSpeed = 1;
	
	TrailEnabled = true;

	Mains = {
		S1 = {
			SwingWait =		0.385;
			SwingTime = 	0.25;
			DebounceTime = 	1.2;
			ComboEndTime = 	0.5;
			
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			
			ForceMulti =	1;
			CanKnock = 		true;
				KnockMode = "Head"; -- Default(all parts), Head(only head)
				KnockTime = 1.5;
				ConcussKnockMin = 0.6;
				ConcussionEffect = { -- If KnockMode = "Head"
					Enabled = true;
					Time = 1.5;
					Multi = 1.5;
					
					DoLimit = true;
					Limit_FadeTime = 1;
					Limit_Perc = 0.1;
				};
			
			AnimSpeed = 	1;
			
			MaxHits = 		2;
			
			FlinchTime =	0.5;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 4;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
		};
		S2 = {
			SwingWait =		0.385;
			SwingTime = 	0.25;
			DebounceTime = 	1.2;
			ComboEndTime = 	0.5;
			
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			
			ForceMulti =	1;
			CanKnock = 		true;
				KnockMode = "Head"; -- Default(all parts), Head(only head)
				KnockTime = 1.5;
				ConcussKnockMin = 0.6;
				ConcussionEffect = { -- If KnockMode = "Head"
					Enabled = true;
					Time = 1.5;
					Multi = 1.5;

					DoLimit = true;
					Limit_FadeTime = 1;
					Limit_Perc = 0.1;
				};
			
			AnimSpeed = 	1;
			
			MaxHits = 		2;
			
			FlinchTime =	0.5;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 5;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
		};
		
		E = {
			SwingWait =		0.55;
			SwingTime = 	0.35;
			DebounceTime = 	1;

			DmgMulti = 		1;
			DmgMulti2 = 	1;
			ForceMulti =	1;

			AnimSpeed = 	1;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 8.5;
			ForceUpVec = Vector3.new(0,-1.25,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
			
			HealMulti = 0.55;
		};
	};
	
	SlashStages = 2;
	Damage = 39;
	StaminaUsage = 9;
	BlockHitStrength = 2;
	
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
					Dmg = 45;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
				LArm = {
					Dmg = 85;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
				RArm = {
					Dmg = 85;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
				LLeg = {
					Dmg = 85;
					BleedDmg =  0;
					BleedTime = 0;
					BleedStep = 0;
				};
				RLeg = {
					Dmg = 85;
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
		Strength = 		2;
		SlowDown = 		10;
		StaminaUsage =	0.175;
		HitFlinchTime = 0.5;
	};
	
	CanClash = false;
		
	SlowDown = {
		AntiSprint 		=	false;
		Enabled = true; -- forever slowdown
			Amount 			= 1;
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
					Amount = 		{1,1};
					Speed = 		30;
					Spread = 		{-15,15};
					Size = 			1.35; -- Pool Size
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

Crowbar.Blood.B.RepeatCount =	Crowbar.Mains.S1.BleedTime / Crowbar.Mains.S1.BleedTick;
Crowbar.Blood.B.RepeatTick =	Crowbar.Mains.S1.BleedTick;

return Crowbar