if game.GetMap() ~= "gm_excess_construct_13" then return end

local buttons = {
	[1] = 3366,
	[2] = 1687,
	[3] = 1719,
	[4] = 1704,
	[5] = 3301,
	[6] = 2223,
	[7] = 2224,
	[8] = 3299
}

local doors = {
	[1] = 3365,
	[2] = 1702,
	[3] = 1686,
	[4] = 1718,
	[5] = 1703,
	[6] = 3300,
	[7] = 2218,
	[8] = 2219,
	[9] = 3279
}

local function buttonfucker()
    for _, v in ipairs(buttons) do
        local e = ents.GetMapCreatedEntity(v)
        if IsValid(e) then SafeRemoveEntity(e) end
    end

    for _, v in ipairs(doors) do
        local e = ents.GetMapCreatedEntity(v)
        if IsValid(e) then e:Fire("open") end
    end
end

local tag = "buttonfucker"
hook.Add("InitPostEntity", tag, buttonfucker)
hook.Add("PostCleanupMap", tag, buttonfucker)
