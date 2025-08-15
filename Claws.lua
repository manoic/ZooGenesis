

local Claws = {
	Handle = { "Char", "Torso" }, 
	EquipTime = 0.45, 
	EquipAnimSpeed = 1, 
	TrailEnabled = false, 
	ComboRequireBP = true, 
	Mains = {
		S1 = {
			SwingWait = 0.21, 
			SwingTime = 0.115, 
			DebounceTime = 0.55, 
			ComboEndTime = 0.25, 
			DmgMulti = 1, 
			DmgMulti2 = 1, 
			ForceMulti = 1, 
			CanKnock = false, 
			KnockMode = "Default", 
			KnockTime = 0, 
			AnimSpeed = 1, 
			MaxHits = 1, 
			FlinchTime = 1, 
			Hitter = { "Char", "RightClaw" }, 
			SoundPart = { "Char", "RightClaw" }, 
			Force = 6, 
			ForceUpVec = Vector3.new(0, 1.25, 0), 
			BleedDmg = 20, 
			BleedTime = 10, 
			BleedTick = 1,
		}, 
		S2 = {
			SwingWait = 0.21, 
			SwingTime = 0.115, 
			DebounceTime = 0.55, 
			ComboEndTime = 0.25, 
			DmgMulti = 1, 
			DmgMulti2 = 1, 
			ForceMulti = 1, 
			CanKnock = false, 
			KnockMode = "Default", 
			KnockTime = 0, 
			AnimSpeed = 1., 
			MaxHits = 1, 
			FlinchTime = 1, 
			Hitter = { "Char", "LeftClaw" }, 
			SoundPart = { "Char", "LeftClaw" }, 
			Force = 6, 
			ForceUpVec = Vector3.new(0, 1.25, 0), 
			BleedDmg = 20, 
			BleedTime = 10, 
			BleedTick = 1,
		}, 
		E = {
			SwingWait = 0.12, 
			SwingTime = 0.4, 
			DebounceTime = 2.5, 
			DmgMulti = 1, 
			DmgMulti2 = 1, 
			ForceMulti = 1, 
			AnimSpeed = 1, 
			Hitter = { "Char", "RightClaw" }, 
			SoundPart = { "Char", "Torso" }, 
			Force = 3, 
			ForceUpVec = Vector3.new(0, -1.5, 0), 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedTick = 0, 
			HealMulti = 0.45
		}
	}, 
	SlashStages = 2, 
	Damage = 34, 
	DownedMulti = 0.5, 
	NoPassover = true, 
	StaminaUsage = 8, 
	BlockHitStrength = 1, 
	Fatal = false, 
	Sharp = true ,
	RunIdle = true, 
	DCancelGuns = false, 
	Customs = {
		DoorKick = {
			Range = 3.5, 
			SwingWait = 0.21, 
			SwingTime = 0.115, 
			DebounceTime = 1, 
			StaminaUsage = 5, 
			Damage = 34, 
			Hitter = { "Char", "RightClaw" }, 
			ForceMulti = 1
		},
		Pickup = {
			GrabStaminaUsage = 15, 
			ThrowStaminaUsage = 25
		}, 
		NoFinishSpeedMulti = true
	}, 
	Combo = {
		Enabled = false, 
		OnePerson = true, 
		KnockTime = 0,
		Multi = 1.35, 
		ForceMulti = 1.5,
	}, 
	BreakSettings = {
		Enabled = true, 
		CanBreak = true, 
		BreakType = "Normal", 
		KillType = "Normal",
		BleedKill = false, 
		ExplodeHead = false, 
		Head = {
			Dmg = 55, 
			CantBreak = true, 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedStep = 0
		}, 
		LArm = {
			Dmg = 55, 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedStep = 0
		}, 
		RArm = {
			Dmg = 55, 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedStep = 0
		}, 
		LLeg = {
			Dmg = 55, 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedStep = 0
		}, 
		RLeg = {
			Dmg = 55, 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedStep = 0
		}
	}, 
	ExecuteSettings = {
		Enabled = true, 
		CanBreak = false, 
		StaminaUsage = 10
	}, 
	BlockSettings = {
		Enabled = true, 
		Strength = 6, 
		SlowDown = 10, 
		StaminaUsage = 0.175, 
		HitFlinchTime = 0.5
	}, 
	CanClash = false, 
	SlowDown = {
		AntiSprint = false, 
		Enabled = false, 
		Amount = 0
	}, 
	AttackSlowDown = {
		AntiSprint = false, 
		Enabled = false, 
		Amount = 0
	}, 
	AntiJump = false, 
	AntiCrouch = false, 
	Blood = {
		Enabled = true, 
		Enabled2 = false, 
		A = {
			Amount = { 2, 4 }, 
			Speed = 100, 
			Spread = { -15, 15 }, 
			Size = 1.75, 
			WidthScale = 1.5, 
			UpVector = Vector3.new(0, -5, 0), 
			RepeatCount = 1, 
			RepeatTick = 0, 
			MaxYAngle = 50
		}, 
		B = {
			Amount = { 1, 1 }, 
			Speed = 5, 
			Spread = { -30, 30 }, 
			Size = 1, 
			WidthScale = 0.5, 
			UpVector = Vector3.new(0, 7.5, 0), 
			RepeatCount = 5, 
			RepeatTick = 0.5, 
			MaxYAngle = nil
		}
	}, 
	MMAG = 10
};
return Claws
