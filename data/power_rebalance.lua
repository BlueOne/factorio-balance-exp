local ProtUtils = require("Utils.Prototype")
local Table = require("Utils.Table")
require("util")



if not data.raw["assembling-machine"]["bob-greenhouse"] then return end

-- Green houses
ProtUtils["assembling-machine"]("bob-greenhouse").crafting_speed = 1
local greenhouse_cycle = Table.merge{
	ProtUtils.recipe("bob-basic-greenhouse-cycle"),
	{
		name = "bob-enhanced-greenhouse-cycle",
		order = "g[greenhouse-cycle-1]b",
		normal = {
			energy_required = 60,
			enabled = "false",
			results = {
				{type = "item", name = "raw-wood", amount_min = 20, amount_max = 30},
				{type = "item", name = "seedling", amount_min = 0, amount_max = 6},
			}
		}
	}
}

data:extend{
	greenhouse_cycle
}
table.insert(ProtUtils.tech("bob-greenhouse").effects, {type="unlock-recipe", recipe="bob-enhanced-greenhouse-cycle"})


-- Accu changes
local accu_tech = Table.merge{ProtUtils.tech("electric-energy-accumulators-1"), {
		unit = ProtUtils.pack_unit("rgbp", 150, 60),
		prerequisites = {"electric-energy-distribution-2", "advanced-material-processing-2"}
	}
}

ProtUtils.set_tech("electric-energy-accumulators-1", accu_tech)


-- Greenhouses

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
			count = 50,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
			},
			time = 30
		},
		prerequisites = {
			"circuit-network",
			"fluid-handling",
			"electric-energy-distribution-1",
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