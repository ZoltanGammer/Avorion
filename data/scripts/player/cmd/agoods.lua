if onServer() then

package.path = package.path .. ";data/scripts/lib/?.lua"
require ("goods")

function initialize(name, quantity, ...)
	local player = Player()

	-- player:sendChatMessage("Server", 0, string.format("%s", type(ipairs(arg)) ))

	name = string.gsub(name, "_", " ")

	if goods[name] ~= nil then
		local ship = Entity(player.craftIndex)
		local good = tableToGood(goods[name])

		ship:addCargo(good, quantity)
	else
		player:sendChatMessage("Server", 0, string.format("Error:%s is not a good!", name ))
	end

	terminate()
end

-- Searches table for patterns.
function checkTable(table, str)
	for _,item in pairs(table) do
		if item[1](str) then return item[2] end
	end
end

end
