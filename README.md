Balance Experimental
===================

This is a collection of changes to the balance of the game. It is a mix of fixing small bits in the game that don't feel right and testing ideas where I'm unsure if they work. A lot of this is experimental, meaning it has the potential to add to the game but the mod is one way to find out wether they actually do. 



Tech Merges / Cleanup
----------------------

The tech tree in factorio is a mix of a talent tree and a progression system. There are a number of technologies that function as pure numbers upgrades to existing techs, so for example gun turrets stay valuable in the late game without being OP in the early game. Then there are techs that add new content to different phases of the game to give an actual sense of progression.

Ideally the tech tree should allow the player to make interesting choices. Even knowing that eventually everything is going to be researched, making priorities on which tech is necessary right now should be interesting. That is not what happens in reality, instead often players will just research the interesting techs on the tier first, then keep researching randomly until they run out of things to research. Usually the researched technologies are way ahead of what the player has used. This is more explicit at the red/green science stage. The late game is in a better place here, because it offers a number of expensive and interesting packages like nuclear, artillery, logistic system, rocket silo, power armor and so on.

This mod merges and reshuffles technologies in order to make the tech tree less complicated and make the actual decisions more apparent to players who don't know the more than 200 technologies by heart.

Many technologies that are thematically related are merged together. Here are some examples. The engines research also unlocks cars. The rail related researches were merged together. Electronics has been merged into automation 2. The explosives technology now also contains cliff explosives and landmines. The modules researches before mk3 were merged into a modules mk1 and modules mk2 research. Some equipments were merged into the modular armor research. 

With most of these, it is logical to research them in a package and their relation should become more apparent when they are merged into one research. The tradeoff here is that the return of investment occurs later since the packages are bigger. However the general sentiment in the community is that the technologies are ahead of the factory anyways so this appears to be a small concern. In an expensive recipes setting or modded settings this would be different, but this mod is intended to balance the core game. The tech tree has some ways that allow players to compensate for scarcity of some resource by substituting another - for example if coal is low but iron and copper are available, solar can be used to supplement power even before oil is available. At the red/green stage one can decide to prioritize trains, laser turrets, robots or blue science, depending on resource availability and enemy population on the map. I attempted to keep those more interesting decisions intact, making them more visible with filler technologies out of the way.

Many upgrades that have both a damage and speed version have been merged to an upgrade only, for example bullet damage 1 and bullet shooting speed 1 are merged to bullet upgrade 1. There is a trick here to take bullet damage instead of shooting speed because the former is "more bullet per bullet" but that decision is the same every game, it is a fairly low hanging fruit and it leads to way too many technologies. Additionally many of the numbers upgrades have been merged together, especially if the bonuses that they provide are very small individually and they require the same science pack types. For example, the stack inserter researches 4-6 have been merged. The mining productivity researches on the same science pack tier have been merged. Many damage upgrades that require the same types of science packs have been merged. 

For now the general idea of having different upgrades for each weapon is still intact but I question the need for more than 50 weapon damage or speed upgrade technologies and I feel more merges could have been done. However I'd have to get into the balancing of combat in this game to make informed decisions in that area, which is not the purpose of this mod.

In total, the number of technologies has been brought down from around 230 to around 150.


Technology Cost Alternatives
----------------------------
The mod introduces the idea that some technologies can be researched through two different science pack costs. For example a bullet damage upgrade is available for 200 red/green/military science packs or 800 red/green science packs. Most of the time one science pack requirement is removed and the cost in raw ores is doubled. This is available mostly on numbers upgrade technologies like damage or shooting speed upgrades. Players can decide wether an additional damage upgrade is needed before the next science pack is automated, at the cost of more raw resources and a slower research time. This can push off the moment where everything on a specific tier is researched. Even if players decide to forego this option, stopping research until more packs are automated is now a conscious decision. All in all it should allow a softer transition into higher tier science packs.

This mechanic is implemented by adding a second technology with the same name and prerequisites and different costs. When either of the two technologies is unlocked, the other is automatically unlocked as well. However the technologies do not share progress so players have to commit to the method they use to research the technology.


Stack Sizes
------------

I'm adjusting some of the stack sizes of items to be more in line with the amount of items you actually need. This does not affect intermediate products, only end products. Balancing end products by reducing stack sizes appears not to work. It will make the items slightly more slow to use but it is not a discouragement. The stack sizes for beacons and roboports have been doubled. Some items needed a slightly higher stack size to be sensibly used. Stack sizes have been increased for chemical plants, turbines, steam engines, locomotives and wagons, cliff explosives and others. The stack sizes of walls and lamps have been doubled to encourage using them a bit more. In some cases stack sizes have been decreased to make the items more convenient to use. Stack sizes have been decreased for most of the equipments, space science packs, radars, storage tanks, nuclear reactors, centrifuges, boilers and heat exchangers. 

