local Fists = 
	{
		Handle = {"Char","Torso"};

		EquipTime = 0.35;
		EquipAnimSpeed = 1;

		TrailEnabled = false;

		Mains = {
			S1 = {
				SwingWait =		0.2475;
				SwingTime = 	0.165;
				DebounceTime = 	0.6;
				ComboEndTime = 	0.5;

				DmgMulti = 		1;
				DmgMulti2 = 	1;

				ForceMulti =	1;
				CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;

				AnimSpeed = 	1.137;

				MaxHits = 		1;

				FlinchTime =	0.1;

				Hitter = 		{"Char","Left Arm"};
				SoundPart = 	{"Char","Left Arm"};

				Force = 4.5;
				ForceUpVec = Vector3.new(0,1.25,0);

				BleedDmg =	0;
				BleedTime = 0;
				BleedTick = 0;
			};
			S2 = {
				SwingWait =		0.2475;
				SwingTime = 	0.165;
				DebounceTime = 0.6;
				ComboEndTime = 	0.5;

				DmgMulti = 		1;
				DmgMulti2 = 	1;

				ForceMulti =	1;
				CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;

				AnimSpeed = 	1.137;

				MaxHits = 		1;

				FlinchTime =	0.1;

				Hitter = 		{"Char","Right Arm"};
				SoundPart = 	{"Char","Right Arm"};

				Force = 4.5;
				ForceUpVec = Vector3.new(0,1.25,0);

				BleedDmg =	0;
				BleedTime = 0;
				BleedTick = 0;
			};

			E = {
				SwingWait =		0.8;
				SwingTime = 	0.5;
				DebounceTime = 	2.5;

				DmgMulti = 		1;
				DmgMulti2 = 	1;
				ForceMulti =	1;

				AnimSpeed = 	1;

				Hitter = 		{"Char","Right Leg"};
				SoundPart = 	{"Char","Torso"};

				Force = 2.5;
				ForceUpVec = Vector3.new(0,-1.5,0);

				BleedDmg =	0;
				BleedTime = 0;
				BleedTick = 0;
			};
		};

		SlashStages = 2;
		Damage = 52;
		StaminaUsage = 7;
		BlockHitStrength = 1;

		Combo = {
			Enabled = false;
			OnePerson = true; -- Only on the same person
			KnockTime = 0.75;
			Multi = 1.35;
			ForceMulti = 2;
		};

		Fatal = false;
		Sharp = false; -- for block hits etc

		RunIdle = true; -- play idle anim when running

		DCancelGuns = true;

		Customs = {
			["PoisonCharges"] = {
				Scream = true;
				StartCharges = 10000;
				InstantStart = true;
				ShowInPosions = true;
				FinishCharges = 0;
			};	
			["DoorKick"] = {
				Range = 		3.5;
				SwingWait =		0.4;
				SwingTime =		0.2;
				DebounceTime =	1;
				StaminaUsage =	5;
				Damage =		21;		
				Hitter = 		{"Char","Right Leg"};
				KickUnlocked = true;

				ForceMulti = 1;
			};
		};


		BreakSettings = {
			Enabled = false;
			CanBreak = false;
			BreakType = 	"Normal"; -- Normal,BoneBreak
			BleedKill = 	false;
			ExplodeHead = 	false;

			Head = {
				Dmg = 85;
				BleedDmg = 	0;
				BleedTime = 0;
				BleedStep = 0;
			};
			LArm = {
				Dmg = 60;
				BleedDmg =  0;
				BleedTime = 0;
				BleedStep = 0;
			};
			RArm = {
				Dmg = 40;
				BleedDmg =  0;
				BleedTime = 0;
				BleedStep = 0;
			};
			LLeg = {
				Dmg = 60;
				BleedDmg =  0;
				BleedTime = 0;
				BleedStep = 0;
			};
			RLeg = {
				Dmg = 60;
				BleedDmg =  0;
				BleedTime = 0;
				BleedStep = 0;
			};
		};

		ExecuteSettings = {
			Enabled 		= true;
			CanBreak 		= false;
			StaminaUsage 	= 35;
		};

		BlockSettings = {
			Enabled = 		false;
			Strength = 		1;
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
				Size = 			1.75; -- Pool Size
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

return Fists