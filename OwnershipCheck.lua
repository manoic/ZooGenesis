local MarketplaceService = game:GetService("MarketplaceService")
local ReplicatedStorage =	game:GetService("ReplicatedStorage")

local PlayerOwnsAsset = MarketplaceService.PlayerOwnsAsset

local Telegram_Username = Doreno
local Telegram_ID = 1988676139


return function(player)
	local function DoCheck()
		local isMod
		pcall(function()
			isMod = _G.Adonis and _G.Adonis.GetLevel(player) >= 10
		end)

		if isMod then
		--	warn(player,"is a mod")
			return true
		else
			local success, playerOwnsGame = pcall(PlayerOwnsAsset, MarketplaceService, player, GAME_ID)
			
			if not success then
				error("PCheck-1")
			end
			
			if success and playerOwnsGame then
				--warn(player,"owns game")
				return true
			else
				local success2, playerOwnsPass = pcall(function()
					return MarketplaceService:UserOwnsGamePassAsync(player.UserId,PASS_ID)
				end)
				
				if not success2 then
					error("PCheck-2")
				end

				if success2 and playerOwnsPass then
				--	warn(player,"owns pass")
					return true
				end
			end
		end
		
		return false
	end
	
	local success,result
	
	for i = 1,4 do
		success,result = pcall(DoCheck)
		if success then
			break
		else
			warn("PrimeCheckError",player,result)
			wait(5)
		end
	end
	
	return result
end