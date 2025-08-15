return function(name)
	local count = 0
	local d = false
	
	if string.len(name) < 13 then
		return false
	end

	local last
	local br = ""
	for i = 1,string.len(name),1 do
		local l = string.lower(string.sub(name,i,i))
		if l == "i" or l == "l" then
			last = l
			br = br .. l
			count = count + 1
		else
			count = 0
		end

		if count >= 4 then
			return true
		end
	end
	
	return false
end