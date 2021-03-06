local ProtUtils = require("Utils.Prototype")

local new_stack_sizes = {
    item = {
        {"fast-transport-belt", 200},
		{"fast-underground-belt", 100},
		{"fast-splitter", 100},
		{"express-transport-belt", 200},
		{"express-underground-belt", 100},
		{"express-splitter", 100},
        {"roboport", 20},
        {"storage-tank", 20},
        {"nuclear-reactor", 5},
        {"heat-exchanger", 20},
        {"boiler", 20},
        {"steam-engine", 20},
        {"steam-turbine", 20},
        {"chemical-plant", 20},
        {"centrifuge", 20},
        {"beacon", 20}, 
        {"stone-wall", 200},
        {"fusion-reactor-equipment", 1},
        {"energy-shield-equipment", 10},
        {"energy-shield-mk2-equipment", 10},
        {"battery-equipment", 10},
        {"battery-mk2-equipment", 10},
        {"personal-laser-defense-equipment", 10},
        {"discharge-defense-equipment", 10},
        {"small-lamp", 200},
        {"radar", 20},
    },
    ["rail-planner"] = {
        {"rail", 200}
    },
    capsule = {
        {"cliff-explosives", 200}
    },
    tool = {
        {"space-science-pack", 200}
    },
    ["item-with-entity-data"] = {
        {"cargo-wagon", 20},
        {"locomotive", 10},
    }
    --{"fluid-wagon", 10},
}

for t, items in pairs(new_stack_sizes) do
    for _, item in pairs(items) do
        ProtUtils[t](item[1]).stack_size = item[2]
    end
end
