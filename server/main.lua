ESX = nil 

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('susturucu', function(source)   
    TriggerClientEvent('z12:susturucu', source)
end)

ESX.RegisterUsableItem('fener', function(source) 
    TriggerClientEvent('z12:fener', source)
end)

ESX.RegisterUsableItem('tutamac', function(source)
    TriggerClientEvent('z12:tutamac', source)
end)

ESX.RegisterUsableItem('kaplama', function(source)
    TriggerClientEvent('z12:kaplama', source)
end)

ESX.RegisterUsableItem('durbun', function(source)
    TriggerClientEvent('z12:durbun', source)
end)

ESX.RegisterUsableItem('uzatilmis', function(source)
    TriggerClientEvent('z12:uzatilmis', source)
end)

RegisterNetEvent('z12:eklentiCikart')
AddEventHandler('z12:eklentiCikart', function(hash)
    local player = ESX.GetPlayerFromId(source)
    MySQL.Async.execute('UPDATE disc_ammo SET susturucu = @susturucu, uzatilmis = @uzatilmis, fener = @fener, tutamac = @tutamac, kaplama = @kaplama, durbun = @durbun WHERE hash = @hash AND owner = @owner', {
        ['@owner'] = player.identifier,
        ['@hash'] = hash,
        ['@susturucu'] = 0,
		['@fener'] = 0,
		['@tutamac'] = 0,
		['@kaplama'] = 0,
        ['@durbun'] = 0,
        ['@uzatilmis'] = 0
    }, function(results)
    end)
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Tüm eklentiler çıkartıldı.', length = 3000, style = { ['background-color'] = '#00CC00', ['color'] = '#000000' } })
end)

RegisterNetEvent('z12:susturucuTak')
AddEventHandler('z12:susturucuTak', function(hash)
    local player = ESX.GetPlayerFromId(source)
	player.removeInventoryItem('susturucu', 1)
    MySQL.Async.execute('UPDATE disc_ammo SET susturucu = @susturucu WHERE hash = @hash AND owner = @owner', {
        ['@owner'] = player.identifier,
        ['@hash'] = hash,
        ['@susturucu'] = 1
    }, function(results)
        if results == 0 then
            MySQL.Async.execute('INSERT INTO disc_ammo (owner, hash, susturucu) VALUES (@owner, @hash, @susturucu)', {
                ['@owner'] = player.identifier,
                ['@hash'] = hash,
                ['@susturucu'] = 1
            })
        end
    end)
end)

RegisterNetEvent('z12:fenerTak')
AddEventHandler('z12:fenerTak', function(hash)
    local player = ESX.GetPlayerFromId(source)
	player.removeInventoryItem('fener', 1)
    MySQL.Async.execute('UPDATE disc_ammo SET fener = @fener WHERE hash = @hash AND owner = @owner', {
        ['@owner'] = player.identifier,
        ['@hash'] = hash,
        ['@fener'] = 1
    }, function(results)
        if results == 0 then
            MySQL.Async.execute('INSERT INTO disc_ammo (owner, hash, fener) VALUES (@owner, @hash, @fener)', {
                ['@owner'] = player.identifier,
                ['@hash'] = hash,
                ['@fener'] = 1
            })
        end
    end)
end)

RegisterNetEvent('z12:tutamacTak')
AddEventHandler('z12:tutamacTak', function(hash)
    local player = ESX.GetPlayerFromId(source)
	player.removeInventoryItem('tutamac', 1)
    MySQL.Async.execute('UPDATE disc_ammo SET tutamac = @tutamac WHERE hash = @hash AND owner = @owner', {
        ['@owner'] = player.identifier,
        ['@hash'] = hash,
        ['@tutamac'] = 1
    }, function(results)
        if results == 0 then
            MySQL.Async.execute('INSERT INTO disc_ammo (owner, hash, tutamac) VALUES (@owner, @hash, @tutamac)', {
                ['@owner'] = player.identifier,
                ['@hash'] = hash,
                ['@tutamac'] = 1
            })
        end
    end)
end)

RegisterNetEvent('z12:kaplamaTak')
AddEventHandler('z12:kaplamaTak', function(hash)
    local player = ESX.GetPlayerFromId(source)
	player.removeInventoryItem('kaplama', 1)
    MySQL.Async.execute('UPDATE disc_ammo SET kaplama = @kaplama WHERE hash = @hash AND owner = @owner', {
        ['@owner'] = player.identifier,
        ['@hash'] = hash,
        ['@kaplama'] = 1
    }, function(results)
        if results == 0 then
            MySQL.Async.execute('INSERT INTO disc_ammo (owner, hash, kaplama) VALUES (@owner, @hash, @kaplama)', {
                ['@owner'] = player.identifier,
                ['@hash'] = hash,
                ['@kaplama'] = 1
            })
        end
    end)
end)

RegisterNetEvent('z12:durbunTak')
AddEventHandler('z12:durbunTak', function(hash)
    local player = ESX.GetPlayerFromId(source)
	player.removeInventoryItem('durbun', 1)
    MySQL.Async.execute('UPDATE disc_ammo SET durbun = @durbun WHERE hash = @hash AND owner = @owner', {
        ['@owner'] = player.identifier,
        ['@hash'] = hash,
        ['@durbun'] = 1
    }, function(results)
        if results == 0 then
            MySQL.Async.execute('INSERT INTO disc_ammo (owner, hash, durbun) VALUES (@owner, @hash, @durbun)', {
                ['@owner'] = player.identifier,
                ['@hash'] = hash,
                ['@durbun'] = 1
            })
        end
    end)
end)

RegisterNetEvent('z12:uzatilmisTak')
AddEventHandler('z12:uzatilmisTak', function(hash)
    local player = ESX.GetPlayerFromId(source)
	player.removeInventoryItem('uzatilmis', 1)
    MySQL.Async.execute('UPDATE disc_ammo SET uzatilmis = @uzatilmis WHERE hash = @hash AND owner = @owner', {
        ['@owner'] = player.identifier,
        ['@hash'] = hash,
        ['@uzatilmis'] = 1
    }, function(results)
        if results == 0 then
            MySQL.Async.execute('INSERT INTO disc_ammo (owner, hash, uzatilmis) VALUES (@owner, @hash, @uzatilmis)', {
                ['@owner'] = player.identifier,
                ['@hash'] = hash,
                ['@uzatilmis'] = 1
            })
        end
    end)
end)