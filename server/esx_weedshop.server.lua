ESX              = nil
local ItemLabels = {}


-- ====================================================================================================================
-- Basic event handler
-- ====================================================================================================================
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('onMySQLReady', function()

  MySQL.Async.fetchAll('SELECT * FROM items', {}, function(result)
    for i = 1, #result, 1 do
      ItemLabels[result[i].name] = result[i].label
    end
  end)

end)

RegisterServerEvent('esx_weedshop:buyItem')
AddEventHandler('esx_weedshop:buyItem', function(itemName, price)

  local _source = source
  local xPlayer = ESX.GetPlayerFromId(_source)

  if xPlayer.get('money') >= price then
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem(itemName, 1)

    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_ambulance', function(account)
      account.addMoney(price)
    end)

    TriggerClientEvent('esx:showNotification', _source, _U('bought') .. ItemLabels[itemName])
  else
    TriggerClientEvent('esx:showNotification', _source, _U('not_enough_money'))
  end

end)
