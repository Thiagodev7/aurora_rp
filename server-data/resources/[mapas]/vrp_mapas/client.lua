local DisneyPoliceDPCity = GetInteriorAtCoords(440.84,-983.14,30.69)
LoadInterior(DisneyPoliceDPCity)

Citizen.CreateThread(function()

RequestIpl("imp_impexp_interior_placement_interior_1_impexp")
interiorID = GetInteriorAtCoords(941.10520000,-971.67590000,39.39997000)
	if IsValidInterior(interiorID) then
	
		EnableInteriorProp(interiorID, "branded_style_set")
		EnableInteriorProp(interiorID, "car_floor_hatch")
		EnableInteriorProp(interiorID, "door_blocker")
		RefreshInterior(interiorID)
	end
end)

local int_id = GetInteriorAtCoords(345.4899597168,294.95315551758,98.191421508789)

EnableInteriorProp(int_id , "Int01_ba_security_upgrade")
EnableInteriorProp(int_id , "Int01_ba_equipment_setup")
DisableInteriorProp(int_id , "Int01_ba_Style01") -- дешовый
DisableInteriorProp(int_id , "Int01_ba_Style02") -- средний
EnableInteriorProp(int_id , "Int01_ba_Style03") -- дорогой
DisableInteriorProp(int_id , "Int01_ba_style01_podium") -- дешовый
DisableInteriorProp(int_id , "Int01_ba_style02_podium") -- средний
EnableInteriorProp(int_id , "Int01_ba_style03_podium") -- дорогой
EnableInteriorProp(int_id , "int01_ba_lights_screen")
EnableInteriorProp(int_id , "Int01_ba_Screen")
EnableInteriorProp(int_id , "Int01_ba_bar_content")
DisableInteriorProp(int_id , "Int01_ba_booze_01") --мусор после вечеринки
DisableInteriorProp(int_id , "Int01_ba_booze_02") --мусор после вечеринки
DisableInteriorProp(int_id , "Int01_ba_booze_03") --мусор после вечеринки
DisableInteriorProp(int_id , "Int01_ba_dj01")
DisableInteriorProp(int_id , "Int01_ba_dj02")
EnableInteriorProp(int_id , "Int01_ba_dj03")
DisableInteriorProp(int_id , "Int01_ba_dj04")

EnableInteriorProp(int_id , "DJ_01_Lights_01")
DisableInteriorProp(int_id , "DJ_01_Lights_02")
DisableInteriorProp(int_id , "DJ_01_Lights_03")
DisableInteriorProp(int_id , "DJ_01_Lights_04")

DisableInteriorProp(int_id , "DJ_02_Lights_01")
EnableInteriorProp(int_id , "DJ_02_Lights_02")
DisableInteriorProp(int_id , "DJ_02_Lights_03")
DisableInteriorProp(int_id , "DJ_02_Lights_04")

DisableInteriorProp(int_id , "DJ_03_Lights_01")
DisableInteriorProp(int_id , "DJ_03_Lights_02")
EnableInteriorProp(int_id , "DJ_03_Lights_03")
DisableInteriorProp(int_id , "DJ_03_Lights_04")

DisableInteriorProp(int_id , "DJ_04_Lights_01")
DisableInteriorProp(int_id , "DJ_04_Lights_02")
DisableInteriorProp(int_id , "DJ_04_Lights_03")
EnableInteriorProp(int_id , "DJ_04_Lights_04")

DisableInteriorProp(int_id , "light_rigs_off")
EnableInteriorProp(int_id , "Int01_ba_lightgrid_01")
DisableInteriorProp(int_id , "Int01_ba_Clutter")
EnableInteriorProp(int_id , "Int01_ba_equipment_upgrade")
EnableInteriorProp(int_id , "Int01_ba_clubname_01") -- galaxy
DisableInteriorProp(int_id , "Int01_ba_clubname_02") --studio
DisableInteriorProp(int_id , "Int01_ba_clubname_03") --omega
DisableInteriorProp(int_id , "Int01_ba_clubname_04") --tehnology
DisableInteriorProp(int_id , "Int01_ba_clubname_05") --gefangnis
DisableInteriorProp(int_id , "Int01_ba_clubname_06") --maisonnette
DisableInteriorProp(int_id , "Int01_ba_clubname_07") -- tony 
DisableInteriorProp(int_id , "Int01_ba_clubname_08") -- the palace
DisableInteriorProp(int_id , "Int01_ba_clubname_09") -- paradise

EnableInteriorProp(int_id , "Int01_ba_dry_ice")
DisableInteriorProp(int_id , "Int01_ba_deliverytruck")
DisableInteriorProp(int_id , "Int01_ba_trophy04")
DisableInteriorProp(int_id , "Int01_ba_trophy05")
DisableInteriorProp(int_id , "Int01_ba_trophy07")
DisableInteriorProp(int_id , "Int01_ba_trophy09")
DisableInteriorProp(int_id , "Int01_ba_trophy08")
DisableInteriorProp(int_id , "Int01_ba_trophy11")
DisableInteriorProp(int_id , "Int01_ba_trophy10")
DisableInteriorProp(int_id , "Int01_ba_trophy03")
DisableInteriorProp(int_id , "Int01_ba_trophy01")
DisableInteriorProp(int_id , "Int01_ba_trophy02")
DisableInteriorProp(int_id , "Int01_ba_trad_lights")
DisableInteriorProp(int_id , "Int01_ba_Worklamps") -- работа
RefreshInterior(int_id )

Citizen.CreateThread(function()


	RequestIpl("gabz_biker_milo_")
	
		interiorID = GetInteriorAtCoords(994.47870000, -122.99490000, 73.11467000)
		
		
		if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "walls_02")
		SetInteriorPropColor(interiorID, "walls_02", 8)
		EnableInteriorProp(interiorID, "Furnishings_02")
		SetInteriorPropColor(interiorID, "Furnishings_02", 8)
		EnableInteriorProp(interiorID, "decorative_02")
		EnableInteriorProp(interiorID, "mural_03")
		EnableInteriorProp(interiorID, "lower_walls_default")
		SetInteriorPropColor(interiorID, "lower_walls_default", 8)
		EnableInteriorProp(interiorID, "mod_booth")
		EnableInteriorProp(interiorID, "gun_locker")
		EnableInteriorProp(interiorID, "cash_small")
		EnableInteriorProp(interiorID, "id_small")
		EnableInteriorProp(interiorID, "weed_small")
		
		RefreshInterior(interiorID)
		
		end
		
	end)
	


Citizen.CreateThread(function()
	LoadInterior(GetInteriorAtCoords(440.84, -983.14, 30.69))
end)

Citizen.CreateThread(function()
    while (true) do
        ClearAreaOfPeds(440.84, -983.14, 30.69, 300, 1)
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
RequestIpl("lafa2k_bkr_biker_dlc_int_02")
interiorID = GetInteriorAtCoords(889.67,-2102.93,30.76)
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID,"walls_01")
		EnableInteriorProp(interiorID,"lower_walls_default")
		EnableInteriorProp(interiorID,"furnishings_02")
		EnableInteriorProp(interiorID,"mural_03")
		EnableInteriorProp(interiorID,"decorative_02")
		EnableInteriorProp(interiorID,"gun_locker")
		EnableInteriorProp(interiorID,"mod_booth")
		EnableInteriorProp(interiorID,"meth_small")
		EnableInteriorProp(interiorID,"meth_medium")
		EnableInteriorProp(interiorID,"meth_large")
		EnableInteriorProp(interiorID,"cash_small")
		EnableInteriorProp(interiorID,"cash_medium")
		EnableInteriorProp(interiorID,"cash_large")
		EnableInteriorProp(interiorID,"weed_small")
		EnableInteriorProp(interiorID,"weed_medium")
		EnableInteriorProp(interiorID,"weed_large")
		EnableInteriorProp(interiorID,"coke_small")
		EnableInteriorProp(interiorID,"coke_medium")
		EnableInteriorProp(interiorID,"coke_large")
		EnableInteriorProp(interiorID,"counterfeit_small")
		EnableInteriorProp(interiorID,"counterfeit_medium")
		EnableInteriorProp(interiorID,"counterfeit_large")
		EnableInteriorProp(interiorID,"id_small")
		EnableInteriorProp(interiorID,"id_medium")
		EnableInteriorProp(interiorID,"id_large")
		SetInteriorPropColor(interiorID,"walls_01", 8)
		SetInteriorPropColor(interiorID,"lower_walls_default", 8)
		RefreshInterior(interiorID)
	end

interiorID = GetInteriorAtCoords(96.47,6347.78,30.48)
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID,"weed_hosea")
		EnableInteriorProp(interiorID,"weed_hoseb")
		EnableInteriorProp(interiorID,"weed_hosec")
		EnableInteriorProp(interiorID,"weed_hosed")
		EnableInteriorProp(interiorID,"weed_hosee")
		EnableInteriorProp(interiorID,"weed_hosef")
		EnableInteriorProp(interiorID,"weed_hoseg")
		EnableInteriorProp(interiorID,"weed_hoseh")
		EnableInteriorProp(interiorID,"weed_hosei")
		EnableInteriorProp(interiorID,"weed_growtha_stage3")
		EnableInteriorProp(interiorID,"weed_growthb_stage3")
		EnableInteriorProp(interiorID,"weed_growthc_stage3")
		EnableInteriorProp(interiorID,"weed_growthd_stage3")
		EnableInteriorProp(interiorID,"weed_growthe_stage3")
		EnableInteriorProp(interiorID,"weed_growthf_stage3")
		EnableInteriorProp(interiorID,"weed_growthg_stage3")
		EnableInteriorProp(interiorID,"weed_growthh_stage3")
		EnableInteriorProp(interiorID,"weed_growthi_stage3")
		EnableInteriorProp(interiorID,"light_growtha_stage33_upgrade")
		EnableInteriorProp(interiorID,"light_growthb_stage33_upgrade")
		EnableInteriorProp(interiorID,"light_growthc_stage33_upgrade")
		EnableInteriorProp(interiorID,"light_growthd_stage33_upgrade")
		EnableInteriorProp(interiorID,"light_growthe_stage33_upgrade")
		EnableInteriorProp(interiorID,"light_growthf_stage33_upgrade")
		EnableInteriorProp(interiorID,"light_growthg_stage33_upgrade")
		EnableInteriorProp(interiorID,"light_growthh_stage33_upgrade")
		EnableInteriorProp(interiorID,"light_growthi_stage33_upgrade")
		EnableInteriorProp(interiorID,"weed_upgrade_equip")
		EnableInteriorProp(interiorID,"weed_drying")
		EnableInteriorProp(interiorID,"weed_security_upgrade")
		EnableInteriorProp(interiorID,"weed_production")
		EnableInteriorProp(interiorID,"weed_set_up")
		EnableInteriorProp(interiorID,"weed_chairs")
		RefreshInterior(interiorID)	
	end

interiorID = GetInteriorAtCoords(24.54,-1400.42,29.12)
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID,"weed_upgrade_equip")
		EnableInteriorProp(interiorID,"counterfeit_security")
		EnableInteriorProp(interiorID,"counterfeit_cashpile100a")
		EnableInteriorProp(interiorID,"counterfeit_cashpile20a")
		EnableInteriorProp(interiorID,"counterfeit_cashpile10a")
		EnableInteriorProp(interiorID,"counterfeit_cashpile100b")
		EnableInteriorProp(interiorID,"counterfeit_cashpile100c")
		EnableInteriorProp(interiorID,"counterfeit_cashpile100d")
		EnableInteriorProp(interiorID,"counterfeit_cashpile20b")
		EnableInteriorProp(interiorID,"counterfeit_cashpile20c")
		EnableInteriorProp(interiorID,"counterfeit_cashpile20d")
		EnableInteriorProp(interiorID,"counterfeit_cashpile10b")
		EnableInteriorProp(interiorID,"counterfeit_cashpile10c")
		EnableInteriorProp(interiorID,"counterfeit_cashpile10d")
		EnableInteriorProp(interiorID,"counterfeit_setup")
		EnableInteriorProp(interiorID,"counterfeit_upgrade_equip")
		EnableInteriorProp(interiorID,"dryera_on")
		EnableInteriorProp(interiorID,"dryerb_on")
		EnableInteriorProp(interiorID,"dryerc_on")
		EnableInteriorProp(interiorID,"dryerd_on")
		EnableInteriorProp(interiorID,"money_cutter")
		EnableInteriorProp(interiorID,"special_chairs")
		RefreshInterior(interiorID)
	end

interiorID = GetInteriorAtCoords(1497.75,6393.09,21.78)
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID,"meth_lab_upgrade")
		EnableInteriorProp(interiorID,"meth_lab_production")
		EnableInteriorProp(interiorID,"meth_lab_security_high")
		EnableInteriorProp(interiorID,"meth_lab_setup")
		EnableInteriorProp(interiorID,"counterfeit_standard_equip")
		RefreshInterior(interiorID)
	end

interiorID = GetInteriorAtCoords(-1103.17,4951.34,234.86)
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID,"coke_cut_01")
		EnableInteriorProp(interiorID,"coke_cut_02")
		EnableInteriorProp(interiorID,"coke_cut_03")
		EnableInteriorProp(interiorID,"coke_cut_04")
		EnableInteriorProp(interiorID,"coke_cut_05")
		EnableInteriorProp(interiorID,"set_up")
		EnableInteriorProp(interiorID,"security_high")
		EnableInteriorProp(interiorID,"production_upgrade")
		EnableInteriorProp(interiorID,"equipment_upgrade")
		RefreshInterior(interiorID)
	end

interiorID = GetInteriorAtCoords(2845.27,4441.96,47.50)
	if IsValidInterior(interiorID) then
		RefreshInterior(interiorID)
	end	

RequestIpl("imp_impexp_interior_placement_interior_1_impexp")
interiorID = GetInteriorAtCoords(941.10,-971.67,39.39)
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID,"branded_style_set")
		EnableInteriorProp(interiorID,"car_floor_hatch")
		EnableInteriorProp(interiorID,"door_blocker")
		RefreshInterior(interiorID)
	end		
end)