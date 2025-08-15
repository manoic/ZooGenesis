return {
	Handle = { "Char", "Torso" }, 
	EquipTime = 0.35, 
	EquipAnimSpeed = 1, 
	TrailEnabled = false, 
	Mains = {
		S1 = {
			SwingWait = 0.3, 
			SwingTime = 0.2, 
			DebounceTime = 1, 
			ComboEndTime = 1.5, 
			DmgMulti = 1, 
			DmgMulti2 = 1, 
			ForceMulti = 1, 
			CanKnock = true, 
			KnockMode = "Default", 
			KnockTime = 3, 
			ConcussKnockMin = 0.1, 
			ConcussionEffect = {
				Enabled = true, 
				Time = 3.5, 
				Multi = 1, 
				DoLimit = true, 
				Limit_FadeTime = 1, 
				Limit_Perc = 0.1
			}, 
			AnimSpeed = 1, 
			MaxHits = 10, 
			FlinchTime = 0.5, 
			Hitter = { "Char", "Left Arm" }, 
			SoundPart = { "Char", "Head" }, 
			Force = 15, 
			ForceUpVec = Vector3.new(0, 2, 0), 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedTick = 0
		}, 
		S2 = {
			SwingWait = 0.3, 
			SwingTime = 0.2, 
			DebounceTime = 1, 
			ComboEndTime = 1.5, 
			DmgMulti = 1, 
			DmgMulti2 = 1, 
			ForceMulti = 1, 
			CanKnock = true, 
			KnockMode = "Default", 
			KnockTime = 3.5, 
			ConcussKnockMin = 0.1, 
			ConcussionEffect = {
				Enabled = true, 
				Time = 3, 
				Multi = 1, 
				DoLimit = true, 
				Limit_FadeTime = 1, 
				Limit_Perc = 0.1
			}, 
			AnimSpeed = 1, 
			MaxHits = 10, 
			FlinchTime = 0.5, 
			Hitter = { "Char", "Right Arm" }, 
			SoundPart = { "Char", "Head" }, 
			Force = 15, 
			ForceUpVec = Vector3.new(0, 2, 0), 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedTick = 0
		}, 
		E = {
			SwingWait = 1.1, 
			SwingTime = 0.3, 
			DebounceTime = 2.5, 
			DmgMulti = 1, 
			DmgMulti2 = 1, 
			ForceMulti = 1, 
			AnimSpeed = 1, 
			Hitter = { "Char", "Right Leg" }, 
			SoundPart = { "Char", "Torso" }, 
			Force = 2.5, 
			ForceUpVec = Vector3.new(0, -1.5, 0), 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedTick = 0
		}
	}, 
	SlashStages = 2, 
	Damage = 79, 
	StaminaUsage = 12, 
	BlockHitStrength = 1, 
	Combo = {
		Enabled = false, 
		OnePerson = true, 
		KnockTime = 0.75, 
		Multi = 1.35, 
		ForceMulti = 2
	}, 
	Fatal = false, 
	Sharp = false, 
	RunIdle = true, 
	DCancelGuns = true, 
	Customs = {
		DoorKick = {
			Range = 3.5, 
			SwingWait = 0.4, 
			SwingTime = 0.2, 
			DebounceTime = 1, 
			StaminaUsage = 5, 
			Damage = 101, 
			Hitter = { "Char", "Right Leg" }, 
			KickUnlocked = true, 
			ForceMulti = 3
		}, 
		HitScream = true
	}, 
	BreakSettings = {
		Enabled = false, 
		CanBreak = true, 
		BreakType = "BoneBreak", 
		BleedKill = false, 
		ExplodeHead = true, 
		Head = {
			Dmg = 150, 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedStep = 0
		}, 
		LArm = {
			Dmg = 150, 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedStep = 0
		}, 
		RArm = {
			Dmg = 150, 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedStep = 0
		}, 
		LLeg = {
			Dmg = 150, 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedStep = 0
		}, 
		RLeg = {
			Dmg = 150, 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedStep = 0
		}
	}, 
	ExecuteSettings = {
		Enabled = false, 
		CanBreak = false, 
		StaminaUsage = 35
	}, 
	BlockSettings = {
		Enabled = false, 
		Strength = 1, 
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
		AntiSprint = true, 
		Enabled = true, 
		Amount = -5
	}, 
	AntiJump = false, 
	AntiCrouch = false, 
	Blood = {
		Enabled = true, 
		Enabled2 = true, 
		A = {
			Amount = { 8, 16 }, 
			Speed = 20, 
			Spread = { -15, 15 }, 
			Size = 5, 
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
