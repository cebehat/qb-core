local function drawBlip(data)
    local blip = AddBlipForCoord(data.coords.x, data.coords.y, data.coords.z)
    local blipType = QBShared.BlipTypes[data.blipType]
    if not DoesBlipExist(blip) then
        SetBlipSprite(blip, blipType.sprite)
        SetBlipScale(blip, blipType.scale)
        SetBlipColour(blip, blipType.colour)
        SetBlipAsShortRange(blip, blipType.isShortRange)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringBlipName(data.label)
        EndTextCommandSetBlipName(blip)
    end
end

local function removeBlip(data)
    local blip = AddBlipForCoord(data.coords.x, data.coords.y, data.coords.z)
    RemoveBlip(blip)
end

RegisterNetEvent('qb-core:client:DrawBlip', function(data)
    drawBlip(data)
end)

RegisterNetEvent('qb-core:client:RemoveBlip', function(data)
    removeBlip(data)
end)