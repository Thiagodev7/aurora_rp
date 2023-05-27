local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
emp = {}
local idgens = Tools.newIDGenerator()
Tunnel.bindInterface("entrega_drogas",emp) 
vRPclient = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES META
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent('entrega_metafetamina:permissao')
AddEventHandler('entrega_metafetamina:permissao',function()
	local source = source
	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
	if vRP.hasPermission(user_id,"amarelos.permissao") then 
	    TriggerClientEvent('entrega_metafetamina:permissao', player)
	end
end)

RegisterServerEvent('entrega_metafetamina:itensReceber')
AddEventHandler('entrega_metafetamina:itensReceber', function(quantidademeta)
	local src = source
	local user_id = vRP.getUserId(src)
    local pagamentometa = math.random(300,350)
    if user_id then
    --    local new_weight = vRP.computeInvWeight(user_id)+vRP.itemWeightList("dinheirosujo")*pagamentometa*quantidademeta
      --  if new_weight <= vRP.getBackpack(user_id) then
            if vRP.tryGetInventoryItem(user_id,"ziplockmeta",quantidademeta,true) then
                vRPclient._playAnim(src,false,{{"mp_common","givetake1_a",1}},false)
				vRP.giveInventoryItem(user_id,"dinheirosujo",pagamentometa*quantidademeta,false)
                local typemessage = "sucesso"
                TriggerClientEvent("Notify",src,"sucesso","Você recebeu R$"..pagamentometa*quantidademeta..".",5000)
                SetTimeout(5000,function()
                    vRPclient.removeDiv(src, "Alerta")
                end)
                quantidademeta = nil
            else
                TriggerClientEvent("Notify",src,"aviso","Você não tem a quantidade necessária de droga no ziplock para a entrega.",5000)
            end
    --    end
	end
end)

function emp.checkItemMeta()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.getInventoryItemAmount(user_id,"ziplockmeta") >= 4 then
			return true 
		else
		TriggerClientEvent("Notify",source,"negado","Você não tem as <b>4 Ziplocks com meta</b> para entrega!")
		return false
        end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES COCA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent('entrega_coca:permissao')
AddEventHandler('entrega_coca:permissao',function()
	local source = source
	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
	if vRP.hasPermission(user_id,"verdes.permissao") then 
	    TriggerClientEvent('entrega_coca:permissao', player)
	end
end)

RegisterServerEvent('entrega_coca:itensReceber')
AddEventHandler('entrega_coca:itensReceber', function(quantidadecoca)
	local src = source
	local user_id = vRP.getUserId(src)
    local pagamentococa = math.random(300,350)  
    if user_id then
   --     local new_weight = vRP.computeInvWeight(user_id)+vRP.itemWeightList("dinheirosujo")*pagamentococa*quantidadecoca
     --   if new_weight <= vRP.getBackpack(user_id) then
            if vRP.tryGetInventoryItem(user_id,"ziplockcocaina",quantidadecoca,true) then
                vRPclient._playAnim(src,false,{{"mp_common","givetake1_a",1}},false)
				vRP.giveInventoryItem(user_id,"dinheirosujo",pagamentococa*quantidadecoca,false)
                local typemessage = "sucesso"
                 TriggerClientEvent("Notify",src,"sucesso","Você recebeu R$"..pagamentococa*quantidadecoca..".",5000)
                SetTimeout(5000,function()
                    vRPclient.removeDiv(src, "Alerta")
                end)
                quantidadecoca = nil
            else
                TriggerClientEvent("Notify",src,"aviso","Você não tem a quantidade necessária de droga no ziplock para a entrega.",5000)
            end
     --   end
	end
end)

function emp.checkItemCoca()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.getInventoryItemAmount(user_id,"ziplockcocaina") >= 4 then
			return true 
		else
		TriggerClientEvent("Notify",source,"negado","Você não tem as <b>4 Ziplocks com cocaina</b> para entrega!")
		return false
        end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES MACONHA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent('entrega_maconha:permissao')
AddEventHandler('entrega_maconha:permissao',function()
	local source = source
	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
    if vRP.hasPermission(user_id,"roxos.permissao") then
	    TriggerClientEvent('entrega_maconha:permissao', player)
	end
end)

RegisterServerEvent('entrega_maconha:itensReceber')
AddEventHandler('entrega_maconha:itensReceber', function(quantidademaconha)
	local src = source
	local user_id = vRP.getUserId(src)
    local pagamentomaconha = math.random(300,350)
    if user_id then
  --      local new_weight = vRP.computeInvWeight(user_id)+vRP.itemWeightList("dinheirosujo")*pagamentomaconha*quantidademaconha
    --    if new_weight <= vRP.getBackpack(user_id) then
            if vRP.tryGetInventoryItem(user_id,"ziplockmaconha",quantidademaconha,true) then
                vRPclient._playAnim(src,false,{{"mp_common","givetake1_a",1}},false)
				vRP.giveInventoryItem(user_id,"dinheirosujo",pagamentomaconha*quantidademaconha,false)
                local typemessage = "sucesso"
                TriggerClientEvent("Notify",src,"sucesso","Você recebeu R$"..pagamentomaconha*quantidademaconha..".",5000)
                SetTimeout(5000,function()
                    vRPclient.removeDiv(src, "Alerta")
                end)
                quantidademaconha = nil
            else
                TriggerClientEvent("Notify",src,"aviso","Você não tem a quantidade necessária de droga no ziplock para a entrega.",5000)
            
            end
    --    end
	end
end)

function emp.checkItemMaconha()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.getInventoryItemAmount(user_id,"ziplockmaconha") >= 4 then
			return true 
		else
		TriggerClientEvent("Notify",source,"negado","Você não tem as <b>4 Ziplocks com maconha</b> para entrega!")
		return false
        end
	end
end



-----------------------------------------------------------------------------------------------------------------------------------------
-- POLICIA
-----------------------------------------------------------------------------------------------------------------------------------------
local blips = {}
function emp.MarcarOcorrencia()
	local source = source
	local user_id = vRP.getUserId(source)
	local x,y,z = vRPclient.getPosition(source)
	local identity = vRP.getUserIdentity(user_id)
	if user_id then
		local soldado = vRP.getUsersByPermission("policia.permissao")
		for l,w in pairs(soldado) do
			local player = vRP.getUserSource(parseInt(w))
			if player then
				async(function()
					local id = idgens:gen()
					blips[id] = vRPclient.addBlip(player,x,y,z,10,84,"Ocorrência",0.5,false)
					vRPclient._playSound(player,"CONFIRM_BEEP","HUD_MINI_GAME_SOUNDSET")
					TriggerClientEvent('chatMessage',player,"190",{64,64,255},"Recebemos uma denuncia de tráfico, verifique o ocorrido.")
					SetTimeout(20000,function() vRPclient.removeBlip(player,blips[id]) idgens:free(id) end)
				end)
			end
		end
		--SendWebhookMessage(webhookdrugs,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[FOI DENUNCIADO] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
	end
end


