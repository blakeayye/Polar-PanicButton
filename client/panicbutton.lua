local QBCore = exports['qb-core']:GetCoreObject()


CreateThread(function()


end)


RegisterNetEvent('police:client:SendPoliceEmergencyAlert', function()

    button()
   
end)
RegisterKeyMapping('panicbutton', 'Panic Button', 'keyboard', 'o')
RegisterCommand("panicbutton", function(source) 
    
  button()
    
end)

function button()

    local src = source
    --local isDead = QBCore.Functions.GetPlayerData().metadata["isdead"]
    PlayerJob = QBCore.Functions.GetPlayerData().job.name
    PlayerJobDuty = QBCore.Functions.GetPlayerData().job.onduty
  
        if PlayerJob == "police" and PlayerJobDuty == true then
            exports['qb-dispatch']:OfficerDown()
            TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 50.0, "panicbutton", 0.35)
        end
        if PlayerJob == "ambulance" and PlayerJobDuty == true then
            exports['qb-dispatch']:EmsDown()
            TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 50.0, "panicbutton", 0.35)
        end


end