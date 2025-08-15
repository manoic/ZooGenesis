local FireAxe = 
{
		Handle = {"Tool","WeaponHandle"};
	
	EquipTime = 1;
		EquipAnimSpeed = 1;
	
	TrailEnabled = true;

	Mains = {
		S1 = {
			SwingWait =		0.6825;
			SwingTime = 	0.1875;
			DebounceTime = 	1.6;
			ComboEndTime = 	0.25;
				
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			
			ForceMulti =	1;
			CanKnock = 		true;
				KnockMode = "Head"; -- Default(all parts), Head(only head)
				KnockTime = 1.5;
				ConcussKnockMin = 0.6;
				ConcussionEffect = { -- If KnockMode = "Head"
					Enabled = true;
					Time = 2;
					Multi = 1.5;

					DoLimit = true;
					Limit_FadeTime = 0.5;
					Limit_Perc = 0.1;
				};
							
			AnimSpeed = 	1;
			
			MaxHits = 		1;
			
			FlinchTime =	0.65;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 8.5;
			ForceUpVec = Vector3.new(0,1.25,0);
			
			BleedDmg =	15;
			BleedTime = 10;
			BleedTick = 1;
		};
		
		E = {
			SwingWait =		0.6;
			SwingTime = 	0.5;
			DebounceTime = 	1.3;

			DmgMulti = 		1;
			DmgMulti2 = 	3;
			ForceMulti =	1;
			
			AnimSpeed = 	1;
			
				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};
			
			Force = 9.5;
			ForceUpVec = Vector3.new(0,-1.5,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
			
			HealMulti = 0.6;
		};
	};
	
	SlashStages = 1;
	Damage = 55;
		PassoverMulti = 1.45;
		
	StaminaUsage = 11;
	
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
		["DoorKick"] = {
			Range = 		4;
			SwingWait =		0.7;
			SwingTime =		0.25;
			DebounceTime =	1.5;
			StaminaUsage =	15;
			Damage =		70;
				Hitter = 		{"Tool","WeaponHandle"};
			WoodOnly = true;
			
			ForceMulti = 1.5;
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
				ExplodeHead = 	true;

				Head = {
					Dmg = 115;
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
		Enabled = 		false;
		Strength = 		4;
		SlowDown = 		10;
		StaminaUsage =	0.175;
		HitFlinchTime = 1;
	};
	
	CanClash = false;
		
	SlowDown = {
		AntiSprint 		=	false;
		Enabled = true; -- forever slowdown
			Amount 			= 2;
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
				Amount = 		{4,6};
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