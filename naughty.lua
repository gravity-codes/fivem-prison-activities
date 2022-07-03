--[[
    This script runs the "naughty" side of prison jobs
    This involves inmates interacting with the head inmate in the cells and getting a task to steal stuff in return for valuables
]]

-- TODO The inmate ped can trade items for valuables
-- TODO Decide what things would be valuable enough for people to want to 
-- TODO -> do the prison jobs

-- Objects
local dealerPed

-- ==================== Steal Stuff Job ===============================
exports['rz-polyzone']:AddBoxZone("prison_cell_spawn", vector3(1762.94, 2486.73, 45.74), 25.4, 13.4, {
    name = "prison_cell_spawn",
    heading = 300,
    debugPoly = true,
    minZ = 44.5,
    maxZ = 50
})

RegisterNetEvent("rz-polyzone:enter", function(zone)
    if zone == 'prison_cell_spawn' then
        --TriggerEvent('rz-jail:SpawnPrisonDealers')
    end
end)

RegisterNetEvent('rz-jail:SpawnPrisonDealers', function()
    
end)

exports['rz-polytarget']:AddBoxZone("jail_store_interact", vector3(1773.73, 2493.34, 44.74), 1, 1, {
    name = "jail_store_interact",
    heading = 119.69,
    minZ = 44.5,
    maxZ = 47
})

exports['rz-interact']:AddPeekEntryByPolyTarget("jail_store_interact", {{
    
}})
