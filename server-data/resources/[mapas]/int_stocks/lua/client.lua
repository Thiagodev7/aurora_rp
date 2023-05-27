local int_stock2 = GetInteriorAtCoordsWithType(162.10260,-1711.327,22.207,"int_stock")
local int_stock3 = GetInteriorAtCoordsWithType(-1246.520,-1117.353,0.7893,"int_stock")
local int_stock4 = GetInteriorAtCoordsWithType(598.24040,-423.3888,17.620,"int_stock")
local int_stock5 = GetInteriorAtCoordsWithType(937.73070,-1474.606,23.043,"int_stock")
local int_stock6 = GetInteriorAtCoordsWithType(-1973.43,-226.44,27.87,"int_stock")


--DisableInteriorProp
--EnableInteriorProp

--COCAINA
RefreshInterior(int_stock2)
EnableInteriorProp(int_stock2, "coke_app")
EnableInteriorProp(int_stock2, "coke_staff_01")
EnableInteriorProp(int_stock2, "coke_staff_02")
EnableInteriorProp(int_stock2, "coke_stock")

--METH UPDATE
RefreshInterior(int_stock3)
EnableInteriorProp(int_stock3, "light_stock")
EnableInteriorProp(int_stock3, "meth_app")
--EnableInteriorProp(int_stock3, "meth_staff_01")
--EnableInteriorProp(int_stock3, "meth_staff_02")
EnableInteriorProp(int_stock3, "meth_update_lab_01")
EnableInteriorProp(int_stock3, "meth_update_lab_02")
EnableInteriorProp(int_stock3, "meth_update_lab_01_2")
EnableInteriorProp(int_stock3, "meth_update_lab_02_2")
EnableInteriorProp(int_stock3, "meth_stock")

--WEED UPDATE
RefreshInterior(int_stock4)
EnableInteriorProp(int_stock4, "weed_app")
EnableInteriorProp(int_stock4, "weed_staff_01")
EnableInteriorProp(int_stock4, "weed_staff_02")
EnableInteriorProp(int_stock4, "weed_basic_lamp")
EnableInteriorProp(int_stock4, "weed_fan_basick")
EnableInteriorProp(int_stock4, "weed_stock")
EnableInteriorProp(int_stock4, "weed_plant_v8")



--MONEY
RefreshInterior(int_stock5)
DisableInteriorProp(int_stock5, "light_stock")
EnableInteriorProp(int_stock5, "money_app")
EnableInteriorProp(int_stock5, "money_staff_01")
EnableInteriorProp(int_stock5, "money_stock")

--WEAPON
RefreshInterior(int_stock6)
EnableInteriorProp(int_stock6, "light_stock")
EnableInteriorProp(int_stock6, "weapon_app")
EnableInteriorProp(int_stock6, "weapon_staff_01")
EnableInteriorProp(int_stock6, "weapon_stock")


local s1methba
local s1methup
local s1weedba
local s1weedup
local s1weedv1
local s1weedv2
local s1weedv3
local s1weedv4
local s1weedv5
local s1weedv6
local s1weedv7
local s1weedv8
local s1weedv9
local s1coke
local s1money
local s1weapon
local s1moneypr

RegisterCommand("meth_basic", function(source, args, rawCommand)
    local ped = PlayerPedId()
    local interiorHash = GetInteriorFromEntity(ped)
    if s1methba then
        s1methba = false
        RefreshInterior(interiorHash)
        DisableInteriorProp(interiorHash, "light_stock")
        DisableInteriorProp(interiorHash, "meth_app")
        DisableInteriorProp(interiorHash, "meth_staff_01")
        DisableInteriorProp(interiorHash, "meth_staff_02")
        DisableInteriorProp(interiorHash, "meth_basic_lab_01")
        DisableInteriorProp(interiorHash, "meth_basic_lab_02")
        DisableInteriorProp(interiorHash, "meth_basic_lab_01_2")
        DisableInteriorProp(interiorHash, "meth_basic_lab_02_2")
        DisableInteriorProp(interiorHash, "meth_stock")
    else
        s1methba = true
        RefreshInterior(interiorHash)
        EnableInteriorProp(interiorHash, "light_stock")
        EnableInteriorProp(interiorHash, "meth_app")
        EnableInteriorProp(interiorHash, "meth_staff_01")
        EnableInteriorProp(interiorHash, "meth_staff_02")
        EnableInteriorProp(interiorHash, "meth_basic_lab_01")
        EnableInteriorProp(interiorHash, "meth_basic_lab_02")
        EnableInteriorProp(interiorHash, "meth_basic_lab_01_2")
        EnableInteriorProp(interiorHash, "meth_basic_lab_02_2")
        EnableInteriorProp(interiorHash, "meth_stock")
    end
end, false)

RegisterCommand("meth_update", function(source, args, rawCommand)
    local ped = PlayerPedId()
    local interiorHash = GetInteriorFromEntity(ped)
    if s1methup then
        s1methup = false
        RefreshInterior(interiorHash)
        DisableInteriorProp(interiorHash, "light_stock")
        DisableInteriorProp(interiorHash, "meth_app")
        DisableInteriorProp(interiorHash, "meth_staff_01")
        DisableInteriorProp(interiorHash, "meth_staff_02")
        DisableInteriorProp(interiorHash, "meth_update_lab_01")
        DisableInteriorProp(interiorHash, "meth_update_lab_02")
        DisableInteriorProp(interiorHash, "meth_update_lab_01_2")
        DisableInteriorProp(interiorHash, "meth_update_lab_02_2")
        DisableInteriorProp(interiorHash, "meth_stock")
    else
        s1methup = true
        RefreshInterior(interiorHash)
        EnableInteriorProp(interiorHash, "light_stock")
        EnableInteriorProp(interiorHash, "meth_app")
        EnableInteriorProp(interiorHash, "meth_staff_01")
        EnableInteriorProp(interiorHash, "meth_staff_02")
        EnableInteriorProp(interiorHash, "meth_update_lab_01")
        EnableInteriorProp(interiorHash, "meth_update_lab_02")
        EnableInteriorProp(interiorHash, "meth_update_lab_01_2")
        EnableInteriorProp(interiorHash, "meth_update_lab_02_2")
        EnableInteriorProp(interiorHash, "meth_stock")
    end
end, false)

RegisterCommand("weed_basic", function(source, args, rawCommand)
    local ped = PlayerPedId()
    local interiorHash = GetInteriorFromEntity(ped)
    if s1weedba then
        s1weedba = false
        RefreshInterior(interiorHash)
        DisableInteriorProp(interiorHash, "weed_app")
        DisableInteriorProp(interiorHash, "weed_staff_01")
        DisableInteriorProp(interiorHash, "weed_staff_02")
        DisableInteriorProp(interiorHash, "weed_basic_lamp")
        DisableInteriorProp(interiorHash, "weed_fan_basick")
        DisableInteriorProp(interiorHash, "weed_stock")
    else
        s1weedba = true
        RefreshInterior(interiorHash)
        EnableInteriorProp(interiorHash, "weed_app")
        EnableInteriorProp(interiorHash, "weed_staff_01")
        EnableInteriorProp(interiorHash, "weed_staff_02")
        EnableInteriorProp(interiorHash, "weed_basic_lamp")
        EnableInteriorProp(interiorHash, "weed_fan_basick")
        EnableInteriorProp(interiorHash, "weed_stock")
    end
end, false)

RegisterCommand("weed_update", function(source, args, rawCommand)
    local ped = PlayerPedId()
    local interiorHash = GetInteriorFromEntity(ped)
    if s1weedup then
        s1weedup = false
        RefreshInterior(interiorHash)
        DisableInteriorProp(interiorHash, "weed_app")
        DisableInteriorProp(interiorHash, "weed_staff_01")
        DisableInteriorProp(interiorHash, "weed_staff_02")
        DisableInteriorProp(interiorHash, "weed_update_lamp")
        DisableInteriorProp(interiorHash, "weed_fan_update")
        DisableInteriorProp(interiorHash, "weed_stock")
    else
        s1weedup = true
        RefreshInterior(interiorHash)
        EnableInteriorProp(interiorHash, "weed_app")
        EnableInteriorProp(interiorHash, "weed_staff_01")
        EnableInteriorProp(interiorHash, "weed_staff_02")
        EnableInteriorProp(interiorHash, "weed_update_lamp")
        EnableInteriorProp(interiorHash, "weed_fan_update")
        EnableInteriorProp(interiorHash, "weed_stock")
    end
end, false)

RegisterCommand("weed_v1", function(source, args, rawCommand)
    local ped = PlayerPedId()
    local interiorHash = GetInteriorFromEntity(ped)
    if s1weedv1 then
        s1weedv1 = false
        RefreshInterior(interiorHash)
        DisableInteriorProp(interiorHash, "weed_plant_v1")
    else
        s1weedv1 = true
        RefreshInterior(interiorHash)
        EnableInteriorProp(interiorHash, "weed_plant_v1")

    end
end, false)

RegisterCommand("weed_v2", function(source, args, rawCommand)
    local ped = PlayerPedId()
    local interiorHash = GetInteriorFromEntity(ped)
    if s1weedv2 then
        s1weedv2 = false
        RefreshInterior(interiorHash)
        DisableInteriorProp(interiorHash, "weed_plant_v2")
    else
        s1weedv2 = true
        RefreshInterior(interiorHash)
        EnableInteriorProp(interiorHash, "weed_plant_v2")
    end
end, false)

RegisterCommand("weed_v3", function(source, args, rawCommand)
    local ped = PlayerPedId()
    local interiorHash = GetInteriorFromEntity(ped)
    if s1weedv3 then
        s1weedv3 = false
        RefreshInterior(interiorHash)
        DisableInteriorProp(interiorHash, "weed_plant_v3")
    else
        s1weedv3 = true
        RefreshInterior(interiorHash)
        EnableInteriorProp(interiorHash, "weed_plant_v3")
    end
end, false)

RegisterCommand("weed_v4", function(source, args, rawCommand)
    local ped = PlayerPedId()
    local interiorHash = GetInteriorFromEntity(ped)
    if s1weedv4 then
        s1weedv4 = false
        RefreshInterior(interiorHash)
        DisableInteriorProp(interiorHash, "weed_plant_v4")
    else
        s1weedv4 = true
        RefreshInterior(interiorHash)
        EnableInteriorProp(interiorHash, "weed_plant_v4")
    end
end, false)

RegisterCommand("weed_v5", function(source, args, rawCommand)
    local ped = PlayerPedId()
    local interiorHash = GetInteriorFromEntity(ped)
    if s1weedv5 then
        s1weedv5 = false
        RefreshInterior(interiorHash)
        DisableInteriorProp(interiorHash, "weed_plant_v5")
    else
        s1weedv5 = true
        RefreshInterior(interiorHash)
        EnableInteriorProp(interiorHash, "weed_plant_v5")
    end
end, false)

RegisterCommand("weed_v6", function(source, args, rawCommand)
    local ped = PlayerPedId()
    local interiorHash = GetInteriorFromEntity(ped)
    if s1weedv6 then
        s1weedv6 = false
        RefreshInterior(interiorHash)
        DisableInteriorProp(interiorHash, "weed_plant_v6")
    else
        s1weedv6 = true
        RefreshInterior(interiorHash)
        EnableInteriorProp(interiorHash, "weed_plant_v6")
    end
end, false)

RegisterCommand("weed_v7", function(source, args, rawCommand)
    local ped = PlayerPedId()
    local interiorHash = GetInteriorFromEntity(ped)
    if s1weedv7 then
        s1weedv7 = false
        RefreshInterior(interiorHash)
        DisableInteriorProp(interiorHash, "weed_plant_v7")
    else
        s1weedv7 = true
        RefreshInterior(interiorHash)
        EnableInteriorProp(interiorHash, "weed_plant_v7")
    end
end, false)

RegisterCommand("weed_v8", function(source, args, rawCommand)
    local ped = PlayerPedId()
    local interiorHash = GetInteriorFromEntity(ped)
    if s1weedv8 then
        s1weedv8 = false
        RefreshInterior(interiorHash)
        DisableInteriorProp(interiorHash, "weed_plant_v8")
    else
        s1weedv8 = true
        RefreshInterior(interiorHash)
        EnableInteriorProp(interiorHash, "weed_plant_v8")
    end
end, false)

RegisterCommand("weed_v9", function(source, args, rawCommand)
    local ped = PlayerPedId()
    local interiorHash = GetInteriorFromEntity(ped)
    if s1weedv9 then
        s1weedv9 = false
        RefreshInterior(interiorHash)
        DisableInteriorProp(interiorHash, "weed_plant_v9")
    else
        s1weedv9 = true
        RefreshInterior(interiorHash)
        EnableInteriorProp(interiorHash, "weed_plant_v9")
    end
end, false)

RegisterCommand("coke", function(source, args, rawCommand)
    local ped = PlayerPedId()
    local interiorHash = GetInteriorFromEntity(ped)
    if s1coke then
        s1coke = false
        RefreshInterior(interiorHash)
        DisableInteriorProp(interiorHash, "coke_app")
        DisableInteriorProp(interiorHash, "coke_staff_01")
        DisableInteriorProp(interiorHash, "coke_staff_02")
        DisableInteriorProp(interiorHash, "coke_stock")
    else
        s1coke = true
        RefreshInterior(interiorHash)
        EnableInteriorProp(interiorHash, "coke_app")
        EnableInteriorProp(interiorHash, "coke_staff_01")
        EnableInteriorProp(interiorHash, "coke_staff_02")
        EnableInteriorProp(interiorHash, "coke_stock")
    end
end, false)

--[[RegisterCommand("money", function(source, args, rawCommand)
    local ped = PlayerPedId()
    local interiorHash = GetInteriorFromEntity(ped)
    if s1money then
        s1money = false
        RefreshInterior(interiorHash)
        DisableInteriorProp(interiorHash, "light_stock")
        DisableInteriorProp(interiorHash, "money_app")
        DisableInteriorProp(interiorHash, "money_staff_01")
        DisableInteriorProp(interiorHash, "money_stock")
    else
        s1money = true
        RefreshInterior(interiorHash)
        EnableInteriorProp(interiorHash, "light_stock")
        EnableInteriorProp(interiorHash, "money_app")
        EnableInteriorProp(interiorHash, "money_staff_01")
        EnableInteriorProp(interiorHash, "money_stock")
    end
end, false)]]

RegisterCommand("money_pr", function(source, args, rawCommand)
    local ped = PlayerPedId()
    local interiorHash = GetInteriorFromEntity(ped)
    if s1moneypr then
        s1moneypr = false
        RefreshInterior(interiorHash)
        DisableInteriorProp(interiorHash, "money_staff_01")
        DisableInteriorProp(interiorHash, "money_staff_02")
    else
        s1moneypr = true
        RefreshInterior(interiorHash)
        DisableInteriorProp(interiorHash, "money_staff_01")
        EnableInteriorProp(interiorHash, "money_staff_02")
    end
end, false)

RegisterCommand("weapon", function(source, args, rawCommand)
    local ped = PlayerPedId()
    local interiorHash = GetInteriorFromEntity(ped)
    if s1weapon then
        s1weapon = false
        RefreshInterior(interiorHash)
        DisableInteriorProp(interiorHash, "light_stock")
        DisableInteriorProp(interiorHash, "weapon_app")
        DisableInteriorProp(interiorHash, "weapon_staff_01")
        DisableInteriorProp(interiorHash, "weapon_stock")
    else
        s1weapon = true
        RefreshInterior(interiorHash)
        EnableInteriorProp(interiorHash, "light_stock")
        EnableInteriorProp(interiorHash, "weapon_app")
        EnableInteriorProp(interiorHash, "weapon_staff_01")
        EnableInteriorProp(interiorHash, "weapon_stock")
    end
end, false)



------------------------------- ALL IPL FOR DEV-----------------------------------------------
-- local ped = PlayerPedId()
-- local interiorHash = GetInteriorFromEntity(ped)
-- RefreshInterior(interiorHash)
-- DisableInteriorProp(interiorHash, "light_stock")
-- DisableInteriorProp(interiorHash, "meth_app")
-- DisableInteriorProp(interiorHash, "meth_staff_01")
-- DisableInteriorProp(interiorHash, "meth_staff_02")

-- DisableInteriorProp(interiorHash, "meth_basic_lab_01")
-- DisableInteriorProp(interiorHash, "meth_basic_lab_02")
-- DisableInteriorProp(interiorHash, "meth_basic_lab_01_2")
-- DisableInteriorProp(interiorHash, "meth_basic_lab_02_2")

-- DisableInteriorProp(interiorHash, "meth_update_lab_01")
-- DisableInteriorProp(interiorHash, "meth_update_lab_02")
-- DisableInteriorProp(interiorHash, "meth_update_lab_01_2")
-- DisableInteriorProp(interiorHash, "meth_update_lab_02_2")

-- DisableInteriorProp(interiorHash, "meth_stock")

-- DisableInteriorProp(interiorHash, "weed_app")
-- DisableInteriorProp(interiorHash, "weed_staff_01")
-- DisableInteriorProp(interiorHash, "weed_staff_02")

-- DisableInteriorProp(interiorHash, "weed_basic_lamp")
-- DisableInteriorProp(interiorHash, "weed_update_lamp")

-- DisableInteriorProp(interiorHash, "weed_fan_basick")
-- DisableInteriorProp(interiorHash, "weed_fan_update")

-- DisableInteriorProp(interiorHash, "weed_plant_v1")
-- DisableInteriorProp(interiorHash, "weed_plant_v2")
-- DisableInteriorProp(interiorHash, "weed_plant_v3")
-- DisableInteriorProp(interiorHash, "weed_plant_v4")
-- DisableInteriorProp(interiorHash, "weed_plant_v5")
-- DisableInteriorProp(interiorHash, "weed_plant_v6")
-- DisableInteriorProp(interiorHash, "weed_plant_v7")
-- DisableInteriorProp(interiorHash, "weed_plant_v8")
-- DisableInteriorProp(interiorHash, "weed_plant_v9")

-- DisableInteriorProp(interiorHash, "weed_stock")

-- DisableInteriorProp(interiorHash, "coke_app")
-- DisableInteriorProp(interiorHash, "coke_staff_01")
-- DisableInteriorProp(interiorHash, "coke_staff_02")
-- DisableInteriorProp(interiorHash, "coke_stock")

-- DisableInteriorProp(interiorHash, "money_app")
-- DisableInteriorProp(interiorHash, "money_staff_01")
-- DisableInteriorProp(interiorHash, "money_staff_02")
-- DisableInteriorProp(interiorHash, "money_stock")

-- DisableInteriorProp(interiorHash, "weapon_app")
-- DisableInteriorProp(interiorHash, "weapon_staff_01")
-- DisableInteriorProp(interiorHash, "weapon_stock")

------------------------------- ALL IPL -----------------------------------------------