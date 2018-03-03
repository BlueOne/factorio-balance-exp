Balance Experimental
===================

This is a collection of changes to the balance of the game. This is a mix of fixing small bits in the game that don't feel right and testing ideas where I'm unsure if they work. A lot of this is experimental and while the changes have the potential to add to the game, the mod is one way to find out wether they actually do. Half of these are probably doing more harm than good. Feel free to leave feedback.

It should be noted in advance that this aims to make the normal game more interesting, but I'm not looking at marathon or death world.



Tech Merges / Cleanup
----------------------

The tech tree in factorio is a mix of a talent tree and a progression system. There are a number of techs that function as pure upgrades to existing techs, so stuff like gun turrets stay valuable in the late game without being OP in the early game. Then there are techs that add new content to different phases of the game to give an actual sense of progression.

Ideally the tech tree should allow the player to make interesting choices. Even knowing that eventually everything is going to be researched, prioritizing which tech is necessary next should be interesting. That is not what happens in reality, instead what happens often is that players will just research the interesting techs on the tier first, then keep researching randomly until they run out of things to research. This is an issue especially with red/green science but stays an issue throughout military and blue science. The late game is in a better place here, simply because it offers a number of expensive and interesting technologies like nuclear, artillery, logistic system, rocket silo, power armor and so on.

A related issue is that the number of "filler" techs is quite large, i.e. techs that are just taken because there is nothing better to research or because they are prerequisites to more interesting things. To name some examples, "flight" and "robotics" don't really do anything, the modules researches before mk3 are very cheap so there's no need to have three separate techs for this, there are a more weapon upgrade techs than I feel are necessary and so on. 

The mod introduces the idea that some techs can be researched through two different science pack costs; for example a military science military upgrade might be available for research via only red and green science as well, except the cost is twice as much as using military science. This allows a softer transition into higher tier science packs.


Additionally the mod merges a number of filler techs together, adding their costs up, to promote more meaningful choices. 

As a minor change many prerequisites for technologies are cleaned up. The technologies that unlock recipes should now have mostly correct prerequisites set. This includes some minor balance changes, for example combat robots are made available a bit earlier.


Power
------

To enable the power modifications, install bob's greenhouses mod (you'll also need bob's functions library). Nuclear and steam appear to be in a great spot balancing-wise. I take a critical view of solar panels and accumulators. Solar panels give free power and are very easy to set up. They cost a lot of resources and space which offsets this somewhat, but still they're kind of boring. The necessity to store power at night could be interesting but then that is just made trivial immediately with accumulators. 

The mod pushes accus back into late game via gating them with research. Solar panels stay where they are for now and we're introducing an electric boiler to allow storing power in the form of steam. This makes setting up power a bit more involved than just stamping down a blueprint but allows solar panels to stay in the game. 

As an additional power option we might introduce greenhouses. Those also don't require coal but take more space and still drive evolution up. They would be in a similar place as solar/accumulators since they would generate power out of nothing (water).



Logistics
----------

To enable the following changes, you'll need to install the mod vacuum belts (let it explicitly be stated here that I am not the author of that mod). Vacuum belts are super-fast belts with which inserters cannot interact directly. I feel that four belt tiers are a bit too mch, so I am taking the opportunity to remove a belt tier. I rebalance the game so there only exist three tiers of belts: yellow now does 20 items per second, blue does 40 and vacuum does 120. Having only two normal belt tiers instead of three is useful because it reduces the tedium of running around and upgrading belts. Blue and vacuum tiers have increased stack sizes. Yellow belt cost is increased slightly to compensate the higher throughput. Blue belt cost is decreased compared to vanilla. 



Stack Sizes
------------

I'm adjusting some of the stack sizes of items to be more in line with the amount of items you actually need. This does not affect intermediate products, only buildable items. The idea is mostly that managing player inventory is not all that interesting and balancing items through stack sizes appears to be a bad idea. For items that are less essential I increase the stack size to make using them more managable, for example the stack sizes of walls and lamps have been doubled. I am decreasing the stack sizes of most of the equipments, space science packs, radars, storage tanks, nuclear reactors, centrifuges, boilers and heat exchangers. I increase the stack sizes of higher tier belts, roboports, chemical plants, turbines, steam engines, locomotives and wagons, cliff explosives, and others.



Military
---------

The game is still lacking in incentives for the player to make explosives, so I'm adding an alternative recipe for military science that is cheaper on the iron/copper side but needs explosives. This should nudge players towards creating explosive-based combat items. For equipment, in vanilla the portable fusion reactor compared to solar panels gives five times more electricity for 0.4 times the resources (if we don't consider oil costs). Players might thus feel compelled to skip solar panels. I'm reducing the price from five solar panels to one solar panel to offset this and make them more easily available. I'm also making some of the other equipment available earlier, otherwise the player unlocks the armor and forgets about it because the equipment is not available. The personal laser defense is weakened and made available earlier.

Some other technologies are made available a bit earlier, this includes combat robots, land mines, explosives and grenade damage.



Todos
------

Polishing:
* Icons

Bugs:
* Test how adding mod to existing save works.
* Removing recipes from techs still doesnt work - see oil processing

The portable solar panel might still require a bit of an increase. The discharge defense might need a second tier. Combat robots and poison/slowdown capsules will still need to be watched. The tank shells have two tiers that are basically the same, which is awkward. 


Techs: Reshuffle oil recipes
Look at military 3



Features:

Equipments need a couple touches. Portable solar feels weak, even though they do about 1/4 of the fusion reactor. Increase just bit? -- Made easier to build. 

Modular armor grids might be in need of size changes. On the other hand, the odd numbers hint strongly towards using portable solar panels.

Combat robots feel useless.

Make walls 2x2?

