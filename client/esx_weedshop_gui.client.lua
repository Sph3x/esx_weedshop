-- ====================================================================================================================
-- Local function
-- ====================================================================================================================
function OpenShopMenu()
  ESX.UI.Menu.CloseAll()

  local elements = {
    { 
      label = _U('xanax') .. ' : [' .. Config.Price['xanax'] .. '$]',
      value = { name = 'xanax',    price = Config.Price['xanax'] } 
    },
	{
	  label = _U('weed1') .. ' : [' .. Config.Price['weed1'] .. '$]',
	  value = { name = 'weed1',    price = Config.Price['weed1'] }
	},
    { 
      label = _U('weed2') .. ' : [' .. Config.Price['weed2'] .. '$]',
      value = { name = 'weed2', price = Config.Price['weed2'] }
    },
	{ 
      label = _U('weed3') .. ' : [' .. Config.Price['weed3'] .. '$]',
      value = { name = 'weed3',    price = Config.Price['weed3'] } 
    },
	{ 
      label = _U('weed4') .. ' : [' .. Config.Price['weed4'] .. '$]',
      value = { name = 'weed4',    price = Config.Price['weed4'] } 
    },
	{ 
      label = _U('weed5') .. ' : [' .. Config.Price['weed5'] .. '$]',
      value = { name = 'weed5',    price = Config.Price['weed5'] } 
    },
	{ 
      label = _U('weed6') .. ' : [' .. Config.Price['weed6'] .. '$]',
      value = { name = 'weed6',    price = Config.Price['weed6'] } 
    },
	{ 
      label = _U('weed7') .. ' : [' .. Config.Price['weed7'] .. '$]',
      value = { name = 'weed7',    price = Config.Price['weed7'] } 
    },
	{
	  label = _U('weed8') .. ' : [' .. Config.Price['weed8'] .. '$]',
	  value = { name = 'weed8',    price = Config.Price['weed8'] }
	},
    { 
      label = _U('weed9') .. ' : [' .. Config.Price['weed9'] .. '$]',
      value = { name = 'weed9', price = Config.Price['weed9'] }
    },
	{ 
      label = _U('weed10') .. ' : [' .. Config.Price['weed10'] .. '$]',
      value = { name = 'weed10',    price = Config.Price['weed10'] } 
    },
	{
	  label = _U('weed11') .. ' : [' .. Config.Price['weed11'] .. '$]',
	  value = { name = 'weed11',    price = Config.Price['weed11'] }
	},
	{
	  label = _U('weed12') .. ' : [' .. Config.Price['weed12'] .. '$]',
	  value = { name = 'weed12',    price = Config.Price['weed12'] }
	},
	{
	  label = _U('weed13') .. ' : [' .. Config.Price['weed13'] .. '$]',
	  value = { name = 'weed13',    price = Config.Price['weed13'] }
	},
	{
	  label = _U('weed14') .. ' : [' .. Config.Price['weed14'] .. '$]',
	  value = { name = 'weed14',    price = Config.Price['weed14'] }
	},
	{
	  label = _U('weed15') .. ' : [' .. Config.Price['weed15'] .. '$]',
	  value = { name = 'weed15',    price = Config.Price['weed15'] }
	},
	{
	  label = _U('bong') .. ' : [' .. Config.Price['bong'] .. '$]',
	  value = { name = 'bong',    price = Config.Price['bong'] }
	}
  }

  ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'shop', {
      css =  'superete',
	  title    = _U('drugstore'),
      align    = 'top-left',
      elements = elements
    }, function(data, menu)
      local element = data.current.value

      ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'shop_confirm', {
          css =  'valider',
		  title = _U('valid_this_purchase'),
          align = 'top-left',
          elements = {
            { label = _U('yes'), value = 'yes' },
            { label = _U('no'),  value = 'no'  }
          }
        }, function(data2, menu2)
          if data2.current.value == 'yes' then
            TriggerServerEvent('esx_weedshop:buyItem', element.name, element.price)
          end
          
          menu2.close()
          setCurrentAction('weed_shop', _U('press_menu'), {})
        end, function(data2, menu2)
          menu2.close()
        end
      )

    end, function(data, menu)
      menu.close()
    end
  )

end