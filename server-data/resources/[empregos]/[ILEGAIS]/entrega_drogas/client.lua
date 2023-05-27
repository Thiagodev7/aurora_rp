local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
emp = Tunnel.getInterface("entrega_drogas")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
local emservico = false
local emservico1 = false
local emservico2 = false
local quantidademeta = 0
local quantidadecoca = 0
local quantidademaconha = 0
local statuses = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- GERANDO LOCAL DE ENTREGA
-----------------------------------------------------------------------------------------------------------------------------------------
local entregasmeta = {
	[1] = {x = 362.78, y = 186.08, z = 103.06},
	[2] = {x = -18.47, y = 218.92, z = 106.75},
	[3] = {x = -105.7, y = 33.13, z = 71.44},
	[4] = {x = -196.22, y = 16.78, z = 56.32},
	[5] = {x = -315.32, y = -3.07, z = 48.16},
	[6] = {x = -431.21, y = -24.09, z = 46.23},
	[7] = {x = -837.82, y = -162.01, z = 37.78},
	[8] = {x = -1041.99, y = -240.89, z = 37.97},
	[9] = {x = -838.12, y = -607.9, z = 29.03},
	[10] = {x = -731.7, y = -693.67, z = 30.38},
	[11] = {x = -655.83, y = -863.6, z = 24.57},
	[12] = {x = -1040.74, y = -1136.08, z = 2.16},
	[13] = {x = -1269.96, y = -1296.37, z = 4.01},
	[14] = {x = -1183.16, y = -1557.11, z = 4.87},
	[15] = {x = -1323.16, y = -1025.85, z = 7.76},
	[16] = {x = -534.06, y = -2201.31, z = 6.36},
	[17] = {x = -629.76, y = -2265.63, z = 5.94},
	[18] = {x = -696.15, y = -1386.66, z = 5.5},
	[19] = {x = -703.3, y = -1179.97, z = 10.62},
	[20] = {x = -828.15, y = -1090.08, z = 11.14},
	[21] = {x = -699.71, y = 706.05, z = 158.13},
	[22] = {x = -232.68, y = 588.45, z = 190.54},
	[23] = {x = -1961.1, y = 211.93, z = 86.82},
	[24] = {x = -1425.99, y = -99.09, z = 51.8},
	[25] = {x = -1444.82, y = -217.73, z = 48.67},
	[26] = {x = 1990.85, y = 3779.87, z = 32.19},
	[27] = {x = 1880.7, y = 3810.49, z = 32.78},
	[28] = {x = 1737.29, y = 3708.88, z = 34.13},
	[29] = {x = 1435.42, y = 3657.15, z = 34.41},
	[30] = {x = 1406.36, y = 3603.85, z = 35.01},
	[31] = {x = -389.21, y = 6050.11, z = 31.51},
	[32] = {x = -407.1, y = 6314.34, z = 28.95},
	[33] = {x = -276.41, y = 6239.03, z = 31.49},
	[34] = {x = -90.35, y = 6357.01, z = 31.58},
	[35] = {x = -41.48, y = 6637.45, z = 31.09},
	[36] = {x = -42.25, y = 6435.13, z = 31.64},
	[37] = {x = -52.12, y = 6360.28, z = 31.6},
	[38] = {x = -250.6, y = 6159.41, z = 31.48},
	[39] = {x = 868.95, y = -1628.77, z = 30.42},
	[40] = {x = 746.61, y = -1766.96, z = 29.3},
	[41] = {x = 980.04, y = -1396.82, z = 31.69},
	[42] = {x = 747.09, y = -1399.4, z = 26.62},
	[43] = {x = 805.16, y = -1063.38, z = 28.43},
	[44] = {x = 758.35, y = -815.79, z = 26.4},

}
-----------------------------------------------------------------------------------------------------------------------------------------
-- INICIANDO TRABALHO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('entrega_metafetamina:permissao')
AddEventHandler('entrega_metafetamina:permissao',function()
	if not emservico1 then
		emservico1 = true
		destinometa = math.random(1,44)
		quantidademeta = math.random(1,4)
		CriandoBlipMeta(entregasmeta,destinometa)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GERANDO ENTREGA
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do

		local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), 581.75, 2434.4, 58.8,true)
		local skips = 1000

		if distance <= 6 then
			skips = 1
			DrawMarker(31,581.75, 2434.4, 58.8-0.6,0,0,0,0.0,0,0,0.8,0.8,0.8,255, 255, 0,100,0,0,0,1)
		if distance <= 1 then
			skips = 1
			DrawText3Ds(581.75, 2434.4, 58.8+0.5,"PRESSIONE ~r~E~w~ PARA COMEÇAR MISSÃO")
            if IsControlJustPressed(0,38) then	-- COMEÇAR MISSÃO
				if emp.checkItemMeta() then
					TriggerEvent('entrega_metafetamina:permissao') 
					TriggerEvent("Notify","sucesso","Você pegou a rota de serviço, vá até o local para vender!")
				end
			end
		end
		end

		if emservico1 then
			local ui = GetMinimapAnchor()
			local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),entregasmeta[destinometa].x,entregasmeta[destinometa].y,entregasmeta[destinometa].z,true)
			if IsControlJustPressed(0,246) then	
				statuses = not statuses
			end
			if statuses then
				skips = 1
				drawTxt(ui.right_x+0.050,ui.bottom_y-0.076,1.0,1.0,0.35,"PRESSIONE ~r~F7 ~w~PARA CANCELAR A ENTREGA",255,255,255,150)
				skips = 1
				drawTxt(ui.right_x+0.050,ui.bottom_y-0.058,1.0,1.0,0.45,"ENTREGUE ~g~"..quantidademeta.."~w~ METAS",255,255,255,255)
			else
				skips = 1
				drawTxt(ui.right_x+0.050,ui.bottom_y-0.040,1.0,1.0,0.35,"PRESSIONE ~r~Y ~w~PARA VER A MISSÃO",255,255,255,150)
			end
			if distance <= 50 then
				skips = 1
				DrawMarker(21,entregasmeta[destinometa].x,entregasmeta[destinometa].y,entregasmeta[destinometa].z+0.10,0,0,0,0,180.0,130.0,0.7,0.7,0.7,211,176,72,100,1,0,0,1)
				if distance < 3 then
					skips = 1
					DrawText3Ds(entregasmeta[destinometa].x,entregasmeta[destinometa].y,entregasmeta[destinometa].z+0.5, "~y~[E]~w~ PARA ENTREGAR A DROGA")
                    if IsControlJustPressed(0,38) then
						if not IsPedInAnyVehicle(PlayerPedId()) then	
							destinoantigo = destinometa
							RemoveBlip(blip)
							TriggerServerEvent('entrega_metafetamina:itensReceber', quantidademeta)
							local random = math.random(100)
								if random >= 60 then
									emp.MarcarOcorrencia()
									TriggerEvent("Notify","aviso","Algum pedestre avistou e ligou para a policia!")
								end
							while true do
								if destinoantigo == destinometa then
									destinometa = math.random(1,44)
								else
									break
								end
								Citizen.Wait(1)
							end
							CriandoBlipMeta(entregasmeta,destinometa)
						else
							TriggerEvent("Notify","aviso","Saia do veiculo para realizar a entrega!")
						end
					end
				end
			end
		end
		Citizen.Wait(skips)
	end
end)



-----------------------------------------------------------------------------------------------------------------------------------------
-- CANCELANDO ENTREGA
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		skips = 1000
			if emservico1 then
				skips = 1
				if IsControlJustPressed(0,168) then
					emservico1 = false
					RemoveBlip(blip)
					TriggerEvent("Notify","aviso","Entrega das drogas cancelada com sucesso!")
				end
			end
		Wait(skips)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCOES
-----------------------------------------------------------------------------------------------------------------------------------------

function drawTxt(x,y,width,height,scale,text,r,g,b,a)
    SetTextFont(4)
    SetTextScale(scale,scale)
    SetTextColour(r,g,b,a)
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x,y)
end

function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
end

function GetMinimapAnchor()
    local safezone = GetSafeZoneSize()
    local safezone_x = 1.0 / 20.0
    local safezone_y = 1.0 / 20.0
    local aspect_ratio = GetAspectRatio(0)
    local res_x, res_y = GetActiveScreenResolution()
    local xscale = 1.0 / res_x
    local yscale = 1.0 / res_y
    local Minimap = {}
    Minimap.width = xscale * (res_x / (4 * aspect_ratio))
    Minimap.height = yscale * (res_y / 5.674)
    Minimap.left_x = xscale * (res_x * (safezone_x * ((math.abs(safezone - 1.0)) * 10)))
    Minimap.bottom_y = 1.0 - yscale * (res_y * (safezone_y * ((math.abs(safezone - 1.0)) * 10)))
    Minimap.right_x = Minimap.left_x + Minimap.width
    Minimap.top_y = Minimap.bottom_y - Minimap.height
    Minimap.x = Minimap.left_x
    Minimap.y = Minimap.top_y
    Minimap.xunit = xscale
    Minimap.yunit = yscale
    return Minimap
end

function CriandoBlipMeta(entregasmeta,destinometa)
	blip = AddBlipForCoord(entregasmeta[destinometa].x,entregasmeta[destinometa].y,entregasmeta[destinometa].z)
	SetBlipSprite(blip,1)
	SetBlipColour(blip,1)
	SetBlipScale(blip,0.7)
	SetBlipAsShortRange(blip,false)
	SetBlipRoute(blip,true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Entrega de Cocaina")
	EndTextCommandSetBlipName(blip)
end


-----------------------------------------------------------------------------------------------------------------------------------------
-- COCAINA -----------------------
-----------------------------------------------------------------------------------------------------------------------------------------
local entregascoca = {
	[1] = {x = 362.78, y = 186.08, z = 103.06},
	[2] = {x = -18.47, y = 218.92, z = 106.75},
	[3] = {x = -105.7, y = 33.13, z = 71.44},
	[4] = {x = -196.22, y = 16.78, z = 56.32},
	[5] = {x = -315.32, y = -3.07, z = 48.16},
	[6] = {x = -431.21, y = -24.09, z = 46.23},
	[7] = {x = -837.82, y = -162.01, z = 37.78},
	[8] = {x = -1041.99, y = -240.89, z = 37.97},
	[9] = {x = -838.12, y = -607.9, z = 29.03},
	[10] = {x = -731.7, y = -693.67, z = 30.38},
	[11] = {x = -655.83, y = -863.6, z = 24.57},
	[12] = {x = -1040.74, y = -1136.08, z = 2.16},
	[13] = {x = -1269.96, y = -1296.37, z = 4.01},
	[14] = {x = -1183.16, y = -1557.11, z = 4.87},
	[15] = {x = -1323.16, y = -1025.85, z = 7.76},
	[16] = {x = -534.06, y = -2201.31, z = 6.36},
	[17] = {x = -629.76, y = -2265.63, z = 5.94},
	[18] = {x = -696.15, y = -1386.66, z = 5.5},
	[19] = {x = -703.3, y = -1179.97, z = 10.62},
	[20] = {x = -828.15, y = -1090.08, z = 11.14},
	[21] = {x = -699.71, y = 706.05, z = 158.13},
	[22] = {x = -232.68, y = 588.45, z = 190.54},
	[23] = {x = -1961.1, y = 211.93, z = 86.82},
	[24] = {x = -1425.99, y = -99.09, z = 51.8},
	[25] = {x = -1444.82, y = -217.73, z = 48.67},
	[26] = {x = 1990.85, y = 3779.87, z = 32.19},
	[27] = {x = 1880.7, y = 3810.49, z = 32.78},
	[28] = {x = 1737.29, y = 3708.88, z = 34.13},
	[29] = {x = 1435.42, y = 3657.15, z = 34.41},
	[30] = {x = 1406.36, y = 3603.85, z = 35.01},
	[31] = {x = -389.21, y = 6050.11, z = 31.51},
	[32] = {x = -407.1, y = 6314.34, z = 28.95},
	[33] = {x = -276.41, y = 6239.03, z = 31.49},
	[34] = {x = -90.35, y = 6357.01, z = 31.58},
	[35] = {x = -41.48, y = 6637.45, z = 31.09},
	[36] = {x = -42.25, y = 6435.13, z = 31.64},
	[37] = {x = -52.12, y = 6360.28, z = 31.6},
	[38] = {x = -250.6, y = 6159.41, z = 31.48},
	[39] = {x = 868.95, y = -1628.77, z = 30.42},
	[40] = {x = 746.61, y = -1766.96, z = 29.3},
	[41] = {x = 980.04, y = -1396.82, z = 31.69},
	[42] = {x = 747.09, y = -1399.4, z = 26.62},
	[43] = {x = 805.16, y = -1063.38, z = 28.43},
	[44] = {x = 758.35, y = -815.79, z = 26.4},

}
-----------------------------------------------------------------------------------------------------------------------------------------
-- INICIANDO TRABALHO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('entrega_coca:permissao')
AddEventHandler('entrega_coca:permissao',function()
	if not emservico then
		emservico = true
		destinococa = math.random(1,44)
		quantidadecoca = math.random(1,4)
		CriandoBlipcoca(entregascoca,destinococa)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GERANDO ENTREGA
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do


		local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), -2408.31, 1750.26, 187.63,true)
		local skips = 1000

		if distance <= 6 then
			skips = 1
			DrawMarker(31,-2408.31, 1750.26, 187.63-0.6,0,0,0,0.0,0,0,0.8,0.8,0.8,0, 255, 0,100,0,0,0,1)
		if distance <= 1 then
			skips = 1
			DrawText3Ds(-2408.31, 1750.26, 187.63+0.5,"PRESSIONE ~r~E~w~ PARA COMEÇAR MISSÃO")
            if IsControlJustPressed(0,38) then	-- COMEÇAR MISSÃO
				if emp.checkItemCoca() then
					TriggerEvent('entrega_coca:permissao')
					TriggerEvent("Notify","sucesso","Você pegou a rota de serviço, vá até o local para vender!")
				end
			end
		end
		end

		if emservico then
			local ui = GetMinimapAnchor()
			local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),entregascoca[destinococa].x,entregascoca[destinococa].y,entregascoca[destinococa].z,true)
			if IsControlJustPressed(0,246) then	
				statuses = not statuses
			end
			if statuses then
				skips = 1
				drawTxt(ui.right_x+0.050,ui.bottom_y-0.076,1.0,1.0,0.35,"PRESSIONE ~r~F7 ~w~PARA CANCELAR A ENTREGA",255,255,255,150)
				skips = 1
				drawTxt(ui.right_x+0.050,ui.bottom_y-0.058,1.0,1.0,0.45,"ENTREGUE ~g~"..quantidadecoca.."~w~ COCAINAS",255,255,255,255)
			else
				skips = 1
				drawTxt(ui.right_x+0.050,ui.bottom_y-0.040,1.0,1.0,0.35,"PRESSIONE ~r~Y ~w~PARA VER A MISSÃO",255,255,255,150)
			end
			if distance <= 50 then
				skips = 1
				DrawMarker(21,entregascoca[destinococa].x,entregascoca[destinococa].y,entregascoca[destinococa].z+0.10,0,0,0,0,180.0,130.0,0.7,0.7,0.7,211,176,72,100,1,0,0,1)
				if distance < 3 then
					skips = 1
					DrawText3Ds(entregascoca[destinococa].x,entregascoca[destinococa].y,entregascoca[destinococa].z+0.5, "~y~[E]~w~ PARA ENTREGAR A DROGA")
                    if IsControlJustPressed(0,38) then
						if not IsPedInAnyVehicle(PlayerPedId()) then	
							destinoantigo = destinococa
							RemoveBlip(blip)
							TriggerServerEvent('entrega_coca:itensReceber', quantidadecoca)
							local random = math.random(100)
								if random >= 60 then
									emp.MarcarOcorrencia()
									TriggerEvent("Notify","aviso","Algum pedestre avistou e ligou para a policia!")
								end
							while true do
								if destinoantigo == destinococa then
									destinococa = math.random(1,44)
								else
									break
								end
								Citizen.Wait(1)
							end
							CriandoBlipcoca(entregascoca,destinococa)
						else
							TriggerEvent("Notify","aviso","Saia do veiculo para realizar a entrega!")
						end
					end
				end
			end
		end
		Citizen.Wait(skips)
	end
end)




-----------------------------------------------------------------------------------------------------------------------------------------
-- CANCELANDO ENTREGA
-----------------------------------------------------------------------------------------------------------------------------------------

Citizen.CreateThread(function()
	while true do
		skips = 1000
			if emservico then
				skips = 1
				if IsControlJustPressed(0,168) then
					emservico = false
					RemoveBlip(blip)
					TriggerEvent("Notify","aviso","Entrega das drogas cancelada com sucesso!")
				end
			end
		Wait(skips)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCOES
-----------------------------------------------------------------------------------------------------------------------------------------


function CriandoBlipcoca(entregascoca,destinococa)
	blip = AddBlipForCoord(entregascoca[destinococa].x,entregascoca[destinococa].y,entregascoca[destinococa].z)
	SetBlipSprite(blip,1)
	SetBlipColour(blip,1)
	SetBlipScale(blip,0.7)
	SetBlipAsShortRange(blip,false)
	SetBlipRoute(blip,true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Entrega de Cocaina")
	EndTextCommandSetBlipName(blip)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- MACONHA ------------
-----------------------------------------------------------------------------------------------------------------------------------------
local entregasmaconha = {
	[1] = {x = 362.78, y = 186.08, z = 103.06},
	[2] = {x = -18.47, y = 218.92, z = 106.75},
	[3] = {x = -105.7, y = 33.13, z = 71.44},
	[4] = {x = -196.22, y = 16.78, z = 56.32},
	[5] = {x = -315.32, y = -3.07, z = 48.16},
	[6] = {x = -431.21, y = -24.09, z = 46.23},
	[7] = {x = -837.82, y = -162.01, z = 37.78},
	[8] = {x = -1041.99, y = -240.89, z = 37.97},
	[9] = {x = -838.12, y = -607.9, z = 29.03},
	[10] = {x = -731.7, y = -693.67, z = 30.38},
	[11] = {x = -655.83, y = -863.6, z = 24.57},
	[12] = {x = -1040.74, y = -1136.08, z = 2.16},
	[13] = {x = -1269.96, y = -1296.37, z = 4.01},
	[14] = {x = -1183.16, y = -1557.11, z = 4.87},
	[15] = {x = -1323.16, y = -1025.85, z = 7.76},
	[16] = {x = -534.06, y = -2201.31, z = 6.36},
	[17] = {x = -629.76, y = -2265.63, z = 5.94},
	[18] = {x = -696.15, y = -1386.66, z = 5.5},
	[19] = {x = -703.3, y = -1179.97, z = 10.62},
	[20] = {x = -828.15, y = -1090.08, z = 11.14},
	[21] = {x = -699.71, y = 706.05, z = 158.13},
	[22] = {x = -232.68, y = 588.45, z = 190.54},
	[23] = {x = -1961.1, y = 211.93, z = 86.82},
	[24] = {x = -1425.99, y = -99.09, z = 51.8},
	[25] = {x = -1444.82, y = -217.73, z = 48.67},
	[26] = {x = 1990.85, y = 3779.87, z = 32.19},
	[27] = {x = 1880.7, y = 3810.49, z = 32.78},
	[28] = {x = 1737.29, y = 3708.88, z = 34.13},
	[29] = {x = 1435.42, y = 3657.15, z = 34.41},
	[30] = {x = 1406.36, y = 3603.85, z = 35.01},
	[31] = {x = -389.21, y = 6050.11, z = 31.51},
	[32] = {x = -407.1, y = 6314.34, z = 28.95},
	[33] = {x = -276.41, y = 6239.03, z = 31.49},
	[34] = {x = -90.35, y = 6357.01, z = 31.58},
	[35] = {x = -41.48, y = 6637.45, z = 31.09},
	[36] = {x = -42.25, y = 6435.13, z = 31.64},
	[37] = {x = -52.12, y = 6360.28, z = 31.6},
	[38] = {x = -250.6, y = 6159.41, z = 31.48},
	[39] = {x = 868.95, y = -1628.77, z = 30.42},
	[40] = {x = 746.61, y = -1766.96, z = 29.3},
	[41] = {x = 980.04, y = -1396.82, z = 31.69},
	[42] = {x = 747.09, y = -1399.4, z = 26.62},
	[43] = {x = 805.16, y = -1063.38, z = 28.43},
	[44] = {x = 758.35, y = -815.79, z = 26.4},

}
-----------------------------------------------------------------------------------------------------------------------------------------
-- INICIANDO TRABALHO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('entrega_maconha:permissao')
AddEventHandler('entrega_maconha:permissao',function()
	if not emservico2 then
		emservico2 = true
		destinomaconha = math.random(1,44)
		quantidademaconha = math.random(1,4)
		CriandoBlip(entregasmaconha,destinomaconha)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GERANDO ENTREGA
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), 1563.1, -66.08, 158.56,true)
		local skips = 1000

		if distance <= 6 then
			skips = 1
			DrawMarker(31,1563.1, -66.08, 158.56-0.6,0,0,0,0.0,0,0,0.8,0.8,0.8,255, 0, 255,100,0,0,0,1)
		if distance <= 1 then
			skips = 1
			DrawText3Ds(1563.1, -66.08, 158.56+0.5,"PRESSIONE ~r~E~w~ PARA COMEÇAR MISSÃO")
            if IsControlJustPressed(0,38) then	-- COMEÇAR MISSÃO
				if emp.checkItemMaconha() then
					TriggerEvent('entrega_maconha:permissao')
					TriggerEvent("Notify","sucesso","Você pegou a rota de serviço, vá até o local para vender!")
				end
			end
		end
		end

		if emservico2 then
			local ui = GetMinimapAnchor()
			local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),entregasmaconha[destinomaconha].x,entregasmaconha[destinomaconha].y,entregasmaconha[destinomaconha].z,true)
			if IsControlJustPressed(0,246) then	-- VER MISSÃO
				statuses = not statuses
			end
			if statuses then
				skips = 1
				drawTxt(ui.right_x+0.050,ui.bottom_y-0.076,1.0,1.0,0.35,"PRESSIONE ~r~F7 ~w~PARA CANCELAR A ENTREGA",255,255,255,150)
				skips = 1
				drawTxt(ui.right_x+0.050,ui.bottom_y-0.058,1.0,1.0,0.45,"ENTREGUE ~g~"..quantidademaconha.."~w~ MACONHAS",255,255,255,255)
			else
				skips = 1
				drawTxt(ui.right_x+0.050,ui.bottom_y-0.040,1.0,1.0,0.35,"PRESSIONE ~r~Y ~w~PARA VER A MISSÃO",255,255,255,150)
			end
			if distance <= 50 then
				skips = 1
				DrawMarker(21,entregasmaconha[destinomaconha].x,entregasmaconha[destinomaconha].y,entregasmaconha[destinomaconha].z,0,0,0,0,180.0,130.0,0.7,0.7,0.7,211,176,72,100,1,0,0,1)
				if distance < 3 then
					skips = 1
					DrawText3Ds(entregasmaconha[destinomaconha].x,entregasmaconha[destinomaconha].y,entregasmaconha[destinomaconha].z+0.5, "~y~[E]~w~ PARA ENTREGAR A DROGA")
					if IsControlJustPressed(0,38) then -- ENTREGAR
						if not IsPedInAnyVehicle(PlayerPedId()) then	
							destinoantigo = destinomaconha
							RemoveBlip(blip)
							TriggerServerEvent('entrega_maconha:itensReceber', quantidademaconha)
							local random = math.random(100)
								if random >= 60 then
									emp.MarcarOcorrencia()
									TriggerEvent("Notify","aviso","Algum pedestre avistou e ligou para a policia!")
								end
							while true do
								if destinoantigo == destinomaconha then
									destinomaconha = math.random(1,44)
								else
									break
								end
								Citizen.Wait(1)
							end
							CriandoBlip(entregasmaconha,destinomaconha)
						else
							TriggerEvent("Notify","aviso","Saia do veiculo para realizar a entrega!")
						end
					end
				end
			end
		end
		Citizen.Wait(skips)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- CANCELANDO ENTREGA
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		skips = 1000
			if emservico2 then
				skips = 1
				if IsControlJustPressed(0,168) then
					emservico2 = false
					RemoveBlip(blip)
					TriggerEvent("Notify","aviso","Entregas das drogas cancelada com sucesso!")
				end
			end
		Wait(skips)
	end
end)


-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCOES
-----------------------------------------------------------------------------------------------------------------------------------------


function CriandoBlip(entregasmaconha,destinomaconha)
	blip = AddBlipForCoord(entregasmaconha[destinomaconha].x,entregasmaconha[destinomaconha].y,entregasmaconha[destinomaconha].z)
	SetBlipSprite(blip,1)
	SetBlipColour(blip,1)
	SetBlipScale(blip,0.7)
	SetBlipAsShortRange(blip,false)
	SetBlipRoute(blip,true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Entrega de Maconhas")
	EndTextCommandSetBlipName(blip)
end