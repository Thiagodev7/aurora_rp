local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
emP = {}
Tunnel.bindInterface("skips_lavagem",emP)
-----------------------------------------------------------------------------------------------------------------------------------
--[ FUNÇÕES ]----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
local partes = {
    { parte = "contardinheiro" },
}

local valorDinheiroSujo = 0 -- não alterar
local lavagemTotal = 250000 -- Aqui será o valor máximo que poderá ser lavado de uma vez
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECAR DINHEIRO SUJO
-----------------------------------------------------------------------------------------------------------------------------------------
function emP.checkDinheiro()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        -- Verificar se o jogador tem os 3 alvejantes no inventário
        if vRP.getInventoryItemAmount(user_id, "alvejante") >= 3 then
            dinheirosujo = vRP.prompt(source, "Quanto dinheiro sujo deseja lavar?", "")

            if tonumber(dinheirosujo) == nil then
                TriggerClientEvent("Notify", source, "negado", "Você não informou qual valor deseja!")
                return false
            end

            if tonumber(dinheirosujo) <= lavagemTotal then
                if vRP.tryGetInventoryItem(user_id, "dinheirosujo", dinheirosujo) then -- Retirar dinheiro sujo do inventário
                    -- Remover os 3 alvejantes do inventário
                    vRP.tryGetInventoryItem(user_id, "alvejante", 3)
                    
                    valorDinheiroSujo = dinheirosujo
                    return true
                else
                    TriggerClientEvent("Notify", source, "negado", "Dinheiro sujo <b>insuficiente</b>.")
                    return false
                end
            else
                TriggerClientEvent("Notify", source, "negado", "Você só pode lavar R$"..lavagemTotal.." por vez")
            end
        else
            TriggerClientEvent("Notify", source, "negado", "Você precisa de 3 alvejantes para lavar o dinheiro sujo.")
            return false
        end
    end
end

-----------------------------------------------------------------------------------------------------------------------------------
--[ EVENTOS ]----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("lavar-dinheiro")
AddEventHandler("lavar-dinheiro",function(parte)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		for k,v in pairs(partes) do
            if parte == v.parte then
                if parte == "contardinheiro" then
					TriggerClientEvent("progress",source,10000,"EMBALANDO NOTAS FALSAS")
					vRPclient._playAnim(source,true,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)
					SetTimeout(10000,function()
						vRPclient._DeletarObjeto(source)
                        vRPclient._stopAnim(source,false)
                        TriggerClientEvent("Notify",source,"sucesso","Dinheiro lavado com sucesso!")
                    end)
                end
			end
		end
	end
end)


function emP.checkPayment()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        vRP.giveMoney(user_id,dinheirosujo/1.1) -- irá receber 90% do dinheiro lavado
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PERMISSÃO
-----------------------------------------------------------------------------------------------------------------------------------------
function emP.checkPermissao()
    local source = source
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"admin.permissao") then -- PERMISSÃO
        return true
    end
end

