VORP = exports.vorp_core:vorpAPI()
local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

RegisterServerEvent('duty:setjob')
AddEventHandler('duty:setjob', function()
    local _source = source
    local User = VorpCore.getUser(source)
    local Character = User.getUsedCharacter

    if Character.job == 'police' then
        Character.setJob("offpolice")
    elseif Character.job == 'offpolice' then
        Character.setJob("police")
    elseif Character.job == 'doctor' then
        Character.setJob("offdoctor")
    elseif Character.job == 'offdoctor' then
        Character.setJob("doctor")
    end
end)