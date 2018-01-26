
local Event = require("stdlib/event/event")
local TableUtils = require("utils/table")


-- Tech Alternatives

local alt_researches = require("data/tech_alts")

Event.register(defines.events.on_research_finished, function(event)
	local research = event.research
	local name = research.name
	local found = false
	for _, alts in pairs(alt_researches) do
		if TableUtils.find(name, alts) then
			for _, other_name in pairs(alts) do
				if name ~= other_name then
					local tech = research.force.technologies[other_name]
					if tech and tech.valid then
						tech.researched = true
					end
				end
			end
		end
	end
end)