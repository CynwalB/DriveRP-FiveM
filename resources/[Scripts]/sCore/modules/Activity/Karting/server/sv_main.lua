ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- KadirProptect

playerIsKart = {}


RegisterServerEvent("Kart:service")
AddEventHandler("Kart:service", function(cb)
	local _src = source
    --TriggerEvent("ratelimit", _src, "Kart:service")
	local player = ESX.GetPlayerFromId(source)
	if cb then
		playerIsKart[source] = true
		TriggerClientEvent("esx:showNotification", player.source, "Vous venez de ~q~prendre~s~ votre ~q~kart~s~ ! N'oubliez pas de le rendre à la fin !")
	else
		playerIsKart[source] = false
		TriggerClientEvent("esx:showNotification", player.source, "Vous venez de ~r~rendre~s~ votre ~r~kart~s~ !")
		SendLogs(15158332,"Karting - Arrêt","**"..GetPlayerName(source).."** vient de rendre son kart \n **License** : "..player.identifier,"https://discord.com/api/webhooks/1151183212857540608/IpV97byc5hAXJ4_3Ju1dWQgy3f21zJbnKTjx44ubwiiYYvq3geBoHRKSgXeU43c6RhRo")
	end
end)

RegisterServerEvent("Karting:CheckVeh")
AddEventHandler("Karting:CheckVeh", function()
	local _src = source
    --TriggerEvent("ratelimit", _src, "Karting:CheckVeh")
	local xPlayer = ESX.GetPlayerFromId(source)
	if not playerIsKart[source] then
		xPlayer.addAccountMoney('cash', 200)
		local price = 200
		SendLogs(15158332,"Karting - Remboursement","**"..GetPlayerName(source).."** vient de se faire rembourser pour ***"..price.."$ ***\n **License** : "..xPlayer.identifier,"https://discord.com/api/webhooks/1151183212857540608/IpV97byc5hAXJ4_3Ju1dWQgy3f21zJbnKTjx44ubwiiYYvq3geBoHRKSgXeU43c6RhRo")
	end
end)

ESX.RegisterServerCallback('Karting:buy', function(source, cb, price)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getAccount('cash').money >= price then
		xPlayer.removeAccountMoney('cash', price)
        SendLogs(15158332,"Karting - Achat","**"..GetPlayerName(source).."** vient d'acheter pour ***"..price.."$ ***\n **License** : "..xPlayer.identifier,"https://discord.com/api/webhooks/1151183212857540608/IpV97byc5hAXJ4_3Ju1dWQgy3f21zJbnKTjx44ubwiiYYvq3geBoHRKSgXeU43c6RhRo")
		cb(true)
	else
		cb(false)
	end
end)


ESX.RegisterServerCallback('Kart:checkService', function(source, cb)
	if playerIsKart[source] then
		cb(false)
	else
		cb(true)
	end
end)