	local Fists = 
{
	Handle = {"Char","Torso"};
	
	EquipTime = 0.3;
		EquipAnimSpeed = 1.15;
	
	TrailEnabled = false;
		
	ComboRequireBP = true;

		Mains = {
			S1 = {
				SwingWait =		0.05;
				SwingTime = 	0.15;
				DebounceTime = 	0.2;
				ComboEndTime = 	0.25;

				DmgMulti = 		1;
				DmgMulti2 = 	1;

				ForceMulti =	1;
				CanKnock = 		true;
				KnockMode = "Head"; -- Default(all parts), Head(only head)
				KnockTime = 2;
				ConcussionEffect = { -- If KnockMode = "Head"
					Enabled = true;
					Time = 2.5;
					Multi = 2;
				};

				AnimSpeed = 	2;

				MaxHits = 		10;

				FlinchTime =	0.2;

				Hitter = 		{"Char","Left Arm"};
				SoundPart = 	{"Char","Left Arm"};

				Force = 10;
				ForceUpVec = Vector3.new(0,1.25,0);

				BleedDmg =	0;
				BleedTime = 0;
				BleedTick = 0;
			};
			S2 = {
				SwingWait =		0.125;
				SwingTime = 	0.075;
				DebounceTime = 	0.2;
				ComboEndTime = 	0.25;

				DmgMulti = 		1;
				DmgMulti2 = 	1;

				ForceMulti =	1;
				CanKnock = 		true;
				KnockMode = "Head"; -- Default(all parts), Head(only head)
				KnockTime = 2;
				ConcussionEffect = { -- If KnockMode = "Head"
					Enabled = true;
					Time = 2.5;
					Multi = 2;
				};

				AnimSpeed = 	2;

				MaxHits = 		1;

				FlinchTime =	0.2;

				Hitter = 		{"Char","Right Arm"};
				SoundPart = 	{"Char","Right Arm"};

				Force = 10;
				ForceUpVec = Vector3.new(0,1.25,0);

				BleedDmg =	0;
				BleedTime = 0;
				BleedTick = 0;
			};
			S3 = {
				SwingWait =		0.125;
				SwingTime = 	0.075;
				DebounceTime = 	0.25;
				ComboEndTime = 	0.25;

				DmgMulti = 		1.35;
				DmgMulti2 = 	1;

				ForceMulti =	1.5;
				CanKnock = 		false;
				KnockMode = "Normal"; -- Default(all parts), Head(only head)
				KnockTime = 0.2;

				AnimSpeed = 	2;

				MaxHits = 		10;

				FlinchTime =	0.3;

				Hitter = 		{"Char","Left Arm"};
				SoundPart = 	{"Char","Left Arm"};

				Force = 10;
				ForceUpVec = Vector3.new(0,1.25,0);

				BleedDmg =	0;
				BleedTime = 0;
				BleedTick = 0;
			};

			E = {
				SwingWait =		0.25;
				SwingTime = 	0.6;
				DebounceTime = 	0.8333333;

				DmgMulti = 		1000;
				DmgMulti2 = 	2000;
				ForceMulti =	1;

				AnimSpeed = 	3;

				Hitter = 		{"Char","Right Leg"};
				SoundPart = 	{"Char","Torso"};

				Force = 5;
				ForceUpVec = Vector3.new(0,2,0);

				BleedDmg =	0;
				BleedTime = 0;
				BleedTick = 0;

				HealMulti = 1;
			};
	};
	
	SlashStages = 3;
	Damage = 40;
		DownedMulti = 0.5;
		NoPassover = true;
	StaminaUsage = -5;
	BlockHitStrength = 100;
	
	M3HitCombo = true;
	
	Combo = {
		Enabled = true;
			OnePerson = false; -- Only on the same person
			KnockTime = 0.75;
			Multi = 1.35;
			ForceMulti = 1.5;
	};
	
	Fatal = false;
	Sharp = false; -- for block hits etc
	
	RunIdle = true; -- play idle anim when running
	
	DCancelGuns = true;
	
	Customs = {
		["Pickup"] = 
			{
				GrabStaminaUsage = 15;
				ThrowStaminaUsage = 25;
			};
		["DoorKick"] = {
			Range = 		3.5;
			SwingWait =		0.4;
			SwingTime =		0.2;
			DebounceTime =	1;
			StaminaUsage =	5;
			Damage =		120;		
			Hitter = 		{"Char","Right Leg"};

			ForceMulti = 1;
		};
		
		["RegisterHit"] = {
			Range = 		2.5;
			SwingWait =		2;
			SwingTime =		0.7;
			DebounceTime =	3;
			StaminaUsage =	35;
			Damage =		20;		
			Hitter = 		{"Char","Right Arm"};
			
			BreakType = 1;
			
			ForceMulti = 1;
		};
			
		["VendingHit"] = {
			Range = 		3.5;
			SwingWait =		0.4;
			SwingTime =		0.2;
			DebounceTime =	1;
			StaminaUsage =	5;
			Damage =		13;			
			Hitter = 		{"Char","Right Leg"};

			ForceMulti = 1;
		};
		
		["Revive"] = {
			Time = 10;
			AnimSpeed = 1;
		};
		
		["LTNM"] = true;
			
		["Snowball"] = {
		AnimSpeed = 2;
		Time = 1;
		StaminaUsage = 15;
		}
	};
		
		
	BreakSettings = {
		Enabled = true;
			CanBreak = true;
				BreakType = 	"BoneBreak"; -- Normal,BoneBreak
				BleedKill = 	false;
				ExplodeHead = 	false;

			Head = {
				Dmg = 101;
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
		CanBreak 		= false;
		StaminaUsage 	= 5;
	};
	
	BlockSettings = {
		Enabled = 		true;
		Strength = 		100;
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
			Amount 			= -2;		
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

if game:GetService("ReplicatedStorage").Values.LegacyDowningSystem.Value then
	Fists.Customs.Revive = nil
end

return Fists