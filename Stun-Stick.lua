local Settings = {
	Handle = { "Tool", "Handle" }, 
	EquipTime = 0.75, 
	EquipAnimSpeed = 1, 
	TrailEnabled = true, 
	Mains = {
		S1 = {
			SwingWait = 0.16, 
			SwingTime = 0.14, 
			DebounceTime = 0.5, 
			ComboEndTime = 0.5, 
			DmgMulti = 1, 
			DmgMulti2 = 1, 
			ForceMulti = 1, 
			CanKnock = true, 
			KnockMode = "Head", 
			KnockTime = 0.7, 
			ConcussionEffect = {
				Enabled = true, 
				Time = 0.65, 
				Multi = 0.7, 
				DoLimit = true, 
				Limit_FadeTime = 0.35, 
				Limit_Perc = 0.5
			}, 
			AnimSpeed = 1, 
			MaxHits = 1, 
			FlinchTime = 0.75, 
			Hitter = { "Tool", "Handle" }, 
			SoundPart = { "Tool", "Handle" }, 
			Force = 5, 
			ForceUpVec = Vector3.new(0, 1.25, 0), 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedTick = 0
		}, 
		S2 = {
			SwingWait = 0.16, 
			SwingTime = 0.14, 
			DebounceTime = 0.5, 
			ComboEndTime = 0.5, 
			DmgMulti = 1, 
			DmgMulti2 = 1, 
			ForceMulti = 1, 
			CanKnock = true, 
			KnockMode = "Head", 
			KnockTime = 0.7, 
			ConcussionEffect = {
				Enabled = true, 
				Time = 0.65, 
				Multi = 0.7, 
				DoLimit = true, 
				Limit_FadeTime = 0.35, 
				Limit_Perc = 0.5
			}, 
			AnimSpeed = 1, 
			MaxHits = 1, 
			FlinchTime = 0.75, 
			Hitter = { "Tool", "Handle" }, 
			SoundPart = { "Tool", "Handle" }, 
			Force = 2.5, 
			ForceUpVec = Vector3.new(0, 1.25, 0), 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedTick = 0
		}, 
		E = {
			SwingWait = 0.9, 
			SwingTime = 0.35, 
			DebounceTime = 2, 
			DmgMulti = 1, 
			DmgMulti2 = 1, 
			ForceMulti = 1, 
			AnimSpeed = 1.2, 
			Hitter = { "Tool", "Handle" }, 
			SoundPart = { "Tool", "Handle" }, 
			Force = 2.5, 
			ForceUpVec = Vector3.new(0, -1.5, 0), 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedTick = 0, 
			HealMulti = 0.375
		}
	}, 
	SlashStages = 2, 
	Damage = 34, 
	StaminaUsage = 7, 
	BlockHitStrength = 3, 
	Combo = {
		Enabled = false, 
		OnePerson = true, 
		KnockTime = 0
	}, 
	Fatal = false, 
	Sharp = true, 
	RunIdle = false, 
	DCancelGuns = true, 
	Customs = {
		DoorKick = {
			Range = 3.5, 
			SwingWait = 0.4, 
			SwingTime = 0.2, 
			DebounceTime = 1, 
			StaminaUsage = 10, 
			Damage = 22, 
			Hitter = { "Char", "Right Leg" }, 
			ForceMulti = 1
		}
	}, 
	BreakSettings = {
		Enabled = true, 
		CanBreak = true, 
		BreakType = "BoneBreak", 
		BleedKill = false, 
		ExplodeHead = false, 
		Head = {
			Dmg = 68, 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedStep = 0
		}, 
		LArm = {
			Dmg = 35, 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedStep = 0
		}, 
		RArm = {
			Dmg = 35, 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedStep = 0
		}, 
		LLeg = {
			Dmg = 35, 
			BleedDmg = 0, 
			BleedTime = 0, 
			BleedStep = 0
		}, 
		RLeg = {
			Dmg = 35, 
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
		Strength = 3, 
		SlowDown = 10, 
		StaminaUsage = 0.25, 
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
			Amount = { 4, 6 }, 
			Speed = 80, 
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
			RepeatCount = 0, 
			RepeatTick = 0, 
			MaxYAngle = nil
		}
	}, 
	MMAG = 10
}

Settings.Blood.B.RepeatCount = Settings.Mains.S1.BleedTime / Settings.Mains.S1.BleedTick
Settings.Blood.B.RepeatTick = Settings.Mains.S1.BleedTick

return Settings