local Rambo = 
	{
		Handle = {"Tool","WeaponHandle"};

		EquipTime = 0.75;
		EquipAnimSpeed = 0.9;

		TrailEnabled = true;

		Mains = {
			S1 = {
				SwingWait =		0.222222222;
				SwingTime = 	0.16666666667;
				DebounceTime = 	1.5;
				ComboEndTime = 	0.7;

				DmgMulti = 		1;
				DmgMulti2 = 	1;

				ForceMulti =	1;
				CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;

				AnimSpeed = 	0.9;

				MaxHits = 		1;

				FlinchTime =	0.5;

				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};

				Force = 4;
				ForceUpVec = Vector3.new(0,1.25,0);

				BleedDmg =	10;
				BleedTime = 7.5;
				BleedTick = 0.5;
			};

			E = {
				SwingWait =		0.55;
				SwingTime = 	0.35;
				DebounceTime = 	1.2;

				DmgMulti = 		1;
				DmgMulti2 = 	1;
				ForceMulti =	1;

				AnimSpeed = 	1;

				Hitter = 		{"Tool","WeaponHandle"};
				SoundPart = 	{"Tool","WeaponHandle"};

				Force = 3.5;
				ForceUpVec = Vector3.new(0,0,0);

				BleedDmg =	0;
				BleedTime = 0;
				BleedTick = 0;

				HealMulti = 0.65;
			};
		};

		SlashStages = 1;
		Damage = 33;
		PassoverMulti = 2;

		StaminaUsage = 5;
		BlockHitStrength = 2;

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

			["PoisonCharges"] = {
				Scream = true;
				StartCharges = 2;

				FinishCharges = 1;
			};

			CurseFinish = {
				Radius = 100;
				Time = 3;
				DPS = 25;
			};

			["NoFinishSpeedMulti"] = true;
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
				Dmg = 34;
				BleedDmg =  0;
				BleedTime = 0;
				BleedStep = 0;
			};
			RArm = {
				Dmg = 34;
				BleedDmg =  0;
				BleedTime = 0;
				BleedStep = 0;
			};
			LLeg = {
				Dmg = 34;
				BleedDmg =  0;
				BleedTime = 0;
				BleedStep = 0;
			};
			RLeg = {
				Dmg = 34;
				BleedDmg =  0;
				BleedTime = 0;
				BleedStep = 0;
			};
		};

		ExecuteSettings = {
			Enabled 		= true;
			CanBreak 		= false;
			StaminaUsage 	= 10;
		};

		BlockSettings = {
			Enabled = 		false;
			Strength = 		2;
			SlowDown = 		10;
			StaminaUsage =	0.175;
			HitFlinchTime = 0.75;
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
			Enabled = true; -- blood hit

			Enabled2 = true; -- main.
			A = { -- Main
				Amount = 		{3,7};
				Speed = 		65;
				Spread = 		{-15,15};
				Size = 			4; -- Pool Size
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
				Size = 			1.15; -- Pool Size
				WidthScale =	0.5;
				UpVector = 		Vector3.new(0,7.5,0);
				RepeatCount =	5; -- Amount of times to do
				RepeatTick =	0.5; -- Wait time between ticks
				MaxYAngle =		nil;
			};
		};

		MMAG = 10;
	}

return Rambo