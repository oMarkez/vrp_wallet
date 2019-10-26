local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "vrp_wallet")

local user_id = vRP.getUserId({source})
local money = vRP.getMoney({user_id})
local bank = vRP.getBankMoney({user_id})

RegisterServerEvent('vrp_wallet:getMoneys')
AddEventHandler('vrp_wallet:getMoneys', function()

	local _source = source

	if user_id == nil then
		local money = vRP.getMoney({source})
		local bank 	= vRP.getBankMoney({source})

	    TriggerClientEvent("vrp_wallet:setValues", source, money, bank)
	end

end)