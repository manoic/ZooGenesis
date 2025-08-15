local d = {}

d = {
	Kills = 0;
	Deaths = 0;
	TimePlayed = 0;
	
	Unlocked = {};
	RedeemedCodes = {};
	OtherSettings = {};
	
	Cosmetics = {
		Skins = {};
		Cases = {};
	};
	EquippedCosmetics = {
		Skins = {};
	};
	
	DailyLogin = {
		DayStreak = 1;
		LastClaim = 0;
	};
	
	OtherStats = {
		RobuxSpent = 0;
		CasesOpened = {};
		CasesPurchased = {};
		CosmeticsSold = 0;
		CosmeticsSoldValue = 0;
	};
	
	TempData = {
		STORE_KEY = "Temp_V3";

		LeaveStats = {
			LeaveCF = nil;
			
			LifeSpends = 0;
			Tools = {};
			RandomAvatar = {};
			
			HP = 115;
			
			GaveStarterGear = false;
			
			LimbStats = {
				["Head"] = {
					HP = 		100;
					Broken =	false;
					Destroyed = false;
				};
				["Left Arm"] = {
					HP = 		100;
					Broken =	false;
					Destroyed = false;
				};
				["Right Arm"] = {
					HP = 		100;
					Broken =	false;
					Destroyed = false;
				};
				["Left Leg"] = {
					HP = 		100;
					Broken =	false;
					Destroyed = false;
				};
				["Right Leg"] = {
					HP = 		100;
					Broken =	false;
					Destroyed = false;
				};
			};
		};
		
		SawUpdate = false;
		CombatLog = false;
		CombatLogLoss_Money = 0;
		CombatLogLoss_Items = 0;

	};
	
	--PlayedAfterFree = true;
	
	ClientSettings = require(game:GetService("ReplicatedStorage").Modules.DefaultClientSettings)
	
	--MoneyStoreCode = nil;
}

return d