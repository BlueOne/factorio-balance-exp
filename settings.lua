
data:extend{
	{
		name = "balanceexp-enable-vacuum-rework",
		type = "bool-setting",
		setting_type = "startup",
		default_value = false,
		order = "aaa",
	}
}
--[[

require("default_speeds")

data:extend{
	{
		name = "planning_utils-show-ui",
		type = "bool-setting",
		setting_type = "runtime-per-user",
		default_value = true,
		order = "aaa",
	},
	{
		name = "planning_utils-show-time",
		type = "bool-setting",
		setting_type = "runtime-per-user",
		default_value = true,
		order = "aab",
	},
	{
		name = "planning_utils-show-realtime",
		type = "bool-setting",
		setting_type = "runtime-per-user",
		default_value = false,
		order = "aac",
	},
	{
		name = "planning_utils-show-selection-position",
		type = "bool-setting",
		setting_type = "runtime-per-user",
		default_value = false,
		order = "aad",
	},
	{
		name = "planning_utils-used-speeds",
		type = "int-setting",
		setting_type = "runtime-per-user",
		default_value = #defaults,
		order = "ab",
		minimum_value = 1,
		maximum_value = num_speed_settings		
	},
	{
		name = "planning_utils-default-speed-level",
		type = "int-setting",
		setting_type = "runtime-per-user",
		default_value = default_speed_level,
		order = "ab",
		minimum_value = 1,
		maximum_value = num_speed_settings		
	},
	{
		name = "planning_utils-halt-speed-level",
		type = "int-setting",
		setting_type = "runtime-per-user",
		default_value = halt_speed_level,
		order = "ab",
		minimum_value = 1,
		maximum_value = num_speed_settings		
	},
}


local setting_prototypes = {}
for i = 1, num_speed_settings do
	local index = math.min(i, #defaults)
	local setting = {
		type = "double-setting",
		name = "planning_utils-speed-" .. i,
		setting_type = "runtime-per-user",
		default_value = defaults[index],
		order = "bb" .. index,
		minimum_value = 0.6,
		maximum_value = 60*20,
	}
	
	table.insert(setting_prototypes, setting)
end

data:extend(setting_prototypes)

--]]