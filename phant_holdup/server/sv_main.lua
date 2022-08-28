local ESX = exports['es_extended']:getSharedObject();
local PhantumUtils = exports['phantum']:getSharedObject();
local Robbing = {}

RegisterNetEvent(
    'p_holdup:server:start',
    function(data)
        if not FindInArray(SharedConfig.Holdups, data) then
            DropPlayer(source, 'zostales wyruchany bez mydla przez nigera')
            return
        end

        if Robbing[source] then
            return
        end

        Robbing[source] = data

        TriggerClientEvent('p_holdup:client:hack', source, FindInArray(SharedConfig.Holdups, data).hack)
    end
)

RegisterNetEvent('p_holdup:server:checkPolice', function(data)
    if not FindInArray(SharedConfig.Holdups, data) then
        DropPlayer(source, 'zostales wyruchany bez mydla przez nigera')
        return
    end
    local xPlayers = exports['esx_scoreboard']:MisiaczekPlayers()
    local count = 0;
    for _, v in pairs(xPlayers) do
        if v.job == 'police' then count = count + 1 end
    end
    local needCops = FindInArray(SharedConfig.Holdups, data).police
    if not needCops then
        needCops = 2;
    end
    if needCops > count then
        TriggerClientEvent('p_holdup:client:policeRecive', source, false)
        return
    end

    TriggerClientEvent('p_holdup:client:policeRecive', source, true)
end)

RegisterNetEvent(
    'p_holdup:server:checkItems',
    function(data)
        if not FindInArray(SharedConfig.Holdups, data) then
            DropPlayer(source, 'zostales wyruchany bez mydla przez nigera')
            return
        end

        local xPlayer = ESX.GetPlayerFromId(source)
        local items = FindInArray(SharedConfig.Holdups, data).requiredItems

        for _, v in pairs(items) do
            local c = v.count()
            if xPlayer.getInventoryItem(v.item).count < c then
                TriggerClientEvent(
                    'p_holdup:client:reciveItems',
                    source,
                    false,
                    '~b~[~o~LESTER~b~]: ~r~Nie posiadasz ' .. v.label .. ' x' .. c
                )
                return
            end
            xPlayer.removeInventoryItem(v.item, c)
        end

        TriggerClientEvent(
            'p_holdup:client:reciveItems',
            source,
            true,
            nil
        )

    end
)

RegisterNetEvent(
    'p_holdup:server:checkTime',
    function(data)
        if not FindInArray(SharedConfig.Holdups, data) then
            DropPlayer(source, 'zostales wyruchany bez mydla przez nigera')
            return
        end

        local can = false

        if not SharedConfig.LastRobbed[data.id] then
            SharedConfig.LastRobbed[data.id] = 0;
        end

        if SharedConfig.LastRobbed[data.id] < os.time() then
            can = true
        end

        TriggerClientEvent('p_holdup:client:reciveTime', source, can)
    end
)

RegisterNetEvent(
    'p_holdup:server:policeAlert',
    function(data, succ)
        if not FindInArray(SharedConfig.Holdups, data) or not Robbing[source] then
            DropPlayer(source, 'zostales wyruchany bez mydla przez nigera')
            return
        end

        if succ == true then
            DropPlayer(source, 'na chuj tu true dajesz devie jebany to nawet nie jest zaimplementowane X D')
            return
        end

        local xPlayers = exports['esx_scoreboard']:MisiaczekPlayers()
        for _, v in pairs(xPlayers) do
            if v.job and v.job == 'police' then
                TriggerClientEvent(
                    'chat:addMessage1',
                    v.id,
                    '^0[^3Centrala^0]',
                    {0, 0, 0},
                    'Uruchomiony alarm w placówce ' .. data.name,
                    'fas fa-laptop'
                )
                TriggerClientEvent('p_holdup:client:setPoliceBlip', v.id, data.pos, data.name)
            end
        end
    end
)

RegisterNetEvent(
    'p_holdup:server:toofar',
    function()
        TriggerClientEvent('p_holdup:client:end', source, 0)
        Robbing[source] = nil;

        TriggerClientEvent('esx:showNotification', source, '~r~Wyszedłeś/aś z miejsca rabunku, napad został przerwany')

        local xPlayers = exports['esx_scoreboard']:MisiaczekPlayers()

        for _, v in pairs(xPlayers) do
            if v.job and v.job == 'police' then
                TriggerClientEvent('p_holdup:client:removePoliceBlip', v.id)
            end
        end
    end
)

RegisterNetEvent(
    'p_holdup:server:hackReturned',
    function(success)
        if not success then
            TriggerClientEvent('p_holdup:client:end', source, 0)
            TriggerClientEvent(
                'esx:showNotification',
                source,
                '~b~[~o~LESTER~b~]: ~r~Zjebałeś hackowanie, uciekaj szybko zanim przyjadą!'
            )

            Robbing[source] = nil;

            local xPlayers = exports['esx_scoreboard']:MisiaczekPlayers()

            for _, v in pairs(xPlayers) do
                if v.job and v.job == 'police' then
                    TriggerClientEvent('p_holdup:client:removePoliceBlip', v.id)
                end
            end
            return
        end


        TriggerClientEvent(
            'esx:showNotification',
            source,
            '~b~[~o~LESTER~b~]: ~r~Obszedłeś/aś zabezpieczenia budynku!'
        )

        TriggerClientEvent('p_holdup:client:hackingSuccess', source, { timer = FindInArray(SharedConfig.Holdups, Robbing[source]).timer })
        Start(source)
    end
)

function Start(src)
    local data = FindInArray(SharedConfig.Holdups, Robbing[src])
    SetTimeout(
        data.timer,
        function()
            local xPlayer = ESX.GetPlayerFromId(src)
            xPlayer.showNotification('~b~[~o~LESTER~b~]: ~r~Skonczyłeś rabować!')

            local rewardString = ''
            xPlayer.addAccountMoney('black_money', data.reward.cash())
            -- give items
            for i, v in pairs(data.reward.items()) do
                local percent = math.random(100)

                if percent <= v.chance then
                    if v.type == 'item' then
                        local c = v.count();
                        if not string.find(rewardString, 'oraz') then
                            rewardString =  v.name .. ' x' .. c
                        else 
                            rewardString = rewardString .. ' oraz ' .. v.name .. ' x' .. c
                        end
                        

                        xPlayer.addInventoryItem(v.item, c)
                    elseif v.type == 'weapon' then
                        local c = v.count();
                        local a = v.ammo();

                        if not string.find(rewardString, 'oraz') then
                            rewardString =  v.name .. ' x' .. c
                        else 
                            rewardString = rewardString .. ' oraz ' .. ' [ ' .. a .. ' ] ' .. v.name .. ' x' .. c
                        end

                        xPlayer.addInventoryWeapon(v.weapon, c, a, true)
                    end
                end
            end

            local xPlayers = exports['esx_scoreboard']:MisiaczekPlayers()
            
            
            for _, v in pairs(xPlayers) do
                if v.job and v.job == 'police' then
                    TriggerClientEvent('p_holdup:client:removePoliceBlip', v.id)
                end
            end
            Robbing[src] = nil;

            SharedConfig.LastRobbed[data.id] = (os.time() + (2 * 60 * 1000));

            TriggerClientEvent('p_holdup:client:end', src, 1, rewardString)
        end
    )
end
