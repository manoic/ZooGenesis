local Riot = 
{
	Handle = {"Tool","Handle"};
	
	EquipTime = 0.25;
		EquipAnimSpeed = 1;
	
	TrailEnabled = false;

	Mains = {
		S1 = {
			SwingWait =		0.3;
			SwingTime = 	0.35;
			DebounceTime = 	1.5;
			ComboEndTime = 	0.25;
			
			DmgMulti = 		1;
			DmgMulti2 = 	1;
			
			ForceMulti =	1;
			CanKnock = 		true;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 2;
				ConcussionEffect = { -- If KnockMode = "Head"
					Enabled = true;
					Time = 3;
					Multi = 0.25;
				};
			
			AnimSpeed = 	1;
			
			MaxHits = 		4;
			
			FlinchTime =	1;
			
			Hitter = 		{"Tool","Handle"};
			SoundPart = 	{"Tool","Handle"};
			
			Force = 10;
			ForceUpVec = Vector3.new(0,-1,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
		};
		
		E = {
			SwingWait =		1.1;
			SwingTime = 	0.35;
			DebounceTime = 	2.5;

			DmgMulti = 		1;
			DmgMulti2 = 	1;
			ForceMulti =	1;
			
			AnimSpeed = 	1;
			
			Hitter = 		{"Tool","Handle"};
			SoundPart = 	{"Tool","Handle"};
			
			Force = 8.5;
			ForceUpVec = Vector3.new(0,-1.5,0);
			
			BleedDmg =	0;
			BleedTime = 0;
			BleedTick = 0;
		};
	};
	
	SlashStages = 1;
	Damage = 70;
	StaminaUsage = 15;
	BlockHitStrength = 2;
	
	Combo = {
		Enabled = false;
			OnePerson = true; -- Only on the same person
			KnockTime = 0;
	};
	
	Fatal = false;
	Sharp = true; -- for block hits etc
	
	RunIdle = true; -- play idle anim when running
	
	Customs = {};
	
	BreakSettings = {
		Enabled = false;
			CanBreak = true;
				BreakType = 	"BoneBreak"; -- Normal,BoneBreak
				BleedKill = 	false;
				ExplodeHead = 	false;

				Head = {
					Dmg = 70;
					BleedDmg = 	0;
					BleedTime = 0;
					BleedStep = 0;
				};
				LArm = {
					Dmg = 200;
					BleedDmg = 	0;
					BleedTime = 0;
					BleedStep = 0;
				};
				RArm = {
					Dmg = 200;
					BleedDmg = 	0;
					BleedTime = 0;
					BleedStep = 0;
				};
				LLeg = {
					Dmg = 200;
					BleedDmg = 	0;
					BleedTime = 0;
					BleedStep = 0;
				};
				RLeg = {
					Dmg = 200;
					BleedDmg = 	0;
					BleedTime = 0;
					BleedStep = 0;
				};
	};
	
	ExecuteSettings = {
		Enabled 		= false;
		CanBreak 		= true;
		StaminaUsage 	= 35;
	};
	
	BlockSettings = {
		Enabled = 		true;
		Strength = 		2;
		SlowDown = 		2.5;
		StaminaUsage =	0.03;
		HitFlinchTime = 0.5;
			
		DebounceTime = 0.25;
			
		DontCancelOnHit = true;	
		HitStaminaUsage = 25;
			
		CanCharge = true;
	};
	
	CanClash = false;
		
	SlowDown = {
		AntiSprint 		=	true;
		Enabled = true; -- forever slowdown
			Amount 			= 3;
	};
	
	AttackSlowDown = {
		AntiSprint 		=	true;
		Enabled = true; -- forever slowdown
			Amount 			= -15;		
	};
	
	AntiJump =		false;
	AntiCrouch =	true;
	
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

Riot.Blood.B.RepeatCount =	Riot.Mains.S1.BleedTime / Riot.Mains.S1.BleedTick;
Riot.Blood.B.RepeatTick =	Riot.Mains.S1.BleedTick;

return Riot