Citizen.CreateThread(function()
    while true do
        Wait(1)
        local isInMarker  = false
        local currentZone = nil
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        for k,v in pairs(Config.Zones) do
            local dist =  Vdist(coords, v.Pos.x, v.Pos.y, v.Pos.z)
            if dist < 2 then
                isInMarker = true
                local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING", Config.text, Citizen.ResultAsLong())
                Citizen.InvokeNative(0xFA233F8FE190514C, str)
                Citizen.InvokeNative(0xE9990552DEC71600)
                if IsControlJustPressed(0, 0x5415BE48) then
                    TriggerServerEvent('duty:setjob')
                end
            end
        end
    end
end)