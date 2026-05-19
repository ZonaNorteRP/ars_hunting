-- AIMBLOCK DESABILITADO - Sistema comentado para permitir mira livre
--[[
if not Config.AimBlock.enable then return end

local aimBlockThread = nil

function aimBlock(global)
    if aimBlockThread then return end -- Evita múltiplas threads

    aimBlockThread = CreateThread(function()
        while cache.weapon and (global and true or currentZone) and aimBlockThread do
            local aiming, entity = GetEntityPlayerIsFreeAimingAt(cache.playerId)
            local freeAiming = IsPlayerFreeAiming(cache.playerId)
            local type = GetEntityType(entity)

            -- Permite mirar em animais (type == 1 e não é player e não está em veículo)
            local isAnimal = type == 1 and not IsPedAPlayer(entity) and not IsPedInAnyVehicle(entity, false)

            -- Bloqueia apenas se não estiver mirando em animal válido
            if not freeAiming or (aiming and entity ~= 0 and not isAnimal) or (aiming and entity ~= 0 and IsPedAPlayer(entity)) or type == 2 then
                DisableControlAction(0, 24, true)
                DisableControlAction(0, 47, true)
                DisableControlAction(0, 58, true)
                DisablePlayerFiring(cache.ped, true)
            end
            Wait(1)
        end
        aimBlockThread = nil
    end)
end

function stopAimBlock()
    if aimBlockThread then
        aimBlockThread = nil
    end
end
--]]

-- Funções vazias para manter compatibilidade
function aimBlock(global)
    -- Função desabilitada - permite mira livre
end

function stopAimBlock()
    -- Função desabilitada - permite mira livre
end
