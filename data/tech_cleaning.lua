local ProtUtils = require("Utils.prototype_utils")



-- Logistics

ProtUtils.merge_techs({
	"inserter-capacity-bonus-1",
	"inserter-capacity-bonus-2",
})

ProtUtils.merge_techs({
	"inserter-capacity-bonus-4",
	"inserter-capacity-bonus-5",
	"inserter-capacity-bonus-6"
})

-- Tutorial is in the way of this merge ...
-- ProtUtils.merge_techs({
-- 	"railway",
-- 	"automated-rail-transportation",
-- 	"rail-signals"
-- })


-- Military


ProtUtils.merge_techs({
	"military",
	"turrets",
})

ProtUtils.merge_techs({
	"modular-armor",
	"night-vision-equipment",
	"battery-equipment",
	"solar-panel-equipment",
})


for i = 1, 6 do
	local tech = ProtUtils.merge_techs({
		"bullet-damage-" .. i,
		"bullet-speed-" .. i,
	}, "bullet-upgrade-" .. i)

	if i == 3 then
		tech.unit = ProtUtils.pack_unit("rrggm", 100, 60)
	end
end


-- Cannon Shell
for i = 1, 5 do
	ProtUtils.merge_techs({
		"cannon-shell-damage-" .. i,
		"cannon-shell-speed-" .. i,
	}, "cannon-shell-upgrade-" .. i)
end

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

-- TODO: Handle lvl 7. damage is inf and needs space science :/

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


-- Remove laser
ProtUtils.remove_tech_prereq("laser")
ProtUtils.set_tech("laser")
ProtUtils.del_prereq("military-3", "optics")


-- Robots

ProtUtils.merge_techs({
	"electric-engine",
	"flying",
	"robotics",
})

ProtUtils.tech("logistic-robotics").unit.count = ProtUtils.tech("logistic-robotics").unit.count + 150
ProtUtils.tech("construction-robotics").unit.count = ProtUtils.tech("construction-robotics").unit.count + 200

--ProtUtils.tech("battery").unit.count = ProtUtils.tech("battery").unit.count + 150
ProtUtils.tech("electric-engine").unit.count = ProtUtils.tech("electric-engine").unit.count - 150
ProtUtils.add_prereq("advanced-material-processing-2", "electric-engine")



-- Intermediates
ProtUtils.merge_techs({"sulfur-processing", "battery",})
ProtUtils.merge_techs({"oil-processing", "flammables"})


ProtUtils.del_recipe_unlock("oil-processing", "lubricant")
ProtUtils.add_recipe_unlock("plastics", "lubricant")
ProtUtils.add_prereq("electric-engine", "plastics")
ProtUtils.del_prereq("electric-engine", "oil-processing")
ProtUtils.del_prereq("electric-engine", "advanced-electronics")


-- Modules
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

-- ProtUtils.tech("power-armor").prerequisites = {
-- 	"modular-armor",
-- 	"electric-engine",
-- 	"advanced-electronics-2"
-- }


ProtUtils.tech("combat-robotics").prerequisites = {"military-2"}
ProtUtils.del_prereq("laser-turrets", "turrets")

ProtUtils.tech("toolbelt").prerequisites = {"automation-2"}

ProtUtils.tech("landfill").prerequisites = {"advanced-material-processing"}

ProtUtils.tech("nuclear-power").prerequisites = {"concrete", "advanced-electronics", "circuit-network", }
ProtUtils.tech("advanced-electronics").prerequisites = {"electronics", "plastics"}


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
ProtUtils.add_prereq("fusion-reactor-equipment", "advanced-electronics-2")
ProtUtils.add_prereq("military-4", "advanced-electronics-2")
ProtUtils.add_prereq("battery-mk2-equipment", "advanced-electronics-2")


-- Rocket Silo
ProtUtils.add_prereq("rocket-silo", "solar-energy")
ProtUtils.add_prereq("rocket-silo", "electric-energy-accumulators-1")
ProtUtils.add_prereq("rocket-silo", "concrete")
ProtUtils.add_prereq("rocket-silo", "electric-engine")
ProtUtils.add_prereq("rocket-silo", "rocket-upgrade-3")

ProtUtils.del_prereq("rocket-silo", "rocket-upgrade-5") -- to rebalance merge of damage and speed upgrades
ProtUtils.del_prereq("rocket-silo", "advanced-electronics-2") -- via modules


-- ProtUtils.tech("exoskeleton-equipment").prerequisites = {"electric-engine", "modular-armor", "advanced-electronics-2"}
