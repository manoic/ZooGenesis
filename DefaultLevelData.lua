local getLevel = require(script.Parent.GetLevel)

local START_XP

local m = {}

m.GetData = function()
	return {
		Level = 1;
		MaxXP = getLevel(START_XP,1);
		XP = 0;
	}
end

m.SetUp = function(sX)
	START_XP = sX
end

return m