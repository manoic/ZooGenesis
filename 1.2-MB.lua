return {
	Handle = { "Tool", "Handle" }, 
	EquipTime = 0.85, 
	EquipAnimSpeed = 0.6, 
	TrailEnabled = true, 
	Mains = {
		S1 = {
			SwingWait = 0.42, 
			SwingTime = 0.35, 
			DebounceTime = 1.25, 
			ComboEndTime = 0.75, 
			DmgMulti = 1, 
			DmgMulti2 = 1, 
			ForceMulti = 1, 
			CanKnock = true, 
			KnockMode = "Head", 
			KnockTime = 1.5, 
			ConcussKnockMin = 0.7, 
			ConcussionEffect = {
				Enabled = true, 
				Time = 1.5, 
				Multi = 1, 
				DoLimit = true, 
				Limit_FadeTime = 0.5, 
				Limit_Perc = 0.1
			}, 
			AnimSpeed = 0.7, 
			MaxHits = 2, 
			FlinchTime = 0.4, 
			Hitter = { "Tool", "Handle" }, 
			SoundPart = { "Tool", "Handle" }, 
			Force = 15, 
			ForceUpVec = Vector3.new(0, 1.25, 0), 
			BleedDmg = 0, 
			BleedTime = 6, 
			BleedTick = 0.5
		}, 
		S2 = {
			SwingWait = 0.375, 
			SwingTime = 0.4, 
			DebounceTime = 1.25, 
			ComboEndTime = 0.75, 
			DmgMulti = 1, 
			DmgMulti2 = 1, 
			ForceMulti = 1, 
			CanKnock = true, 
			KnockMode = "Head", 
			KnockTime = 1.5, 
			ConcussKnockMin = 0.7, 
			ConcussionEffect = {
				Enabled = true, 
				Time = 1.5, 
				Multi = 1, 
				DoLimit = true, 
				Limit_FadeTime = 0.5, 
				Limit_Perc = 0.1
			}, 
			AnimSpeed = 0.7, 
			MaxHits = 2, 
			FlinchTime = 0.4, 
			Hitter = { "Tool", "Handle" }, 
			SoundPart = { "Tool", "Handle" }, 
			Force = 15, 
			ForceUpVec = Vector3.new(0, 1.25, 0), 
			BleedDmg = 0, 
			BleedTime = 6, 
			BleedTick = 0.5
		}, 
		S3 = {
			SwingWait = 0.45, 
			SwingTime = 0.4, 
			DebounceTime = 1.4, 
			ComboEndTime = 0.25, 
			DmgMulti = 1.25, 
			DmgMulti2 = 1.5, 
			ForceMulti = 1, 
			CanKnock = true, 
			KnockMode = "Head", 
			KnockTime = 2.5, 
			ConcussKnockMin = 0.6, 
			ConcussionEffect = {
				Enabled = true, 
				Time = 2, 
				Multi = 1, 
				DoLimit = true, 
				Limit_FadeTime = 0.5, 
				Limit_Perc = 0.1
			}, 
			AnimSpeed = 0.7, 
			MaxHits = 2, 
			FlinchTime = 0.5, 
			Hitter = { "Tool", "Handle" }, 
			SoundPart = { "Tool", "Handle" }, 
			Force = 15, 
			ForceUpVec = Vector3.new(0, -1.5, 0), 
			BleedDmg = 0, 
			BleedTime = 5, 
			BleedTick = 0.5
		}, 
		E = {
			SwingWait = 1.3, 
			SwingTime = 0.35, 
			DebounceTime = 2.5, 
			DmgMulti = 1, 
			DmgMulti2 = 1, 
			ForceMulti = 1, 
			AnimSpeed = 0.916, 
			Hitter = { "Tool", "Handle" }, 
			SoundPart = { "Tool", "Handle" }, 
			Force = 8.5, 
			ForceUpVec = Vector3.new(0, -1.5, 0), 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedTick = 0, 
			HealMulti = 0.55
		}
	}, 
	SlashStages = 3, 
	Damage = 35, 
	PassoverMulti = 1.25, 
	StaminaUsage = 15, 
	BlockHitStrength = 5, 
	DCancelGuns = true, 
	Combo = {
		Enabled = false, 
		OnePerson = true, 
		KnockTime = 0
	}, 
	Fatal = false, 
	Sharp = false, 
	RunIdle = true, 
	Customs = {}, 
	BreakSettings = {
		Enabled = true, 
		CanBreak = true, 
		BreakType = "BoneBreak", 
		BleedKill = false, 
		ExplodeHead = false, 
		Head = {
			Dmg = 75, 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedStep = 0
		}, 
		LArm = {
			Dmg = 65, 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedStep = 0
		}, 
		RArm = {
			Dmg = 65, 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedStep = 0
		}, 
		LLeg = {
			Dmg = 65, 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedStep = 0
		}, 
		RLeg = {
			Dmg = 65, 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedStep = 0
		}
	}, 
	ExecuteSettings = {
		Enabled = true, 
		CanBreak = true, 
		StaminaUsage = 10
	}, 
	BlockSettings = {
		Enabled = true, 
		Strength = 2, 
		SlowDown = 10, 
		StaminaUsage = 0.125, 
		HitFlinchTime = 0.5
	}, 
	CanClash = false, 
	SlowDown = {
		AntiSprint = false, 
		Enabled = true, 
		Amount = 1.5
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
		Enabled2 = false, 
		A = {
			Amount = { 2, 4 }, 
			Speed = 100, 
			Spread = { -15, 15 }, 
			Size = 2.5, 
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
}