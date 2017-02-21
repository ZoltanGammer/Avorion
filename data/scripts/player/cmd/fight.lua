if onServer() then

package.path = package.path .. ";data/scripts/lib/?.lua"
package.path = package.path .. ";data/scripts/?.lua"

require ("randomext")
PlanGenerator = require ("plangenerator")
Placer = require("placer")
SectorGenerator = require ("SectorGenerator")

function generate_ship(sector, faction_sytle, faction_combat, volume, position)

        ShipGenerator.createMilitaryShip(faction_sytle, position, volume)

    -- local plan = PlanGenerator.makeShipPlan(faction_sytle, volume)
    -- local ship = Sector():createShip(faction_combat, "", plan, position)


end


function get_random_position( distance )

    -- create random
    local position = vec3(math.random(), math.random(), math.random());
    position = position * radius

    -- create a random up vector
    local up = vec3(math.random(), math.random(), math.random())

    -- create a random right vector
    local look = vec3(math.random(), math.random(), math.random())

    -- create the look vector from them
    local mat = MatrixLookUp(look, up)
    mat.pos = position

    return matasteroidPos
end

function get_positions( distance, radius, number )

    -- get fight middle
    local middle = get_random_position(distance)

    -- get poisitions


end


function single_fight(player, distance)
    -- get an enemy position
    local player_ship = Entity(player.craftIndex)

    local dir = player_ship.aimedPosition * distance

    local pos = player_ship.position

    --Why ':' instead of '.' ?
    local enemy_poition = pos:transformCoord(dir)

    -- create enemy

    local sector = Sector()
    
    factionName = "Enemy"

    local faction = Galaxy():findFaction(factionName)
    if not faction then
        faction = Galaxy():createFaction(factionName, x, y)
    end

    -- generate_ship(sector, faction, nil, 100, pos)


    Placer.resolveIntersections()

end

function initialize()
    local player = Player()

    single_fight(player, 5000, 1000)

    terminate()
end

end
