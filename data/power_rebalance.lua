local ProtUtils = require("Utils.prototype_utils")
require("util")


local accu_tech = util.merge{ProtUtils.tech("electric-energy-accumulators-1"), {
	unit = ProtUtils.pack_unit("rgbp", 150, 60)
	}
}

accu_tech.prerequisites = {"electric-energy-distribution-2", "advanced-material-processing-2"}
ProtUtils.set_tech("electric-energy-accumulators-1", accu_tech)


-- Electric Boiler
local boiler_ent, boiler_item, boiler_recipe = ProtUtils.new_entity("electric-boiler", "boiler", "boiler")

util.merge{boiler_ent, {
	energy_usage = "1800kW",
	minable = {hardness = 0.2, mining_time = 0.5, result = "electric-boiler"},
}}
boiler_ent.energy_source = {
	type = "electric",
	usage_priority = "terciary",
	effectivity = 0.5,
}

util.merge{boiler_item, {
	order = "e[accumulator]-b[electric-boiler]",
}}

util.merge{boiler_recipe,
	{
		ingredients = {
			{"stone-path", 5},
			{"steel", 5},
			{"electric-circuit", 3},
			{"electric-engine", 1},
		},
		enabled = false
	}
}

local boiler_tech = util.merge{data.raw.technology.automation,
	{
	    name = "electric-boiler",
	    effects =
		{
			{
		        type = "unlock-recipe",
				recipe = "electric-boiler"
			}
	    },
	    unit =
	    {
			count = 250,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
			},
			time = 30
		},
		prerequisites = {
			"circuit-network",
		},
	    order = "a-h-d",
	}
}

boiler_tech.effects = {
	{
		type = "unlock-recipe",
		recipe = "electric-boiler"
	}
}

data:extend{
	boiler_ent,
	boiler_item,
	boiler_recipe,
	boiler_tech,
}