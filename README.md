#esx_weedshop


## RECQUIRE

my modified version of esx_drugs: https://github.com/Slewog/esx_drugs
my modified version of esx_drugeffects : https://github.com/Slewog/esx_drugeffects or  esx_drugeffects Original : https://github.com/ESX-Org/esx_drugs
esx_status Original : https://github.com/ESX-Org/esx_status



[INSTALLATION]

1) CD in your resources/[esx] folder

2) Import esx_weedshop.sql in your database

3� Add in your server.cfg 

```
start esx_weedshop

```

4) Import into server-side drugeffects : ( no util with my esx_drugeffects )

ESX.RegisterUsableItem('weed1', function(source)
        
        local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('weed1', 1)

	TriggerClientEvent('esx_status:add', _source, 'drug', 250000)
	TriggerClientEvent('esx_drugeffects:onWeed', source)
end)

ESX.RegisterUsableItem('weed2', function(source)
        
        local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('weed2', 1)

	TriggerClientEvent('esx_status:add', _source, 'drug', 260000)
	TriggerClientEvent('esx_drugeffects:onWeed', source)
end)

ESX.RegisterUsableItem('weed3', function(source)
        
        local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('weed3', 1)

	TriggerClientEvent('esx_status:add', _source, 'drug', 275000)
	TriggerClientEvent('esx_drugeffects:onWeed', source)
end)

ESX.RegisterUsableItem('weed4', function(source)
        
        local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('weed4', 1)

	TriggerClientEvent('esx_status:add', _source, 'drug', 350000)
	TriggerClientEvent('esx_drugeffects:onWeed', source)
end)

ESX.RegisterUsableItem('weed5', function(source)
        
        local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('weed5', 1)

	TriggerClientEvent('esx_status:add', _source, 'drug', 320000)
	TriggerClientEvent('esx_drugeffects:onWeed', source)
end)

ESX.RegisterUsableItem('weed6', function(source)
        
        local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('weed6', 1)

	TriggerClientEvent('esx_status:add', _source, 'drug', 340000)
	TriggerClientEvent('esx_drugeffects:onWeed', source)
end)

ESX.RegisterUsableItem('weed7', function(source)
        
        local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('weed7', 1)

	TriggerClientEvent('esx_status:add', _source, 'drug', 320000)
	TriggerClientEvent('esx_drugeffects:onWeed', source)
end)

ESX.RegisterUsableItem('weed8', function(source)
        
        local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('weed8', 1)

	TriggerClientEvent('esx_status:add', _source, 'drug', 310000)
	TriggerClientEvent('esx_drugeffects:onWeed', source)
end)

ESX.RegisterUsableItem('weed9', function(source)
        
        local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('weed9', 1)

	TriggerClientEvent('esx_status:add', _source, 'drug', 330000)
	TriggerClientEvent('esx_drugeffects:onWeed', source)
end)

ESX.RegisterUsableItem('weed10', function(source)
        
        local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('weed10', 1)

	TriggerClientEvent('esx_status:add', _source, 'drug', 360000)
	TriggerClientEvent('esx_drugeffects:onWeed', source)
end)

ESX.RegisterUsableItem('weed11', function(source)
        
        local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('weed11', 1)

	TriggerClientEvent('esx_status:add', _source, 'drug', 270000)
	TriggerClientEvent('esx_drugeffects:onWeed', source)
end)

ESX.RegisterUsableItem('weed12', function(source)
        
        local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('weed12', 1)

	TriggerClientEvent('esx_status:add', _source, 'drug', 280000)
	TriggerClientEvent('esx_drugeffects:onWeed', source)
end)

ESX.RegisterUsableItem('weed13', function(source)
        
        local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('weed13', 1)

	TriggerClientEvent('esx_status:add', _source, 'drug', 3000000)
	TriggerClientEvent('esx_drugeffects:onWeed', source)
end)

ESX.RegisterUsableItem('weed14', function(source)
        
        local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('weed14', 1)

	TriggerClientEvent('esx_status:add', _source, 'drug', 310000)
	TriggerClientEvent('esx_drugeffects:onWeed', source)
end)

ESX.RegisterUsableItem('weed15', function(source)
        
        local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('weed15', 1)

	TriggerClientEvent('esx_status:add', _source, 'drug', 320000)
	TriggerClientEvent('esx_drugeffects:onWeed', source)
end)

4) Add this in your server.cfg :


