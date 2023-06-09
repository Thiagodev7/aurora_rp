local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
func = Tunnel.getInterface("sks_regis")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
local andamento = false
local segundos = 0
-----------------------------------------------------------------------------------------------------------------------------------------
-- GERANDO LOCAL DO ROUBO
-----------------------------------------------------------------------------------------------------------------------------------------
local locais = {
	-------------------LOJINHAS----------
	{ ['id'] = 1, ['x'] = 24.49, ['y'] = -1344.99, ['z'] = 29.49, ['h'] = 274.11 }, --2
	{ ['id'] = 2, ['x'] = 2554.90, ['y'] = 380.94, ['z'] = 108.62, ['h'] = 359.19 }, --3
	{ ['id'] = 3, ['x'] = 1165.07, ['y'] = -324.50, ['z'] = 69.20, ['h'] = 118.7 }, --4
	{ ['id'] = 4, ['x'] = -706.10, ['y'] = -915.43, ['z'] = 19.21, ['h'] = 107.91 }, -- 1
	{ ['id'] = 5, ['x'] = -47.96, ['y'] = -1759.34, ['z'] = 29.42, ['h'] = 65.0 }, --5
	{ ['id'] = 6, ['x'] = 373.10, ['y'] = 328.64, ['z'] = 103.56, ['h'] = 253.0 }, --6
	{ ['id'] = 7, ['x'] = -3244.56, ['y'] = 1000.20, ['z'] = 12.83, ['h'] = 356.37 }, --7
	{ ['id'] = 8, ['x'] = 1728.90, ['y'] = 6417.25, ['z'] = 35.03, ['h'] = 252.0 }, --8
	{ ['id'] = 9, ['x'] = 549.33, ['y'] = 2669.04, ['z'] = 42.15, ['h'] = 101.0 }, --9
	{ ['id'] = 10, ['x'] = 1958.96, ['y'] = 3742.01, ['z'] = 32.34, ['h'] = 297.0 }, --10
	{ ['id'] = 11, ['x'] = 2676.03, ['y'] = 3280.56, ['z'] = 55.24, ['h'] = 327.0 }, --11
	{ ['id'] = 12, ['x'] = 1696.57, ['y'] = 4923.95, ['z'] = 42.06, ['h'] = 340.0 }, --12
	{ ['id'] = 13, ['x'] = -1818.89, ['y'] = 792.94, ['z'] = 138.08, ['h'] = 147.0 }, --13
	{ ['id'] = 14, ['x'] = -2966.42, ['y'] = 390.33, ['z'] = 15.04, ['h'] = 45.6 }, --14
	{ ['id'] = 15, ['x'] = 1134.2, ['y'] = -982.01, ['z'] = 46.41, ['h'] = 254.0 }, --15
	{ ['id'] = 16, ['x'] = -1485.93, ['y'] = -378.43, ['z'] = 40.16, ['h'] = 109.85 },
	{ ['id'] = 17, ['x'] = -1222.42, ['y'] = -908.6, ['z'] = 12.33, ['h'] = 7.15 },
	-----------------AMMUNATTION--------
	{ ['id'] = 18, ['x'] = 253.34, ['y'] = -51.8, ['z'] = 69.95, ['h'] = 68.02 }, --
	{ ['id'] = 19, ['x'] = -1304.48, ['y'] = -395.95, ['z'] = 36.7, ['h'] = 71.83 },	 --
	{ ['id'] = 20, ['x'] = -660.98, ['y'] = -933.61, ['z'] = 21.83, ['h'] = 175.16 }, --
	{ ['id'] = 21, ['x'] = 23.81, ['y'] = -1105.99, ['z'] = 29.8, ['h'] = 155.93 }, --
	{ ['id'] = 22, ['x'] = 841.07, ['y'] = -1035.25, ['z'] = 28.2, ['h'] = 358.99 }, --
	{ ['id'] = 23, ['x'] = 808.89, ['y'] = -2158.98, ['z'] = 29.62, ['h'] = 1.23 }, --
	{ ['id'] = 24, ['x'] = 2566.6, ['y'] = 292.64, ['z'] = 108.74, ['h'] = 7.01 }, --
	{ ['id'] = 25, ['x'] = 1693.18, ['y'] = 3761.93, ['z'] = 34.71, ['h'] = 226.26 }, --
	{ ['id'] = 26, ['x'] = -1117.92, ['y'] = 2700.65, ['z'] = 18.56, ['h'] = 223.13 }, --
	{ ['id'] = 27, ['x'] = -3172.97, ['y'] = 1089.62, ['z'] = 20.84, ['h'] = 247.96 }, --
	{ ['id'] = 28, ['x'] = -330.7, ['y'] = 6085.91, ['z'] = 31.46, ['h'] = 223.65 } --
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- ROTEIRO DO ROUBO
-----------------------------------------------------------------------------------------------------------------------------------------

Citizen.CreateThread(function()
	while true do
		local skips = 1000
		local ped = PlayerPedId()
		local x,y,z = table.unpack(GetEntityCoords(ped))
		if GetSelectedPedWeapon(ped) == GetHashKey("WEAPON_UNARMED") and not IsPedInAnyVehicle(ped) then
			for k,v in pairs(locais) do
				if Vdist(v.x,v.y,v.z,x,y,z) <= 1 and not andamento then
					skips = 4
					DrawMarker(27,v.x,v.y,v.z-1.0,0,0,0,0,180.0,130.0,0.5,0.5,0.5,255,255,255,50,0,0,0,1)
					skips = 4
					DrawMarker(2,v.x,v.y,v.z-0.4,0,0,0,0,180.0,130.0,0.3,0.3,0.3,255,255,255,50,1,0,0,1)
					drawTxt("PARA ~r~INICIAR O ROUBO~w~ APERTE A TECLA ~r~G",4,0.5,0.88,0.5,255,255,255,100)
					if IsControlJustPressed(0,183) and func.checkPermission() then
						func.checkRobbery(v.id,v.x,v.y,v.z)
					end
				end
			end
		end
		Citizen.Wait(skips)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- INICIANDO O ROUBO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("iniciandoregistradora")
AddEventHandler("iniciandoregistradora",function(head,x,y,z)
	segundos = 10
	andamento = true
	SetEntityHeading(PlayerPedId(),head)
	SetEntityCoords(PlayerPedId(),x,y,z-1,false,false,false,false)
	TriggerEvent('cancelando',true)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONTAGEM
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		if andamento then
			segundos = segundos - 1
			if segundos <= 0 then
				andamento = false
				ClearPedTasks(PlayerPedId())
				TriggerEvent('cancelando',false)
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES
-----------------------------------------------------------------------------------------------------------------------------------------
function drawTxt(text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end