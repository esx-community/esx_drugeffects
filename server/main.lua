ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('marijuana', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('marijuana', 1)

	TriggerClientEvent('esx_status:add', source, 'drug', 166000)
	TriggerClientEvent('esx_drugeffects:onMarijuana', source)
end)

ESX.RegisterUsableItem('opium', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('opium', 1)

	TriggerClientEvent('esx_status:add', source, 'drug', 249000)
	TriggerClientEvent('esx_drugeffects:onOpium', source)
end)

ESX.RegisterUsableItem('meth', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('meth', 1)

	TriggerClientEvent('esx_status:add', source, 'drug', 333000)
	TriggerClientEvent('esx_drugeffects:onMeth', source)
end)

ESX.RegisterUsableItem('coke', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('coke', 1)

	TriggerClientEvent('esx_status:add', source, 'drug', 499000)
	TriggerClientEvent('esx_drugeffects:onCoke', source)
end)

ESX.RegisterUsableItem('xanax', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('xanax', 1)

	TriggerClientEvent('esx_status:remove', source, 'drug', 249000)
end)
