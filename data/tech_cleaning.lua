local ProtUtils = require("Utils.Prototype")
local Table = require("Utils.Table")



-- Clean up prerequisites
--------------------------

ProtUtils.tech("worker-robots-storage-1").prerequisites = {
	"logistic-robotics",
	"construction-robotics",
}

ProtUtils.tech("worker-robots-speed-1").prerequisites = {
	"logistic-robotics",
	"construction-robotics",
}

ProtUtils.add_prereq("oil-processing", "fluid-handling")
ProtUtils.add_prereq("laser-turrets", "solar-energy")

--ProtUtils.tech("toolbelt").prerequisites = {"automation-2"}

ProtUtils.tech("nuclear-power").prerequisites = {"concrete", "advanced-electronics", "circuit-network", "sulfur-processing"}

-- Purple Science
ProtUtils.add_prereq("coal-liquefaction", "advanced-material-processing-2")
ProtUtils.add_prereq("automation-3", "advanced-material-processing-2")
ProtUtils.add_prereq("logistic-system", "advanced-material-processing-2")
ProtUtils.add_prereq("kovarex-enrichment-process", "advanced-material-processing-2")
ProtUtils.add_prereq("nuclear-fuel-reprocessing", "advanced-material-processing-2")

-- Yellow Science
ProtUtils.add_prereq("logistic-system", "advanced-electronics-2")
ProtUtils.add_prereq("kovarex-enrichment-process", "advanced-electronics-2")
ProtUtils.add_prereq("personal-roboport-equipment-2", "advanced-electronics-2")
ProtUtils.add_prereq("speed-module-3", "advanced-electronics-2")
ProtUtils.add_prereq("effectivity-module-3", "advanced-electronics-2")
ProtUtils.technology("fusion-reactor-equipment").prerequisites = {"advanced-electronics-2", "power-armor"}

--ProtUtils.add_prereq("military-4", "advanced-electronics-2")
--ProtUtils.add_prereq("battery-mk2-equipment", "advanced-electronics-2")


-- Rocket Silo
ProtUtils.add_prereq("rocket-silo", "solar-energy")
--ProtUtils.add_prereq("rocket-silo", "electric-energy-accumulators-1")
ProtUtils.add_prereq("rocket-silo", "concrete")
ProtUtils.add_prereq("rocket-silo", "electric-engine")

ProtUtils.add_prereq("rocket-silo", "rocket-upgrade-3")
ProtUtils.del_prereq("rocket-silo", "rocket-upgrade-5") -- to rebalance merge of damage and speed upgrades

ProtUtils.del_prereq("rocket-silo", "advanced-electronics-2") -- via modules



-- Logistics
--------------------------------------------------------------------------------------
ProtUtils.merge_techs({
	"inserter-capacity-bonus-1",
	"inserter-capacity-bonus-2",
})

ProtUtils.merge_techs({
	"inserter-capacity-bonus-4",
	"inserter-capacity-bonus-5",
	"inserter-capacity-bonus-6"
})
-- ProtUtils.rename_tech("inserter-capacity-bonus-3", "inserter-capacity-bonus-2")
-- ProtUtils.rename_tech("inserter-capacity-bonus-4", "inserter-capacity-bonus-3")
-- ProtUtils.rename_tech("inserter-capacity-bonus-7", "inserter-capacity-bonus-4")

ProtUtils.merge_techs({
	"braking-force-1",
	"braking-force-2"
})
-- TODO: Split in 2
ProtUtils.merge_techs({
	"braking-force-3",
	"braking-force-4",
	"braking-force-5"
})
ProtUtils.merge_techs({
	"braking-force-6",
	"braking-force-7"
})

ProtUtils.merge_techs({"engine", "automobilism"})

--ProtUtils.tech("circuit-network").unit.count = 20

ProtUtils.merge_techs({
	"railway",
	"automated-rail-transportation",
	"rail-signals",
	"fluid-wagon"
})
ProtUtils.set_tech_cost("railway", "rg", 250, 30, 1)
local rail2 = Table.copy(ProtUtils.tech("railway"))
local rail3 = Table.copy(ProtUtils.tech("railway"))
rail2.enabled = false
rail3.enabled = false
rail3.name = "rail-signals"
rail2.name = "automated-rail-transportation"
data:extend{rail2, rail3}


-- Military
-------------------------------------------------------------------------------------


ProtUtils.merge_techs({
	"military",
	"turrets",
})

ProtUtils.merge_techs({
	"stone-walls",
	"gates",
	"optics"
})
ProtUtils.set_tech_cost("stone-walls", "r", 30, 10, 1)

ProtUtils.merge_techs({
	"military-2",
	"combat-robotics",
	"follower-robot-count-1",
	"follower-robot-count-2",
})
ProtUtils.del_prereq("military-2", "flying")
ProtUtils.add_recipe_unlock("military-2", "slowdown-capsule")
ProtUtils.del_recipe_unlock("military-3", "slowdown-capsule")
ProtUtils.del_prereq("stone-walls", "military-2")
ProtUtils.set_tech_cost("military-2", "rg", 40, 15, 1)

ProtUtils.merge_techs({
	"modular-armor",
	"toolbelt",
	"night-vision-equipment",
	"battery-equipment",
	"solar-panel-equipment",
})

ProtUtils.merge_techs({
	"power-armor",
	"exoskeleton-equipment",
	"battery-mk2-equipment",
	"personal-roboport-equipment"
})

ProtUtils.merge_techs({
	"explosives",
	"land-mine",
	"cliff-explosives",
})
ProtUtils.set_tech_cost("explosives", "rgm", 150, 15, 1)



ProtUtils.merge_techs({"military-3", "military-4"})
ProtUtils.set_tech_cost("military-3", "rgbm", 200, 30, 1)

for i = 1, 6 do
	local tech = ProtUtils.merge_techs({
		"bullet-damage-" .. i,
		"bullet-speed-" .. i,
	}, "bullet-upgrade-" .. i)

	if i == 3 then
		tech.unit = ProtUtils.pack_unit("rgm", 120, 60)
	end
end


-- Cannon Shell
for i = 1, 5 do
	ProtUtils.merge_techs({
		"cannon-shell-damage-" .. i,
		"cannon-shell-speed-" .. i,
	}, "cannon-shell-upgrade-" .. i)
end

ProtUtils.merge_techs({"cannon-shell-upgrade-1", "cannon-shell-upgrade-2"})
ProtUtils.set_tech_cost("cannon-shell-upgrade-1", "rgbm", 350, 60, 1)


-- Flamethrower
ProtUtils.merge_techs{
	"flamethrower-damage-1",
	"flamethrower-damage-2"
}
ProtUtils.merge_techs{
	"flamethrower-damage-3",
	"flamethrower-damage-4"
}
ProtUtils.merge_techs{
	"flamethrower-damage-5",
	"flamethrower-damage-6"
}

-- Laser Turret
for i = 1, 7 do
	ProtUtils.merge_techs({
		"laser-turret-damage-" .. i,
		"laser-turret-speed-" .. i,
	}, "laser-turret-upgrade-" .. i)
end

-- Rocket
for i = 1, 6 do
	ProtUtils.merge_techs({
		"rocket-damage-" .. i,
		"rocket-speed-" .. i,
	}, "rocket-upgrade-" .. i)
end

-- Handle Lvl 7
ProtUtils.rename_tech("rocket-damage-7", "rocket-damage-8")
ProtUtils.rename_tech("rocket-speed-7", "rocket-upgrade-7")
local tech = ProtUtils.tech("rocket-upgrade-7")
table.insert(tech.effects, {
	type = "ammo-damage",
	ammo_category = "rocket",
	modifier = 0.5
})
tech.prerequisites = {"rocket-upgrade-6"}
tech.icon = "__base__/graphics/technology/rocket-damage.png"
ProtUtils.tech("rocket-damage-8").prerequisites = {"rocket-upgrade-7"}

ProtUtils.merge_techs{"rocket-upgrade-4", "rocket-upgrade-5"}
ProtUtils.del_prereq("rocket-silo", "rocket-upgrade-5")


-- Shotgun Shell
for i = 1, 6 do
	local tech = ProtUtils.merge_techs({
		"shotgun-shell-damage-" .. i,
		"shotgun-shell-speed-" .. i,
	}, "shotgun-shell-upgrade-" .. i)

	if i == 3 then
		tech.unit = ProtUtils.pack_unit("rrggm", 100, 60)
	end
end


-- Grenade Damage
ProtUtils.merge_techs{
	"grenade-damage-2",
	"grenade-damage-3"
}
ProtUtils.merge_techs{
	"grenade-damage-4",
	"grenade-damage-5"
}

-- Combat Bots
ProtUtils.merge_techs({
	"combat-robot-damage-1",
	"combat-robot-damage-2",
})
ProtUtils.merge_techs({
	"combat-robot-damage-3",
	"combat-robot-damage-4",
})
-- ProtUtils.merge_techs({
-- 	"combat-robot-damage-5",
-- 	"combat-robot-damage-6",
-- })

--ProtUtils.set_tech_cost("follower-robot-count-1", "rgm", 300, 30, 1)

ProtUtils.merge_techs({
	"combat-robotics-2",
	"follower-robot-count-3",
	"follower-robot-count-4",
})
ProtUtils.set_tech_cost("combat-robotics-2", "rgmb", 500, 30, 1)

ProtUtils.merge_techs({
	"combat-robotics-3",
	"follower-robot-count-5",
	"follower-robot-count-6",
})
ProtUtils.set_tech_cost("combat-robotics-3", "rgmby", 500, 30, 1)

ProtUtils.merge_techs{
	"rocketry",
	"explosive-rocketry"
}


-- Remove laser
ProtUtils.remove_tech_prereq("laser")
ProtUtils.set_tech("laser")
ProtUtils.del_prereq("military-3", "stone-walls")

-- Production
--------------------------------------------------------

ProtUtils.merge_techs{
	"steel-processing",
	"heavy-armor",
}
ProtUtils.del_prereq("steel-processing", "military")
ProtUtils.merge_techs{
	"automation-2",
	"electronics",
}
ProtUtils.set_tech_cost("automation-2", "r", 100, 5, 1)

ProtUtils.merge_techs{"research-speed-1", "research-speed-2"}

ProtUtils.merge_techs{"kovarex-enrichment-process", "nuclear-fuel-reprocessing"}
ProtUtils.tech("kovarex-enrichment-process").unit.count = ProtUtils.tech("kovarex-enrichment-process").unit.count - 1500


-- Mining Productivity
--------------------------------------------------------

local mprod = data.raw.technology["mining-productivity-1"]
local to_delete = {}
for k, tech in pairs(data.raw.technology) do
	if string.sub(tech.name, 0, #"mining-productivity") == "mining-productivity" then
		table.insert(to_delete, k)
	end
end
for _, k in pairs(to_delete) do
	data.raw.technology[k] = nil
end

for i, cost in pairs{
	{"rg", 600},
	{"rgb", 2200},
	{"rgbp", 3800},
	{"rgbpy", 5400}
} do
	local tech = Table.copy(mprod)
	tech.effects =
	{
	  {
		type = "mining-drill-productivity-bonus",
		modifier = 0.06
	  }
	}
	tech.unit = ProtUtils.pack_unit(cost[1], cost[2], 60, 1)
	tech.name = "mining-productivity-" .. i
	if i == 1 then
		tech.prerequisites = {"modules"}
	else
		tech.prerequisites = {"mining-productivity-" .. (i-1)}
	end
	tech.max_level = nil
	data:extend{tech}
end
mprod.name = "mining-productivity-5"
mprod.unit = {
	count_formula = "100(L-1)",
	ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"production-science-pack", 1},
		{"high-tech-science-pack", 1},
		{"space-science-pack", 1}
	},
	time = 60
}
mprod.prerequisites = {	"mining-productivity-4"}
mprod.max_level = "infinite"
data:extend{mprod}


-- Power
--------------------------------------------------------

ProtUtils.merge_techs{
	"solar-energy",
	"electric-energy-accumulators-1"
}

ProtUtils.del_prereq("solar-energy", "automation-2")


-- Robots
--------------------------------------------------------


ProtUtils.merge_techs({
	"electric-engine",
	"flying",
	"robotics",
	"sulfur-processing",
	"battery"
})
ProtUtils.del_prereq("electric-engine", "advanced-electronics")
ProtUtils.tech("logistic-robotics").unit.count = ProtUtils.tech("logistic-robotics").unit.count + 150
ProtUtils.tech("construction-robotics").unit.count = ProtUtils.tech("construction-robotics").unit.count + 200
ProtUtils.merge_techs({
	"logistic-robotics", 
	--"character-logistic-slots-1",
	"character-logistic-trash-slots-1"
})
ProtUtils.merge_techs({
	"character-logistic-trash-slots-2",
	"auto-character-logistic-trash-slots",
}, "auto-character-logistic-trash-slots")


ProtUtils.tech("electric-engine").unit.count = ProtUtils.tech("electric-engine").unit.count - 150
ProtUtils.add_prereq("advanced-material-processing-2", "electric-engine")
ProtUtils.merge_techs({"advanced-material-processing", "landfill"})



-- Intermediates
--------------------------------------------------------
ProtUtils.merge_techs({
	"oil-processing",
	"flammables",
})
-- ProtUtils.del_recipe_unlock("oil-processing", "lubricant")
-- ProtUtils.add_recipe_unlock("plastics", "lubricant")

local adv_el = ProtUtils.merge_techs({"advanced-electronics", "plastics"})
ProtUtils.add_prereq("advanced-electronics", "engine")
--adv_el.icon = "__base__/graphics/technology/advanced-electronics.png",


-- Modules
--------------------------------------------------------
ProtUtils.merge_techs({
	"modules",
	"speed-module",
	"productivity-module",
	"effectivity-module",
})

local modules_2 = ProtUtils.merge_techs({
	"speed-module-2",
	"productivity-module-2",
	"effectivity-module-2",
}, "modules-2")
modules_2.icon = "__base__/graphics/technology/module.png"



-- Remove Prerequisites
ProtUtils.del_prereq("rocketry", "oil-processing")
ProtUtils.del_prereq("rocketry", "automation-2")
ProtUtils.del_prereq("rocketry", "military-2")


ProtUtils.del_prereq("fluid-handling", "automation-2")
ProtUtils.del_prereq("oil-processing", "steel-processing")
ProtUtils.del_prereq("laser-turrets", "turrets")
ProtUtils.del_prereq("laser-turrets", "stone-walls")
ProtUtils.del_prereq("stone-walls", "military-2")
ProtUtils.del_prereq("combat-robotics-2", "military-2")
ProtUtils.del_prereq("laser-turrets", "advanced-electronics")
ProtUtils.del_prereq("advanced-electronics", "automation-2")

