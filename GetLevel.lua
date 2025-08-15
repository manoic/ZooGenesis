--local START_XP = _G.GSAT345NIJ384TU034TRWEFGKFGS.START_XP

local function Round(to_round,n)
	local divided = to_round / n
	local rounded = n * math.floor(divided)
	return rounded
end

return function(START_XP,level)
	level = level - 1
	local n = Round((12 * (level ^ 2) + 1 * (level ^ 2) + 500 * level),100)
	n = n + START_XP

	--if level > 50 then
	--	--n = n * 2
	--end

	--old:
	--local n = Round((2 * (level ^ 2) + 5 * (level ^ 2) + 500 * level),100)
	--if level == 95 then
	--	n = n * 2
	--elseif level > 95 and level <= 98 then
	--	n = n * 2.5
	--elseif level > 98 then
	--	n = n * 3
	--end

	return n
end