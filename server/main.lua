QBCore = exports['qb-core']:GetCoreObject()
TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)

local PaymentTax = 5

local Bail = {}

RegisterServerEvent('HIJINX-Pilotjob:server:DoBail')
AddEventHandler('HIJINX-Pilotjob:server:DoBail', function(bool, vehInfo)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if bool then
        if Player.PlayerData.money.cash >= Config.BailPrice then
            Bail[Player.PlayerData.citizenid] = Config.BailPrice
            Player.Functions.RemoveMoney('cash', Config.BailPrice, "tow-received-bail")
            TriggerClientEvent('QBCore:Notify', src, 'You paid your deposit of $1000 (cash)', 'success')
            TriggerClientEvent('HIJINX-Pilotjob:client:SpawnVehicle', src, vehInfo)
        elseif Player.PlayerData.money.bank >= Config.BailPrice then
            Bail[Player.PlayerData.citizenid] = Config.BailPrice
            Player.Functions.RemoveMoney('bank', Config.BailPrice, "tow-received-bail")
            TriggerClientEvent('QBCore:Notify', src, 'You paid your deposit of $1000 (bank)', 'success')
            TriggerClientEvent('HIJINX-Pilotjob:client:SpawnVehicle', src, vehInfo)
        else
            TriggerClientEvent('QBCore:Notify', src, 'You dont have enough cash, the deposit is $1000.', 'error')
        end
    else
        if Bail[Player.PlayerData.citizenid] ~= nil then
            Player.Functions.AddMoney('cash', Bail[Player.PlayerData.citizenid], "pilotjob-bail-paid")
            Bail[Player.PlayerData.citizenid] = nil
            TriggerClientEvent('QBCore:Notify', src, 'You received your deposit back.', 'success')
        end
    end
end)

RegisterNetEvent('HIJINX-Pilotjob')
AddEventHandler('HIJINX-Pilotjob', function(drops)
    local src = source 
    local Player = QBCore.Functions.GetPlayer(src)
    local drops = tonumber(drops)
    local bonus = 0
    local DropPrice = math.random(350, 450)
    if drops > 5 then 
        bonus = math.ceil((DropPrice / 30) * 5) + 30
    elseif drops > 10 then
        bonus = math.ceil((DropPrice / 30) * 7) + 60
    elseif drops > 15 then
        bonus = math.ceil((DropPrice / 30) * 10) + 90
    elseif drops > 20 then
        bonus = math.ceil((DropPrice / 30) * 12) + 120
    end
    local price = (DropPrice * drops) + bonus
    local taxAmount = math.ceil((price / 100) * PaymentTax)
    local payment = price - taxAmount
    Player.Functions.AddMoney("bank", payment, "pilotjob-salary")
    TriggerClientEvent('chatMessage', source, "JOB", "warning", "You received your paycheck of: $"..price..", Net Pay: $"..payment.." (of what $"..bonus.." was a bonus) and $"..taxAmount.." deducted ("..PaymentTax.."%)")
end)

