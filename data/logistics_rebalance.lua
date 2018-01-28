
local ProtUtils = require("Utils.Prototype")
require("util")



-- Various

ProtUtils.set_tech_cost("stack-inserter", "rg", 350, 30)
ProtUtils.set_tech_cost("inserter-capacity-bonus-3", "rgb", 100, 30)
ProtUtils.set_tech_cost("inserter-capacity-bonus-4", "rgbp", 500, 60)



-- Rebalance vacuum belts

if data.raw.technology["vacuum-logistics-4"] then

	ProtUtils.tech("railway").prerequisites = {	"engine", "logistics" }
	ProtUtils.tech("automobilism").prerequisites = { "engine", "logistics" }
	ProtUtils.tech("stack-inserter").prerequisites = {"advanced-electronics", "logistics" }

	
	local log2 = ProtUtils.merge_techs{"logistics-2", "logistics-3"}
	log2.effects = {
		{
			type = "unlock-recipe",
			recipe = "express-transport-belt"
		},
		{
			type = "unlock-recipe",
			recipe = "express-underground-belt"
		},
		{
			type = "unlock-recipe",
			recipe = "express-splitter"
		}
	}
	log2.unit = ProtUtils.pack_unit("rgb", 500, 15)
	log2.prerequisites = {"advanced-electronics", "logistics"}

	ProtUtils.remove_entity("fast-transport-belt", "transport-belt")
	ProtUtils.remove_entity("fast-underground-belt", "underground-belt")
	ProtUtils.remove_entity("fast-splitter", "splitter")


	for _, name in pairs({"transport-belt", "underground-belt", "splitter"}) do
		local belt_ent = data.raw[name][name]
		belt_ent.speed = 0.046875 -- 20/s
	end

	local belt_recipe =  ProtUtils.recipe("transport-belt")
	belt_recipe.ingredients =
		{
			{"iron-plate", 3},
			{"iron-gear-wheel", 1}
		}

	local ub_recipe =  ProtUtils.recipe("underground-belt")
	ub_recipe.ingredients =
		{
			{"iron-plate", 15},
			{"transport-belt", 5}
		}

	local splitter_recipe = ProtUtils.recipe("splitter")
	splitter_recipe.ingredients =
		{
			{"electronic-circuit", 5},
			{"iron-plate", 10},
			{"transport-belt", 4}
		}


	ProtUtils.recipe_replace_ingredient_all("fast-transport-belt", "transport-belt")
	ProtUtils.recipe_replace_ingredient_all("fast-underground-belt", "underground-belt")
	ProtUtils.recipe_replace_ingredient_all("fast-splitter", "splitter")


	-- data.raw["transport-belt"]["vacuum-transport-belt"].order = "a[transport-belt]-d[vacuum-transport-belt]"
	-- data.raw["underground-belt"]["vacuum-underground-belt"].order = "b[underground-belt]-d[vacuum-underground-belt]"
	-- data.raw["splitter"]["vacuum-splitter"].order = "c[splitter]-d[vacuum-splitter]"

	data.raw.item["vacuum-transport-belt"].subgroup = "belt"
	data.raw.item["vacuum-underground-belt"].subgroup = "belt"
	data.raw.item["vacuum-splitter"].subgroup = "belt"


	-- for _, name in pairs({"transport-belt", "underground-belt", "splitter"}) do
	-- 	local belt_ent = data.raw[name]["vacuum-" .. name]
	-- 	belt_ent.speed = 0.28125 -- 120/s
	-- end

end -- End vacuum logistics rebalance.