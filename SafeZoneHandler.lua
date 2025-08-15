local M = {}

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerStorage = game:GetService("ServerStorage")

local Characters = workspace:FindFirstChild("Characters")
local ZoneSpots = workspace:FindFirstChild("Filter"):FindFirstChild("CombatZones")
local RR3 = require(ReplicatedStorage.Modules.RotatedRegion3)

local EVENTS3 = ServerStorage.Events3

local cChars = {}
local playerT = {}

local config = {
	--Timer = 90;
	--MaxCooldown = 300;
	
	SafezoneEnabled = true;
	
	defaultPlayerT = {
		currentZones = {};
		alive = false;
		CooldownTime = 0;
		Tick = 0;
		Timer = 0;
	};
}

local deepCopy = require(ReplicatedStorage.Modules.DeepCopy)

local function DoLoop()
	local didChars = {}
	
	local rList = {}
	for _,v in pairs(playerT) do
		if v and v.alive and v.root and v.root.Parent then
			table.insert(rList,v.root)
		end
	end
	
	local nVals = {}
	
	for _,cPart in pairs(ZoneSpots:GetChildren()) do
		local region = RR3.FromPart(cPart)
		region = (#rList <=0 and {}) or region:FindPartsInRegion3WithWhiteList(rList,1000)
		
		local settingS = cPart.Settings
		local nameVal = settingS.NameValue.Value
		local mode = settingS.Mode.Value
		
		if not cChars[nameVal] then
			cChars[nameVal] = {}
		end
		if not didChars[nameVal] then
			didChars[nameVal] = {}
		end
		
		if not table.find(nVals,nameVal) then
			table.insert(nVals,nameVal)
		end

		if mode == "Combat-Zone" or config.SafezoneEnabled then
			local function CheckP(v)
				local char = v.Parent
				
				local plr = Players:GetPlayerFromCharacter(char)
				
				if mode == "Safe-Zone" then
					if _G.RAC_CHECK and not _G.RAC_CHECK("89RWE89SDFJWEP[O2398",plr) then return end
				end
				
				local gotPlayerT = playerT[plr]
				
				local vf = plr and gotPlayerT and gotPlayerT.alive and _G.GVF(char.Name)
				local con

				local conf = false
				if plr and vf then
					if mode == "Combat-Zone" then
						if not char:FindFirstChildOfClass("ForceField") then
							_G.CombatTagChar(plr,2,nameVal,true)
						end
						conf = true
					elseif mode == "Safe-Zone" then
						if not _G.InCombatCheck(plr,true) then
							conf = true
						end
					end
				end
				
				if conf and vf.CombatArea.Value ~= nameVal then
					vf.CombatArea.Value = nameVal
					vf.CombatArea.InSafeZone.Value = mode == "Safe-Zone"
					
					playerT[plr].currentZones[nameVal] = true
					
					ReplicatedStorage.Events.CombatZone:FireClient(plr,"Entering",nameVal,mode)
					--coroutine.resume(coroutine.create(function()
					--	while vf.CombatArea.Value == nameVal do
					--		wait()
					--	end
					--end))
					if mode == "Safe-Zone" then
						EVENTS3.BYZERSPROTEC_S:Fire(plr,true)
					end
					
				elseif not conf then
					vf.CombatArea.Value = ""
					vf.CombatArea.InSafeZone.Value = false

					playerT[plr].currentZones[nameVal] = true
				end

				local l = {Player = plr,Mode = mode}
				--if con then
				--	l.Con = con
				--end
				
				didChars[nameVal][plr] = plr
				cChars[nameVal][plr] = l
			end
			
			for _,v in pairs(region) do
				CheckP(v)
			end
		end
	end
	
	for i,nameVal in pairs(nVals) do
		for i,v in pairs(cChars[nameVal]) do
			if not didChars[nameVal][i] then
				if v.Con then
					pcall(function()
						v.Con:Disconnect()
					end)
				end

				if v.Mode == "Safe-Zone" then
					delay(3,function()
						if not (cChars[nameVal] and cChars[nameVal][i]) then
							EVENTS3.BYZERSPROTEC_S:Fire(v.Player,false)
						end
					end)
				end

				ReplicatedStorage.Events.CombatZone:FireClient(v.Player,"Leaving","",v.Mode)

				local vf = _G.GVF(v.Player.Name)
				if vf then
					vf.CombatArea.Value = ""
				end

				cChars[nameVal][i] = nil
			end
		end
	end

	didChars = nil
end

local function SetUp()
	local function newPlayer(player)
		local function newChar(char)
			local humanoid = char:WaitForChild("Humanoid")
			local root = char:WaitForChild("HumanoidRootPart")
			
			playerT[player] = deepCopy(config.defaultPlayerT)
			
			local cCode = math.random()
			
			playerT[player].alive = true
			playerT[player].cCode = cCode
			playerT[player].root = root
			
			local c1,c2
			local function disc()
				if playerT[player].cCode == cCode then
					playerT[player].alive = false
				end
				
				if c1 then
					c1:Disconnect()
				end
				if c2 then
					c2:Disconnect()	
				end
				c1 = nil
				c2 = nil
			end
			
			c1 = humanoid.Died:Connect(disc)
			c2 = char.AncestryChanged:Connect(function(_,parent)
				if not parent then
					disc()
				end
			end)
		end
		
		player.CharacterAdded:Connect(newChar)
	end
	
	local function leftPlayer(player)
		playerT[player] = nil
	end
	
	--local function track(char)
	--	if not Players:GetPlayerFromCharacter(char) then return end
	--	local root = char:FindFirstChild("HumanoidRootPart")
	--	if root then			
	--		table.insert(currentChars,{Root = root; CooldownTime = 0;Timer = config.Timer;Tick = 0})
			
	--		local con
	--		con = char.AncestryChanged:Connect(function(_,parent)
	--			if not parent then
	--				con:Disconnect()
	--				for i,v in pairs(currentChars) do
	--					if v.Root == root then
	--						table.remove(currentChars,i)
	--						break
	--					end
	--				end
	--			end
	--		end)
	--	end		
	--end
	
	
	--for _,v in pairs(Characters:GetChildren()) do
	--	track(v)
	--end
	--workspace.Characters.ChildAdded:Connect(function(char)
	--	wait(0.5)
	--	if char and char.Parent then
	--		track(char)
	--	end
	--end)
	
	for _,v in pairs(Players:GetPlayers()) do
		newPlayer(v)
	end
	Players.PlayerAdded:Connect(newPlayer)
end

M.MainLoop = function()
	DoLoop()
end

SetUp()

return M