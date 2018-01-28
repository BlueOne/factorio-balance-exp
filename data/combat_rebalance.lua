local ProtUtils = require("Utils.Prototype")


ProtUtils.tech("gates").unit = ProtUtils.pack_unit("rg", 30, 30)
ProtUtils.tech("cliff-explosives").unit = ProtUtils.pack_unit("rg", 400, 15)

local alternative_military = ProtUtils.duplicate_recipe("military-science-pack", "alt-military-science-pack")
ProtUtils.recipe_replace_ingredient(alternative_military, "piercing-rounds-magazine", "explosives")
ProtUtils.recipe_remove_ingredient(alternative_military, "grenades")
data:extend{
    alternative_military
}

ProtUtils.recipe("solar-panel-equipment").ingredients = {
    {"solar-panel", 1},
    {"advanced-circuit", 1},
    {"steel-plate", 5}
}