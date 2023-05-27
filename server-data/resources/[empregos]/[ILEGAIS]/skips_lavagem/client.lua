local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
emP = Tunnel.getInterface("skips_lavagem")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS --
-----------------------------------------------------------------------------------------------------------------------------------------
local papel = false
local colocarpapel = false
local pegarnota = false
local colocarnota = false
local embalando = false
-------------------------------------------------------------------------------------------------
--[ AÇÃO ]---------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
Citizen.CreateThread(function() -- PEGAR PAPEL
	while true do
		local sleep = 1000
		--	if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),935.97, -1464.54, 23.05, true ) <= 2 and not papel then

			if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),935.97, -1464.54, 23.05, true ) <= 2 and not papel then
				sleep = 1
				DrawText3D(935.97, -1464.54, 23.05, "[~y~E~w~] Para coletar uma qtd de ~y~PAPEL~w~.")
				if IsControlJustPressed(0,38) and emP.checkPermissao() then
					if emP.checkDinheiro() then
						local ped = PlayerPedId()
						papel = true
						vRP._playAnim(true,{{"anim@heists@box_carry@","idle"}},true)
						vRP._CarregarObjeto("anim@heists@box_carry@","idle","bkr_prop_prtmachine_paperream",50,28422,0.0,-0.35,-0.05,0.0,180.0,0.0)
						TriggerEvent("Notify","sucesso","Coloque os papeis na mesa de impressão!")
					end
				end
			end

		Citizen.Wait(sleep)
	end
end)

Citizen.CreateThread(function() -- COLOCAR PAPEL
	while true do
		local sleep = 1000

	--	if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),941.08, -1464.87, 23.05, true ) <= 2 and papel and not colocarpapel then
			if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),941.08, -1464.87, 23.05, true ) <= 2 and papel and not colocarpapel then
				sleep = 1
				DrawText3D(941.08, -1464.87, 23.05, "[~y~E~w~] Para colocar o ~y~PAPEL~w~ na máquina.")
				if IsControlJustPressed(0,38) and emP.checkPermissao() then
					sleep = 5
					local ped = PlayerPedId()
					colocarpapel = true
					vRP._DeletarObjeto(source)
					vRP._stopAnim(source,false)
					notasfalsa = CreateObject(GetHashKey("bkr_prop_prtmachine_moneyream"),940.68, -1475.79, 23.63-1.1,true,true,true)
					TriggerEvent("Notify","aviso","Notas em processo de impressão...")
					Wait(3000)
					TriggerEvent("Notify","sucesso","Pegue as notas no outro lado da máquina!")
				end
			end
	--	end
		Citizen.Wait(sleep)
	end
end)

Citizen.CreateThread(function() -- PEGAR NOTAS FALSAS
	while true do
		local sleep = 1000

	--	if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),940.83, -1475.95, 23.63, true ) <= 2 and colocarpapel and not pegarnota then
			
			if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),940.83, -1475.95, 23.63, true ) <= 2 and colocarpapel and not pegarnota then
				sleep = 1
				DrawText3D(940.83, -1475.95, 23.63, "[~y~E~w~] Para pegar as ~y~NOTAS FALSAS~w~.")
				if IsControlJustPressed(0,38) and emP.checkPermissao() then
					sleep = 5
					local ped = PlayerPedId()
					pegarnota = true
					vRP._playAnim(true,{{"anim@heists@box_carry@","idle"}},true)
					vRP._CarregarObjeto("anim@heists@box_carry@","idle","bkr_prop_prtmachine_moneyream",50,28422,0.0,-0.35,-0.05,0.0,180.0,0.0)
					TriggerEvent("Notify","aviso","Vá fazer o corte das notas, na mesa de corte!")
					DeleteObject(notasfalsa)
				end
			end
	--	end	
		Citizen.Wait(sleep)
	end
end)

Citizen.CreateThread(function() -- COLOCAR NOTAS FALSAS
	while true do
		local sleep = 1000

		--if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),932.01, -1468.16, 23.05, true ) <= 2 and pegarnota and not colocarnota then
			
			if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),932.01, -1468.16, 23.05, true ) <= 2 and pegarnota and not colocarnota then
				sleep = 1
				DrawText3D(932.01, -1468.16, 23.05, "[~y~E~w~] Para colocar na mesa as ~y~NOTAS FALSAS~w~.")
				if IsControlJustPressed(0,38) and emP.checkPermissao() then
					sleep = 5
					local ped = PlayerPedId()
					colocarnota = true
					vRP._DeletarObjeto(source)
					vRP._stopAnim(source,false)
					notasfalsa1 = CreateObject(GetHashKey("bkr_prop_prtmachine_moneyream"),932.59, -1467.87, 23.99-1.1,true,true,true)
				end
			end
		--end
		Citizen.Wait(sleep)
	end
end)

Citizen.CreateThread(function() -- cortou NOTAS FALSAS
	while true do
		local sleep = 1000

	--	if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), 931.98, -1467.93, 23.05, true ) <= 2 and colocarnota and not embalando then
			
			if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), 931.98, -1467.93, 23.05, true ) <= 2 and colocarnota and not embalando then
				sleep = 1
				DrawText3D(931.98, -1467.93, 23.05, "[~y~E~w~] Para cortar as ~y~NOTAS FALSAS~w~.")
				if IsControlJustPressed(0,38) and emP.checkPermissao() then
					sleep = 5
					local ped = PlayerPedId()
					TriggerServerEvent("lavar-dinheiro","contardinheiro")
					SetEntityHeading(ped,284.14)
					SetEntityCoords(ped,931.98, -1467.93, 23.05-0,7,false,false,false,false)
					embalando = true
					colocarnota = false
					pegarnota = false
					colocarpapel = false
					papel = false
					SetTimeout(10000,function()
						embalando = false
						emP.checkPayment()
						DeleteObject(notasfalsa1)
					end)
				end
			end
	--	end
		Citizen.Wait(sleep)
	end
end)
-------------------------------------------------------------------------------------------------
--[ ANTI-BUG ]-----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		skips = 1000
		if papel then
			skips = 1
			DisableControlAction(0,167,true)
			DisableControlAction(0,21,true)
			DisableControlAction(0,22,true)
		end
		Wait(skips)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES --
-----------------------------------------------------------------------------------------------------------------------------------------
function DrawText3D(x,y,z,text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    SetTextScale(0.34, 0.34)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370 +0.02
    DrawRect(_x,_y+0.0125, 0.001+ factor, 0.028, 0, 0, 0, 78)
end