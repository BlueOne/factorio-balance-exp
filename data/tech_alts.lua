
-- Technology Alternative Costs
-- File is dual-purpose: If the data table exists, it will add the tech alternatives into the data table.
-- If the data table does not exist, it will return a table of the names of all tech alternative sets,
-- similar to {{"turret-damage-3", "alt-turret-damage-3"}, ... }



local ProtUtils = require("Utils.prototype_utils")


local tech_alts = {}


-- Utilities


local function dup(old, cost, cost_factor, new_name)
	new_name = new_name or "alt-" .. old
	if data then
		cost_factor = cost_factor or 2
		local old_tech = ProtUtils.tech(old)
		local new_tech = ProtUtils.duplicate_tech(old_tech, new_name)

		if type(cost) == "string" then
			local old_cost = ProtUtils.tech_cost(old_tech.unit.ingredients) * old_tech.unit.count
			local new_ingredients = ProtUtils.decode_ingredient_string(cost)
			local new_cost_per = ProtUtils.tech_cost(new_ingredients)
			local new_count = (math.floor(old_cost / new_cost_per / 50) + 1) * 50

			new_tech.unit = {
				count = new_count * cost_factor,
				ingredients = new_ingredients,
				time = old_tech.unit.time,
			}
		else
			new_tech.unit = ProtUtils.pack_unit(table.unpack(cost))
		end
		--ProtUtils.multiply_effects(old_tech, 1)
		ProtUtils.multiply_effects(new_tech, 0)
		data:extend{ new_tech }
		return new_tech
	else
		table.insert(tech_alts, {old, new_name})
	end
end


-- Actual Techs

dup("gun-turret-damage-3", "rg")
--dup("gun-turret-damage-4", "rg", 3)
dup("gun-turret-damage-5", "rgm")
dup("bullet-upgrade-3", "rg")
--dup("bullet-upgrade-4", "rg", 3)
dup("bullet-upgrade-5", "rgm")
--dup("bullet-upgrade-6", "rgm", 3)
dup("shotgun-shell-upgrade-3", "rg")
dup("shotgun-shell-upgrade-5", "rgm")
--dup("shotgun-shell-upgrade-4", "rg", 3)
dup("grenade-damage-1", "rg", 1.5)
dup("grenade-damage-2", "rg", 3)
dup("laser-turret-upgrade-3", "rgm")
dup("laser-turret-upgrade-5", "rgmb")
dup("explosives", "rg")
dup("flamethrower", "rg", 4)
dup("land-mine", "rg", 1.5)



return tech_alts
