--local START_XP = _G.GSAT345NIJ384TU034TRWEFGKFGS.START_LEVELUP_REWARD

local function Round(to_round,n)
	local divided = to_round / n
	local rounded = n * math.floor(divided)
	return rounded
end

return function(START_XP,level)
	level = level - 1
	local n = Round((1 * (level ^ 1.3) + 1 * (level ^ 2) + 10 * level),5)
	n = n + START_XP

	if level == 99 then
		n = 300000
	end
	
	--n = math.max(n,0)

	return n
end