Balance Playground
===================

This is a collection of changes to the balance of the game. It should be noted in advance that this aims to make the normal game more interesting, we do not care about things like marathon or death world here. If marathon still works then that's great but otherwise so be it.


Tech Merges / Cleanup
----------------------

The tech tree in factorio is a mix of a talent tree and a progression system. There are a number of techs that function as pure upgrades to existing techs, so they become valuable in the late game without being OP in the early game. Then there are techs that add new content to different phases of the game.

Ideally the tech tree should allow the player to make interesting choices but instead what happens often is that the player will just research the interesting techs on the tier first, then keep researching until they run out of things to research. This is an issue especially with red/green science and stays an issue throughout military and blue science. The late game is in a better place here, simply because it offers a number of expensive and interesting technologies.

A related issue is that the number of "filler" techs that are just taken because there is nothing better to research is quite large. To name some examples, "flight" and "robotics" don't really do anything, the modules researches before mk3 are very cheap, there are a more weapon upgrade techs than I feel are necessary and so on. 

The mod merges a number of filler techs together, adding their costs up, to promote more meaningful choices. We also introduce the concept of techs which can be researched through two different science pack costs; for example a blue science military upgrade might be available for research via only red and green science as well, except the cost is vastly bigger than using blue science. This allows a softer transition into higher tier science packs.



An issue I had with some techs is that the game at some point in the mid/late game offers me a number of tech choices which all have weak and long-term effects. This leaves me without a clear priority so I just take any of them without making a clear choice. This may be different in marathon mode, but the mod is mostly intended to be used in normal mode. To counteract this, the mod merges some techs together and adds their costs up. This is usually a minor nerf because it takes more time and resources until the tech is unlocked, but usually it does not have a considerable effect. I generally try to keep the costs close to base game unless there is a good reason to change them.

The weapon upgrades make the issue very evident: there are nine damage upgrade techs and six speed upgrade techs, each with different tiers. The decision which weapon to take is interesting, but the decision between taking damage and speed is obvious. I'm merging each tier's damage and speed upgrades together. This should nudge the player into weighing the weapon types against each other and decrease the number of techs. There is the additional issue wether a 10% damage bonus is even visible so the question remains wether the some tiers should be merged together. I'm keeping them the way they are for now to see how the merged speed and damage bonus play out.

The higher tiers of inserter capacity feel underwhelming when taken individually. The level 4 to 6 upgrades increase the stack size from 5 to 6 to 8 to 10 for a 250, 300, 400 packs of red, green, blue and purple color. There is no tangible difference between a stack size of 6 and 8, so I feel there should not be so many tiers. Plus these aren't even researched for the stack size bonus, think of when you last thought that your stack inserters needed a bigger stack size. Instead they are mostly researched for the bonus to normal inserters. I'm merging some tiers together here.

The red/green part of the game to me feels a bit overloaded with technologies because essentially each item gets an individual tech. This has a number of benefitial effects, for one it rewards the player for the time spent automating red and green science. It also allows several different routes through the game, for example the player can choose to prioritize robots, blue science, military science, solar power, trains. At the same time I feel it could use some reductions. The technologies flight and robotics aren't actually doing anything to the game except adding cost and a psychological build-up to bots. I question wether that build-up still works with the tech tree as overpopulated as it is. I remove the techs and push their costs into the bot technologies. This is a change I am unsure about, we'll hopefully see how it plays out. I'm also merging batteries into sulfur processing, because you'll usually research one after the other. Modules 1 are merged into the modules research. 


Power
------

Nuclear and steam appear to be in a great spot balancing-wise. Take a look at solar panels and accumulators. Solar panels give free power and are super easy to set up. They cost a lot of resources and space which offsets this somewhat, but still, setting them up is really easy. The game has this nice system where you need to store power for the night but then trivializes this immediately by giving you accumulators. We're pushing accus back into late game via gating them with hard research. Solar panels stay in the game and we're introducing an electric boiler to allow storing power in the form of steam. This makes setting up power a bit more involved than just stamping down a blueprint but allows solar panels to stay in the game. 

As an additional power option we might introduce greenhouses. Those also don't require coal but take more space and still drive evolution up. They would be in a similar place as solar/accumulators since they would generate power out of nothing (water).


Logistics
----------

I add vacuum belts as a dependency to try them out. The game is then rebalanced so there only exist three tiers of belts, yellow now does 20 items per second, red does 40 and vacuum does 120. Costs are adjusted. The tier two underground belts are in a separate research now.

Todos
------

Polishing:
* Locale
* Icons

Bugs:
* Merging techs does not add modifiers and I don't know why.


Techs: Reshuffle oil recipes
Look at military 3



Features:

Greenhouses

Equipments need a couple touches. Portable solar feels weak, even though they do about 1/4 of the fusion reactor. Increase just bit? Modular armor grids need some layout changes. Increase mod armor mk2 size and cost?

Combat robots feel useless.

Make walls 2x2?



Changes to vanilla
===================

Tech Merges:

* Merge Inserter Capacity Bonus 1 and 2
* Merge Inserter Capacity Bonus 4, 5 and 6
* Merge speed upgrades of each level below 6 for bullet damage, cannon shells, laser turrets, rockets and shotgun shells into the corresponding damage upgrades. For example bullet-damage 1 and bullet-speed 1 were merged.
* Merge sulfur processing into battery
* Merge speed, productivity and effectivity module research into modules research
* Merge speed, productivity and effectivity module 2 into a new research called modules-2.
* Merge flight into electric engine research. Move costs of flight to logistic robots. Merge robotics into battery, move costs of robotics to logistic bots. Make combat robotics prerequisite just military-2. 
* Merge flammables into oil processing.