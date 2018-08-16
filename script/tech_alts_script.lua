
local Event = require("stdlib/event/event")
local TableUtils = require("utils/table")


-- Tech Alternatives

local alt_researches = require("data/tech_alts")

if not alt_researches then return end

Event.register(defines.events.on_research_finished, function(event)
	local research = event.research
	local name = research.name
	for _, set in pairs(alt_researches) do
		if TableUtils.find(name, set) then
			for _, other_name in pairs(set) do
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

local function init_alternative_techs(force)
    for _, set in pairs(alt_researches) do
		for _, tech in pairs(set) do
			if not force.technologies[tech] then error("Alternative Tech Init Error! " .. tech) end
            if force.technologies[tech].researched then
                for _, t in pairs(set) do
                    force.technologies[t].researched = true
                end
                break
            end
        end
    end
end

Event.register(Event.core_events.init, function()
    for _, force in pairs(game.forces) do
        init_alternative_techs(force)
    end
end)
