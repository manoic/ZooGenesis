local Fists = 
	{
		Handle = {"Char","Torso"};

		EquipTime = 0.1;
		EquipAnimSpeed = 1;

		TrailEnabled = false;

		Mains = {
			S1 = {
				SwingWait =		0.135;
				SwingTime = 		0.09;
				DebounceTime = 	0.3;
				ComboEndTime = 	0.5;

				DmgMulti = 		1;
				DmgMulti2 = 	1;

				ForceMulti =	1;
				CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;

				AnimSpeed = 	2.08;

				MaxHits = 		1;

				FlinchTime =	0.4;

				Hitter = 		{"Char","Left Arm"};
				SoundPart = 	{"Char","Left Arm"};

				Force = 10;
				ForceUpVec = Vector3.new(0,1.25,0);

				BleedDmg =	20;
				BleedTime = 2;
				BleedTick = 0.1;
			};
			S2 = {
				SwingWait =		0.135;
				SwingTime = 		0.09;
				DebounceTime = 	0.3;
				ComboEndTime = 	0.5;

				DmgMulti = 		1;
				DmgMulti2 = 	1;

				ForceMulti =	1;
				CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;

				AnimSpeed = 	2.08;

				MaxHits = 		1;

				FlinchTime =	0.4;

				Hitter = 	{"Char","Right Arm"};
				SoundPart = 	{"Char","Right Arm"};

				Force = 10;
				ForceUpVec = Vector3.new(0,1.25,0);

				BleedDmg =	20;
				BleedTime = 2;
				BleedTick = 0.1;
			};

			S3 = {
				SwingWait =		0.135;
				SwingTime = 		0.09;
				DebounceTime = 	0.45;
				ComboEndTime = 	0.5;

				DmgMulti = 		1;
				DmgMulti2 = 	1;

				ForceMulti =	1;
				CanKnock = 		false;
				KnockMode = "Default"; -- Default(all parts), Head(only head)
				KnockTime = 0;

				AnimSpeed = 	2.08;

				MaxHits = 		1;

				FlinchTime =	 0.4;

				Hitter = 	{"Char","Left Arm"};
				SoundPart = 	{"Char","Left Arm"};

				Force = 10;
				ForceUpVec = Vector3.new(0,1.25,0);

				BleedDmg =	20;
				BleedTime = 2;
				BleedTick = 0.1;
			};

			E = {
				SwingWait =		1.1;
				SwingTime = 	0.3;
				DebounceTime = 	2.5;

				DmgMulti = 		1;
				DmgMulti2 = 	1;
				ForceMulti =	1;

				AnimSpeed = 	1;

				Hitter = 	{"Char","Right Leg"};
				SoundPart = 	{"Char","Torso"};

				Force = 2.5;
				ForceUpVec = Vector3.new(0,-1.5,0);

				BleedDmg =	0;
				BleedTime = 0;
				BleedTick = 0;
			};
		};

		SlashStages = 3;
		Damage = 37;
		StaminaUsage = 2;
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
			};	FinishCharges = 0;
			["DoorKick"] = {
				Range = 		3.5;
				SwingWait =		0.4;
				SwingTime =		0.2;
				DebounceTime =	1;
				StaminaUsage =	5;
				Damage =		21;		
				Hitter = 	{"Char","Right Leg"};
				KickUnlocked = true;

				ForceMulti = 1;
			};
		};

		BreakSettings = {
			Enabled = true;
			CanBreak = true;
			BreakType = 	"Normal"; -- Normal,BoneBreak
			KillType = 	"Normal";
			BleedKill = 	false;
			ExplodeHead =false;

			Head = {
				BreakType = "Normal";
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
			Enabled 		= false;
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
			AntiSprint 		=	false;
			Enabled = true; -- forever slowdown
			Amount 			= -5;		
		};

		AntiJump =		false;
		AntiCrouch =	false;

		Blood = {
			Enabled = true; -- blood hit

			Enabled2 = true; -- main.
			A = { -- Main
				Amount = 		{7,14};
				Speed = 		65;
				Spread = 		{-15,15};
				Size = 			6; -- Pool Size
				WidthScale =	2;
				UpVector = 		Vector3.new(0,-5,0);
				RepeatCount =	1; -- Amount of times to do
				RepeatTick =	0; -- Wait time between ticks
				MaxYAngle =		50;
			};
			B = { -- Bleed out effect
				Amount = 		{1,1};
				Speed = 		5;
				Spread = 		{-20,20};
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

return Fists