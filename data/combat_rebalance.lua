local ProtUtils = require("Utils.Prototype")
local Table = require("Utils.Table")

-- ProtUtils.tech("gates").unit = ProtUtils.pack_unit("rg", 30, 30)
-- ProtUtils.tech("cliff-explosives").unit = ProtUtils.pack_unit("rg", 400, 15)



-- Alternative Military Science Pack Recipe
local alternative_military = Table.deepcopy(ProtUtils.recipe("military-science-pack"))
alternative_military.name = "alt-military-science-pack"
ProtUtils.recipe_replace_ingredient(alternative_military, "piercing-rounds-magazine", "explosives")
ProtUtils.recipe_remove_ingredient(alternative_military, "grenade")
table.insert(ProtUtils.technology("explosives").effects, {type="unlock-recipe", recipe=alternative_military.name})
data:extend{
    alternative_military
}


ProtUtils.recipe("personal-laser-defense-equipment").ingredients = {
    {"steel-plate", 5},
    {"laser-turret", 5},
    {"advanced-circuit", 5},
}

Table.merge_inplace{
    ProtUtils.item("personal-laser-defense-equipment"),
    {
        attack_parameters =
        {
            damage_modifier = 5,
            ammo_type =
            {
                energy_consumption = "60kJ",
            }
        },
    }
}



ProtUtils["equipment-grid"]("small-equipment-grid").width = 6
ProtUtils["equipment-grid"]("small-equipment-grid").height = 6
ProtUtils["equipment-grid"]("medium-equipment-grid").width = 8
ProtUtils["equipment-grid"]("medium-equipment-grid").height = 8


ProtUtils.recipe("solar-panel-equipment").ingredients = {
    {"solar-panel", 1},
    {"advanced-circuit", 1},
    {"steel-plate", 5}
}

ProtUtils.item("solar-panel-equipment").power = "20kW"


local gun_turret = ProtUtils["ammo-turret"]("gun-turret")
gun_turret.max_health = 500
gun_turret.ammo_stack_limit = 40

local laser_turret = ProtUtils["electric-turret"]("laser-turret")
laser_turret.max_health = 500