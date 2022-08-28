local ESX = exports['es_extended']:getSharedObject()
local PhantumUtils = exports['phantum']:getSharedObject()

local CurrentlyRobbing = nil
local CurrentlyTimer = nil
local CurrentlyHoldup = nil

RegisterNetEvent(
    'p_holdup:client:hackingSuccess',
    function(data)
        CreateThread(
            function()
                CurrentlyTimer = data.timer
                CurrentlyRobbing = true
                exports[AdditionalResources.taskbar]:taskBar(data.timer, 'RABOWANIE', false, true)
                while CurrentlyTimer > 0 and CurrentlyRobbing do
                    Citizen.Wait(1000)

                    if CurrentlyTimer > 0 then
                        CurrentlyTimer = CurrentlyTimer - 1
                    end
                end
            end
        )
    end
)

RegisterNetEvent(
    'p_holdup:client:end',
    function(reason, award)
        CurrentlyRobbing = nil
        CurrentlyTimer = nil
        CurrentlyHoldup = nil

        exports[AdditionalResources.taskbar]:closeGuiFail()
        if reason == 1 then
            ESX.ShowAdvancedNotification('~b~~h~NAPAD UDANY!', 'Z sejfu zdobyto: ', award)
        end
    end
)

PhantumUtils.Thread(function()
    for k, v in pairs(SharedConfig.Holdups) do
        local Blip = AddBlipForCoord(v.pos.x, v.pos.y, v.pos.z)
        SetBlipSprite(Blip, v.blip.id)
        SetBlipDisplay(Blip, 2)
        SetBlipScale(Blip, v.blip.scale)
        SetBlipColour(Blip, v.blip.color)
        SetBlipAsShortRange(Blip, true)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString(v.blip.label)
        EndTextCommandSetBlipName(Blip)
    end
end)


sleep = true

PhantumUtils.Tick(
    function()
        local playerPos = GetEntityCoords(PlayerPedId(), true)
        for k, v in pairs(SharedConfig.Holdups) do
            local storePos = v.pos

            local dist = #(playerPos - vec3(storePos.x, storePos.y, storePos.z))
            if dist < 10 then
                sleep = false

                ESX.DrawMarker(vec3(storePos.x, storePos.y, storePos.z - 0.9))

                if dist < 2 then
                    DrawText3D(storePos.x, storePos.y, storePos.z, '~b~ NAPAD NA ~s~[~b~' .. v.name .. '~s~]')
                end

                if dist < 1.5 and not CurrentlyRobbing then
                    ESX.ShowHelpNotification('Naciśnij ~INPUT_CONTEXT~ aby rozpocząć ~r~napad~s~')
                    if IsControlJustReleased(0, Keys['E']) then
                        CurrentlyHoldup = v

                        PlaySoundFrontend(-1, 'Mission_Pass_Notify', 'DLC_HEISTS_GENERAL_FRONTEND_SOUNDS', 0)

                        TriggerServerEvent('p_holdup:server:checkPolice', v)
                    end
                end
            end

            if CurrentlyRobbing then
                local storePos = CurrentlyHoldup.pos

                if Vdist(playerPos.x, playerPos.y, playerPos.z, storePos.x, storePos.y, storePos.z) > 20 then
                    sleep = false
                    TriggerServerEvent('p_holdup:server:toofar', CurrentlyHoldup)
                    Citizen.Wait(1000)
                end
            end

            if sleep then
                Citizen.Wait(500)
            end
        end
    end,
    1
)


RegisterNetEvent(
    'p_holdup:client:reciveItems',
    function(can, reason)
        if not can then
            CurrentlyHoldup = nil
            ESX.ShowNotification(reason)
            return
        end

        TriggerServerEvent('p_holdup:server:start', CurrentlyHoldup)

        Citizen.Wait(5000)

        TriggerServerEvent('p_holdup:server:policeAlert', CurrentlyHoldup)

        xPlayer.showNotification('~b~[~o~LESTER~b~]: ~r~Policja została poinformowana!')
    end
)

RegisterNetEvent(
    'p_holdup:client:policeRecive',
    function(ca)
        if not ca then
            xPlayer.showNotification('~b~[~o~LESTER~b~]: ~r~Aktualnie w miescie jest za malo policjantów')
            return
        end

        TriggerServerEvent('p_holdup:server:checkTime', CurrentlyHoldup)
    end
)

RegisterNetEvent(
    'p_holdup:client:reciveTime',
    function(can)
        if not can then
            CurrentlyHoldup = nil
            ESX.ShowNotification('~r~Aktualnie w banku nie ma pieniędzy. Spróbuj ponownie później')
            return
        end
        TriggerServerEvent('p_holdup:server:checkItems', CurrentlyHoldup)
    end
)

RegisterNetEvent(
    'p_holdup:client:hack',
    function(hack)
        if hack.type == 'voltlab' then
            -- elseif hack.type == 'datacrack' then
            --     exports['datacrack']:Start(25,
            --         function(success)
            --             TriggerServerEvent('p_holdup:server:hackReturned', success)
            --         end
            --     )
            exports['voltlab']:Start(
                hack.time,
                function(t)
                    local success = false
                    if t == 1 then
                        success = true
                    end
                    TriggerServerEvent('p_holdup:server:hackReturned', success)
                end
            )
        else
            exports['otherhack']:Start(
                function(success)
                    TriggerServerEvent('p_holdup:server:hackReturned', success)
                end
            )
        end
    end
)

-- POLICE INFO
local LastGPS = nil
local CurrentBlip = nil
RegisterNetEvent(
    'p_holdup:client:setPoliceBlip',
    function(crds, name)
        exports['phantum']:SetLastGPS(crds)

        ESX.ShowNotification('~r~Naciśnij F4 aby zaznaczyć włączony alarm na GPSie')
        CurrentBlip = AddBlipForCoord(CurrentlyHoldup.pos.x, CurrentlyHoldup.pos.y, CurrentlyHoldup.pos.z)
        SetBlipSprite(CurrentBlip, 480)
        SetBlipDisplay(CurrentBlip, 2)
        SetBlipScale(CurrentBlip, 0.9)
        SetBlipColour(CurrentBlip, 1)
        SetBlipAsShortRange(CurrentBlip, true)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString('Uruchomiony alarm w placówce ' .. name)
        EndTextCommandSetBlipName(CurrentBlip)
    end
)

RegisterNetEvent(
    'p_holdup:client:removePoliceBlip',
    function()
        if CurrentBlip ~= nil then
            RemoveBlip(CurrentBlip)
        end
    end
)
