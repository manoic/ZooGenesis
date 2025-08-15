return function (GameSettings)
	
	return {
		Cash = 0;
		Bank = (GameSettings and GameSettings.StartMoney) or 0;
		Bounty = 0;
		PurchasedMoney = 0;
	}
end
