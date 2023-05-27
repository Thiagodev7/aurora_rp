--[[
    PROPOSTA:
        

]]

local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")

vSERVER = Tunnel.getInterface("sks_desmanche")

blzr = {}
Tunnel.bindInterface("sks_desmanche", blzr)

vRP = Proxy.getInterface("vRP")
vRPclient = Proxy.getInterface("vRP")

---------------------------------------------------------------------
-- CONFIG
---------------------------------------------------------------------
-- FV
local IniciarServico = {1535.0450439453,3547.3347167969,36.350666046143} -- Onde se inicia o serviço e verifica a existência de um carro
local LocalDesmancharCarro = {1535.0450439453,3547.3347167969,36.350666046143} -- Onde deve haver o carro que será desmanchado para poder continuar o desmanche
local LocalFerramentas = {1549.8748779297,3513.2395019531,36.000442504883,207.19} -- Local onde 'pegará' as ferramentas
local AnuncioChassi = {1556.1536865234,3523.2658691406,36.119976043701,37.79} -- Onde finalizará a missão para entregar o chassi e receber dinheiro e itens
local GuardarPecas = {1543.52, 3541.02, 35.37,37.79}
---------------------------------------------------------------------
--VARIAVEIS
---------------------------------------------------------------------
local blips = {}

local permitido = true
local etapa = 0 
local PosVeh = {}
local PecasRemovidas = {}
local TipoVeh = ''
local qtdPecasRemovidas = 0
local PecasVeh = 0

local proximoDesmanche = true
---------------------------------------------------------------------
-- CODIGO
---------------------------------------------------------------------




Citizen.CreateThread(function() 
    while true do
        local ThreadDelay = 1000
        if permitido then
            ThreadDelay = 0
            local ped = PlayerPedId()
            local pedCoords = GetEntityCoords(ped)
            if etapa == 0 then
                local dist = Vdist(pedCoords, IniciarServico[1], IniciarServico[2], IniciarServico[3])
                if dist < 10 then
                    if IsPedInAnyVehicle(ped,true) then
                        DrawMarker(27,IniciarServico[1], IniciarServico[2], IniciarServico[3]-0.96,0,0,0,0,0,0,4.1,4.1,0.5,255,255,255,100,0,0,0,1)

                    --   DrawMarker(21, IniciarServico[1], IniciarServico[2], IniciarServico[3]-0.5, 0, 0, 0, 180.0, 0, 0, 0.4, 0.4, 0.4, 207, 158, 25, 150, 0, 0, 0, 1)
                        if dist < 2 then
                            drawTxt("PRESSIONE  ~y~E~w~  PARA COMEÇAR O ~y~DESMANCHE~w~ DO VEÍCULO",4,0.5,0.93,0.50,255,255,255,180)

                        --  text3D(IniciarServico[1], IniciarServico[2], IniciarServico[3]-0.5, '~y~[E] ~w~PARA DESMANCHAR O VEÍCULO')
                            if IsControlJustPressed(0,38) then
                                veh = CheckVeiculo(LocalDesmancharCarro[1], LocalDesmancharCarro[2], LocalDesmancharCarro[3])
                                veh2 = GetVehiclePedIsIn(ped, false)
                                
                             --   if veh2 then 
                                    if GetPedInVehicleSeat(veh2,-1) == ped then
                                        local VehPermitido, ClasseVeh = CheckClasse(veh)
                                        placa = GetVehicleNumberPlateText(veh2)
                                        nomeCarro = GetDisplayNameFromVehicleModel(GetEntityModel(veh2))
                                        modeloCarro = GetLabelText(nomeCarro)
                                        if VehPermitido then 
                                        --   if CheckVehPermitido(nomeCarro) then
                                                if vSERVER.CheckItem() then    
                                                    if ClasseVeh == 8 then
                                                        TipoVeh = 'moto'
                                                    else
                                                        TipoVeh = 'carro'
                                                    end
                                                    
                                                    -- NOTIFICACAO AQUI
                                                    
                                                    TriggerEvent('Notify', 'sucesso ', 'Veículo identificado: <br>Veículo: <b>' .. modeloCarro .. ' (' .. nomeCarro.. ')</b><br>Placa: <b>'..placa..'</b><br><br>Continue. Pegue as ferramentas para desmanchar o veículo.')
                                                    etapa = 1
                                                    TaskLeaveVehicle(ped, veh2, 1)
                                                    FreezeEntityPosition(veh2, true)
                                                    SetVehicleDoorsLocked(veh2, 2)
                                                    
                                                else
                                                    TriggerEvent('Notify', 'negado', 'Você necessita de um <b>cartão de desmanche</b> para iniciar o serviço.')
                                                end
                                    --     else
                                        --       TriggerEvent('Notify', 'negado', 'Esse veículo não pode ser desmanchado.')
                                        -- end
                                        else
                                            TriggerEvent('Notify', 'negado', 'O veículo precisa ser um carro, van ou moto.')
                                        end
                                    else
                                        TriggerEvent("Notify","importante","Vá para o assento do motorista para iniciar o processo.")
                                    end
                          --      end
                            end
                        end
                    end
                end
            elseif etapa == 1 then
                local dist = Vdist(pedCoords, LocalFerramentas[1], LocalFerramentas[2], LocalFerramentas[3])
                if dist < 10 then
                    DrawMarker(21, LocalFerramentas[1], LocalFerramentas[2], LocalFerramentas[3]-0.5, 0, 0, 0, 180.0, 0, 0, 0.4, 0.4, 0.4, 207, 158, 25, 150, 0, 0, 0, 1)
                    if dist < 1 then
                        text3D(LocalFerramentas[1], LocalFerramentas[2], LocalFerramentas[3]-0.5, '~y~[E] ~w~PARA PEGAR AS ~y~FERRAMENTAS')
                        if IsControlJustPressed(0,38) then
                            if TipoVeh == 'carro' then
                                PosVeh['Porta_Direita'] = GetWorldPositionOfEntityBone(veh2, GetEntityBoneIndexByName(veh2,"handle_dside_f"))
                                PosVeh['Porta_Esquerda'] = GetWorldPositionOfEntityBone(veh2, GetEntityBoneIndexByName(veh2,"handle_pside_f"))
                                PosVeh['Roda_EsquerdaFrente'] = GetWorldPositionOfEntityBone(veh2, GetEntityBoneIndexByName(veh2,"wheel_lf"))
                                PosVeh['Roda_DireitaFrente'] = GetWorldPositionOfEntityBone(veh2, GetEntityBoneIndexByName(veh2,"wheel_rf"))
                                PosVeh['Roda_EsquerdaTras'] = GetWorldPositionOfEntityBone(veh2, GetEntityBoneIndexByName(veh2,"wheel_lr"))
                                PosVeh['Roda_DireitaTras'] = GetWorldPositionOfEntityBone(veh2, GetEntityBoneIndexByName(veh2,"wheel_rr"))
                                --PosVeh['Capo'] = GetWorldPositionOfEntityBone(veh, GetEntityBoneIndexByName(veh,"bumper_f"))
                                PecasVeh = 6
                            else
                                PosVeh['Roda_Frente'] = GetWorldPositionOfEntityBone(veh2, GetEntityBoneIndexByName(veh2,"wheel_lf"))
                                PosVeh['Roda_Tras'] = GetWorldPositionOfEntityBone(veh2, GetEntityBoneIndexByName(veh2,"wheel_lr"))
                                PosVeh['Banco'] = GetWorldPositionOfEntityBone(veh2, GetEntityBoneIndexByName(veh2,"chassis_dummy"))
                                PecasVeh = 3
                            end
                            FreezeEntityPosition(ped, true)
                            SetEntityHeading(ped, LocalFerramentas[4])
                            vRP.playAnim(false, {{"amb@medic@standing@kneel@idle_a", "idle_a"}}, true)
                            TriggerEvent('progress', 5000, 'Pegando as ferramentas')

                            Wait(5000)  

                            etapa = 2
                            TriggerEvent('Notify', 'sucesso ', 'Você pegou todas as ferramentas, vá e desmanche o veículo.')
                          --  TriggerEvent('Notify', 'sucesso', 'FERRAMENTAS PEGAS!', 'Você pegou todas as ferramentas, vá e desmanche o veículo.')
                            FreezeEntityPosition(ped, false)
                            ClearPedTasks(ped)
                        end
                    end
                end

            elseif etapa == 2 then

                if qtdPecasRemovidas == PecasVeh then
                    etapa = 3
                    -- print('Tudo desmontado, passando proxima etapa')
                    TriggerEvent("Notify","aviso","Veiculo desmanchado com sucesso, vá até o computador anunciar o chassi do veículo!")
                  --  TriggerEvent('Notify', 'sucesso', 'VEÍCULO DESMANCHADO COM SUCESSO!', 'Vá até a bancada e anuncie o chassi do veículo.')
                end

                for k , v in pairs(PosVeh) do
                    local x,y,z = table.unpack(v)
                    if not PecasRemovidas[k] then
                        local dist = Vdist(pedCoords, x,y,z)

                        if proximoDesmanche then
                            if dist < 10 then
                                DrawMarker(21, x, y, z+1, 0, 0, 0, 180.0, 0, 0, 0.4, 0.4, 0.4, 207, 158, 25, 150, 0, 0, 0, 1)
                                if dist < 1.0 then
                                    text3D(x, y, z+0.5, '~y~[E] ~w~PARA DESMANCHAR')
                                    if IsControlJustPressed(0, 38) then
                                        if k == 'Capo' or k == 'pMalas' then
                                            vRP.playAnim(false, {{"mini@repair" , "fixing_a_player"}}, true)
                                        elseif k == 'Porta_Direita' or k == 'Porta_Esquerda' or k == 'Banco' then
                                            vRP._playAnim(false,{task='WORLD_HUMAN_WELDING'},true)
                                        else
                                            vRP.playAnim(false, {{"amb@medic@standing@tendtodead@idle_a" , "idle_a"}}, true)
                                        end
                                    -- TriggerEvent('progress', 10000)
                                        TriggerEvent('progress', 5000, 'Desmanchando o veículo..')
                                        Wait(5000) --TEMPO PARA REMOÇÃO DA PEÇA!
                                        ClearPedTasks(ped)
                                        PecasRemovidas[k] = true
                                        qtdPecasRemovidas = qtdPecasRemovidas + 1
                                        if TipoVeh == 'carro' then
                                            if k == 'Roda_EsquerdaFrente' then
                                                SetVehicleTyreBurst(veh2, 0, true, 1000)
                                                TriggerEvent("Notify","sucesso","Pneu removido com sucesso, guarde ele para desmanchar o restante..")
                                                vRP._playAnim(true,{{"anim@heists@box_carry@","idle"}},true)
                                                vRP._CarregarObjeto("anim@heists@box_carry@","idle","prop_wheel_tyre",50,28422,0.0,-0.10,-0.2,0.0,0.0,0.0) -- 50,28422,0.07,0.1,-0.21,100.0,0.5,0.1
                                                proximoDesmanche = false
                                            elseif k == 'Roda_DireitaFrente' then
                                                SetVehicleTyreBurst(veh2, 1, true, 1000)
                                                TriggerEvent("Notify","sucesso","Pneu removido com sucesso, guarde ele para desmanchar o restante..")
                                                vRP._playAnim(true,{{"anim@heists@box_carry@","idle"}},true)
                                                vRP._CarregarObjeto("anim@heists@box_carry@","idle","prop_wheel_tyre",50,28422,0.0,-0.10,-0.2,0.0,0.0,0.0) -- 50,28422,0.07,0.1,-0.21,100.0,0.5,0.1
                                                proximoDesmanche = false
                                            elseif k == 'Roda_EsquerdaTras' then
                                                SetVehicleTyreBurst(veh2, 4, true, 1000)
                                                TriggerEvent("Notify","sucesso","Pneu removido com sucesso, guarde ele para desmanchar o restante..")
                                                vRP._playAnim(true,{{"anim@heists@box_carry@","idle"}},true)
                                                vRP._CarregarObjeto("anim@heists@box_carry@","idle","prop_wheel_tyre",50,28422,0.0,-0.10,-0.2,0.0,0.0,0.0) -- 50,28422,0.07,0.1,-0.21,100.0,0.5,0.1
                                                proximoDesmanche = false
                                            elseif k == 'Roda_DireitaTras' then
                                                SetVehicleTyreBurst(veh2, 5, true, 1000)

                                                TriggerEvent("Notify","sucesso","Pneu removido com sucesso, guarde ele para desmanchar o restante..")
                                                vRP._playAnim(true,{{"anim@heists@box_carry@","idle"}},true)
                                                vRP._CarregarObjeto("anim@heists@box_carry@","idle","prop_wheel_tyre",50,28422,0.0,-0.10,-0.2,0.0,0.0,0.0) -- 50,28422,0.07,0.1,-0.21,100.0,0.5,0.1
                                                proximoDesmanche = false

                                            elseif k == 'Porta_Direita' then
                                                SetVehicleDoorBroken(veh2, 0, true)
                                                TriggerEvent("Notify","sucesso","Porta removida com sucesso, guarde ela para desmanchar o restante..")
                                                vRP._playAnim(true,{{"anim@heists@box_carry@","idle"}},true)
                                                vRP._CarregarObjeto("anim@heists@box_carry@","idle","prop_car_door_01",50,28422,0.0,-0.10,-0.2,0.0,0.0,0.0) -- 50,28422,0.07,0.1,-0.21,100.0,0.5,0.1
                                                proximoDesmanche = false

                                            elseif k == 'Porta_Esquerda' then
                                                SetVehicleDoorBroken(veh2, 1, true)
                                                TriggerEvent("Notify","sucesso","Porta removida com sucesso, guarde ela para desmanchar o restante..")
                                                vRP._playAnim(true,{{"anim@heists@box_carry@","idle"}},true)
                                                vRP._CarregarObjeto("anim@heists@box_carry@","idle","prop_car_door_01",50,28422,0.0,-0.10,-0.2,0.0,0.0,0.0) -- 50,28422,0.07,0.1,-0.21,100.0,0.5,0.1
                                                proximoDesmanche = false

                                            elseif k == 'Capo' then
                                                SetVehicleDoorBroken(veh2, 4, true)
                                            end
                                        else
                                            if k == 'Roda_Frente' then
                                                SetVehicleTyreBurst(veh2, 0, true, 1000)

                                                TriggerEvent("Notify","sucesso","Pneu removido com sucesso, guarde ele para desmanchar o restante..")
                                                vRP._playAnim(true,{{"anim@heists@box_carry@","idle"}},true)
                                                vRP._CarregarObjeto("anim@heists@box_carry@","idle","prop_wheel_tyre",50,28422,0.0,-0.10,-0.2,0.0,0.0,0.0) -- 50,28422,0.07,0.1,-0.21,100.0,0.5,0.1
                                                proximoDesmanche = false

                                            elseif k == 'Roda_Tras' then
                                                SetVehicleTyreBurst(veh2, 4, true, 1000)

                                                TriggerEvent("Notify","sucesso","Pneu removido com sucesso, guarde ele para desmanchar o restante..")
                                                vRP._playAnim(true,{{"anim@heists@box_carry@","idle"}},true)
                                                vRP._CarregarObjeto("anim@heists@box_carry@","idle","prop_wheel_tyre",50,28422,0.0,-0.10,-0.2,0.0,0.0,0.0) -- 50,28422,0.07,0.1,-0.21,100.0,0.5,0.1
                                                proximoDesmanche = false
                                            end
                                        end
                                    end
                                end
                            end

                        end
                    end
                end

            elseif etapa == 3 then
                local dist = Vdist(pedCoords, AnuncioChassi[1], AnuncioChassi[2], AnuncioChassi[3])

                if dist < 10 then
                    DrawMarker(21, AnuncioChassi[1], AnuncioChassi[2], AnuncioChassi[3]-0.5, 0, 0, 0, 180.0, 0, 0, 0.4, 0.4, 0.4, 207, 158, 25, 150, 0, 0, 0, 1)
                    if dist < 1 then
                        text3D(AnuncioChassi[1], AnuncioChassi[2], AnuncioChassi[3]-0.5, '~y~[E] ~w~PARA ANUNCIAR O ~y~CHASSI')
                        if IsControlJustPressed(0,38) then
                            FreezeEntityPosition(ped, true)
                            SetEntityCoords(ped, AnuncioChassi[1], AnuncioChassi[2], AnuncioChassi[3]-0.97)
                            SetEntityHeading(ped, AnuncioChassi[4])
                            vRP.playAnim(false, {{"anim@heists@prison_heistig1_p1_guard_checks_bus", "loop"}}, true)
                            TriggerEvent('progress', 5000, 'Anunciando o chassi do veiculo no mercado negro...')
                            Wait(5000)
                            FreezeEntityPosition(ped, false)
                            ClearPedTasks(ped)
                            vSERVER.GerarPagamento(placa, nomeCarro, modeloCarro)
                            TriggerServerEvent("nation:deleteVehicleSync",VehToNet(vehicle))
                            TriggerServerEvent("nation:deleteVehicleSync",VehToNet(veh2))
                          --  deleteVehicle(-1,veh)
                           
                           -- DeletarVeiculo(veh)
                            etapa = 0 
                            PosVeh = {}
                            PecasRemovidas = {}
                            TipoVeh = ''
                            qtdPecasRemovidas = 0
                            PecasVeh = 0
                        end
                    end
                end
            end


            
            if proximoDesmanche == false then
                local dist = Vdist(pedCoords, GuardarPecas[1], GuardarPecas[2], GuardarPecas[3])
                if dist < 20 then
                    DrawMarker(21, GuardarPecas[1], GuardarPecas[2], GuardarPecas[3]-0.5, 0, 0, 0, 180.0, 0, 0, 0.4, 0.4, 0.4, 207, 158, 25, 200, 0, 0, 0, 1)
                    if dist < 2 then
                        text3D(GuardarPecas[1], GuardarPecas[2], GuardarPecas[3]-0.5, '~y~[E] ~w~PARA GUARDAR A ~y~PEÇA')
                        if IsControlJustPressed(0,38) then
                            ClearPedTasks(ped)
                            vRP._DeletarObjeto(source)
                            proximoDesmanche = true
                        end
                    end
                end
            end



            if etapa > 0 then
                if IsControlJustPressed(0,168) then
                    -- REMOVER TUDO PARA CANCELAMENTO
                    etapa = 0
                    FreezeEntityPosition(PlayerPedId(), false)
                    ClearPedTasks(PlayerPedId())
                    if veh then
                        FreezeEntityPosition(veh, false)
                    end
                    etapa = 0 
                    PosVeh = {}
                    PecasRemovidas = {}
                    TipoVeh = ''
                    qtdPecasRemovidas = 0
                    PecasVeh = 0

                  
                    FreezeEntityPosition(veh2, false)
                    SetVehicleDoorsLocked(veh2, 1)

                    TriggerEvent('Notify', 'aviso', 'Você cancelou o serviço!')
                end
            end


        end
        Citizen.Wait(ThreadDelay)
    end
end)

Citizen.CreateThread(function() 
    while true do
        if vSERVER.CheckPerm() then
            permitido = true
            -- print('PERMITIDO')
        else
            -- print('N PERMITIDO')
            permitido = false
        end
        Wait(5000)
    end
end)

----------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------- FUNCOES AUXILIARES
----------------------------------------------------------------------------------------------------------------------------------

-- DEBUG
-- RegisterCommand('etapa', function(source, args, rawCmd)
--     veh = CheckVeiculo(LocalDesmancharCarro[1], LocalDesmancharCarro[2], LocalDesmancharCarro[3])
--     PosVeh['Porta_Direita'] = GetWorldPositionOfEntityBone(veh, GetEntityBoneIndexByName(veh,"handle_dside_f"))
--     PosVeh['Porta_Esquerda'] = GetWorldPositionOfEntityBone(veh, GetEntityBoneIndexByName(veh,"handle_pside_f"))
--     PosVeh['Roda_EsquerdaFrente'] = GetWorldPositionOfEntityBone(veh, GetEntityBoneIndexByName(veh,"wheel_lf"))
--     PosVeh['Roda_DireitaFrente'] = GetWorldPositionOfEntityBone(veh, GetEntityBoneIndexByName(veh,"wheel_rf"))
--     PosVeh['Roda_EsquerdaTras'] = GetWorldPositionOfEntityBone(veh, GetEntityBoneIndexByName(veh,"wheel_lr"))
--     PosVeh['Roda_DireitaTras'] = GetWorldPositionOfEntityBone(veh, GetEntityBoneIndexByName(veh,"wheel_rr"))
--     PosVeh['Capo'] = GetWorldPositionOfEntityBone(veh, GetEntityBoneIndexByName(veh,"bumper_f"))
--     PecasVeh = 6
--     TipoVeh = 'carro'

--     -- PosVeh['Roda_Frente'] = GetWorldPositionOfEntityBone(veh, GetEntityBoneIndexByName(veh,"wheel_lf"))
--     -- PosVeh['Roda_Tras'] = GetWorldPositionOfEntityBone(veh, GetEntityBoneIndexByName(veh,"wheel_lr"))
--     -- PosVeh['Banco'] = GetWorldPositionOfEntityBone(veh, GetEntityBoneIndexByName(veh,"chassis_dummy"))
--     -- PecasVeh = 3
--     -- TipoVeh = 'moto'

--     etapa = 2

--     placa = GetVehicleNumberPlateText(veh)
--     nomeCarro = GetDisplayNameFromVehicleModel(GetEntityModel(veh))
--     modeloCarro = GetLabelText(nomeCarro)
-- end)


-----------------------------------------------------------------------------------------------------------------------------------------
-- Check Classe
-----------------------------------------------------------------------------------------------------------------------------------------
function CheckClasse(veh)
    local classe = GetVehicleClass(veh)
    if classe ~= 0 and classe ~= 1 and classe ~= 2 and classe ~= 3 and classe ~= 4 and classe ~= 5 and classe ~= 6 and classe ~= 7 and classe ~= 8 and classe ~= 9 and classe ~= 11 and classe ~= 12 then
        return false, 0
    else
        return true, classe
    end
end

function CheckVehPermitido(nomeCarro)
    local vehs = vSERVER.GetVehs()
    for k , v in pairs(vehs) do
        if string.upper(nomeCarro) == string.upper(k) then
            return true
        end
    end
    return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- TEXT3D
-----------------------------------------------------------------------------------------------------------------------------------------
function text3D(x,y,z,text)
	local onScreen,_x,_y = World3dToScreen2d(x,y,z)

	SetTextFont(4)
	SetTextScale(0.35,0.35)
	SetTextColour(255,255,255,150)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	local factor = (string.len(text))/370
	DrawRect(_x,_y+0.0125,0.01+factor,0.03,0,0,0,80)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- VERIFICAR VAGA VAGA
-----------------------------------------------------------------------------------------------------------------------------------------
function CheckVeiculo(x,y,z)
    local check = GetClosestVehicle(x,y,z,5.001,0,71)
    if DoesEntityExist(check) then
        return check
    end
    return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- DELETAR VEICULO
-----------------------------------------------------------------------------------------------------------------------------------------
function DeletarVeiculo( entity )
    SetEntityAsMissionEntity(entity, true, true)
    DeleteVehicle(entity)
    -- Citizen.InvokeNative( 0xEA386986E786A54F, Citizen.PointerValueIntInitialized( entity ) )
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- DRAW TXT
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