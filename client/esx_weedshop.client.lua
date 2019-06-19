ESX = nil
local GUI                     = {}
GUI.Time                      = 0
local HasAlreadyEnteredMarker = false
local LastZone                = nil
local CurrentAction           = nil
local CurrentActionMsg        = ''
local CurrentActionData       = {}


-- ====================================================================================================================
-- Local function
-- ====================================================================================================================
function setCurrentAction(action, msg, data)
  CurrentAction     = action
  CurrentActionMsg  = msg
  CurrentActionData = data
end


-- ====================================================================================================================
-- Citizen thread
-- ====================================================================================================================
Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

-- Render markers
Citizen.CreateThread(function()
  while true do
    Wait(0)
    local coords = GetEntityCoords(GetPlayerPed(-1))

    for k,v in pairs(Config.Shops) do
      if GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < Config.DrawDistance then
        DrawMarker(
          Config.MarkerType, 
          v.x, 
          v.y, 
          v.z, 
          0.0, 
          0.0, 
          0.0, 
          0, 
          0.0, 
          0.0, 
          Config.MarkerSize.x, 
          Config.MarkerSize.y, 
          Config.MarkerSize.z, 
          Config.MarkerColor.r, 
          Config.MarkerColor.g, 
          Config.MarkerColor.b, 
          100, 
          false, 
          true, 
          2, 
          false, 
          false, 
          false, 
          false
        )
      end
    end
  end
end)

-- Create blips
Citizen.CreateThread(function()
  for i = 1, #Config.Shops, 1 do
    local shop = Config.Shops[i]

    local blip = AddBlipForCoord(shop.x, shop.y, shop.z - Config.ZDiff)
    SetBlipSprite (blip, Config.BlipSprite)
    SetBlipDisplay(blip, 4)
    SetBlipScale  (blip, 1.1)
    SetBlipColour (blip, Config.BlipColour)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString('Smoke On The Water')
    EndTextCommandSetBlipName(blip)
  end
end)

-- Enter / Exit marker events
Citizen.CreateThread(function()
  while true do
    Wait(0)
    local coords      = GetEntityCoords(GetPlayerPed(-1))
    local isInMarker  = false
    local currentZone = nil

    for k,v in pairs(Config.Shops) do
      if GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < Config.MarkerSize.x then
        isInMarker  = true
        currentZone = k
      end
    end

    if (isInMarker and not HasAlreadyEnteredMarker) or (isInMarker and LastZone ~= currentZone) then
      HasAlreadyEnteredMarker = true
      LastZone                = currentZone
      TriggerEvent('esx_weedshop:hasEnteredMarker', currentZone)
    end

    if not isInMarker and HasAlreadyEnteredMarker then
      HasAlreadyEnteredMarker = false
      TriggerEvent('esx_weedshop:hasExitedMarker', LastZone)
    end

  end
end)

-- Key Controls
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
    if CurrentAction ~= nil then
      SetTextComponentFormat('STRING')
      AddTextComponentString(CurrentActionMsg)
      DisplayHelpTextFromStringLabel(0, 0, 1, -1)
      if IsControlPressed(0, 38) and (GetGameTimer() - GUI.Time) > 300 then
        if CurrentAction == 'weed_shop' then
          OpenShopMenu()
        end
        CurrentAction = nil
        GUI.Time      = GetGameTimer()
      end
    end
  end
end)


-- ====================================================================================================================
-- Event handler
-- ====================================================================================================================
AddEventHandler('esx_weedshop:hasEnteredMarker', function(zone)
  CurrentAction     = 'weed_shop'
  CurrentActionMsg  = _U('press_menu')
  CurrentActionData = {}
end)

AddEventHandler('esx_weedshop:hasExitedMarker', function(zone)
  ESX.UI.Menu.CloseAll()
  CurrentAction = nil
end)

