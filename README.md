Balance Experimental
===================

This is a collection of changes to the balance of the game. It should be noted in advance that this aims to make the normal game more interesting, we do not care about things like marathon or death world here. If marathon still works then that's great but otherwise so be it.


Tech Merges / Cleanup
----------------------

The tech tree in factorio is a mix of a talent tree and a progression system. There are a number of techs that function as pure upgrades to existing techs, so they become valuable in the late game without being OP in the early game. Then there are techs that add new content to different phases of the game.

Ideally the tech tree should allow the player to make interesting choices. Even knowing that eventually everything is going to be researched, prioritizing should be interesting but that is not what happens in reality. Instead what happens often is that players will just research the interesting techs on the tier first, then keep researching until they run out of things to research. This is an issue especially with red/green science and stays an issue throughout military and blue science. The late game is in a better place here, simply because it offers a number of expensive and interesting technologies.

A related issue is that the number of "filler" techs that are just taken because there is nothing better to research is quite large. To name some examples, "flight" and "robotics" don't really do anything, the modules researches before mk3 are very cheap, there are a more weapon upgrade techs than I feel are necessary and so on. The mod merges a number of filler techs together, adding their costs up, to promote more meaningful choices. 

We also introduce the concept of techs which can be researched through two different science pack costs; for example a military science military upgrade might be available for research via only red and green science as well, except the cost is vastly bigger than using military science. This allows a softer transition into higher tier science packs.

Additionally, many prerequisites for technologies are cleaned up or balanced. The technologies that unlock recipes should now have mostly correct prerequisites set.


Power
------

Nuclear and steam appear to be in a great spot balancing-wise. Take a look at solar panels and accumulators. Solar panels give free power and are super easy to set up. They cost a lot of resources and space which offsets this somewhat, but still, setting them up is really easy. The game has this nice system where you need to store power for the night but then trivializes this immediately by giving you accumulators. We're pushing accus back into late game via gating them with hard research. Solar panels stay in the game and we're introducing an electric boiler to allow storing power in the form of steam. This makes setting up power a bit more involved than just stamping down a blueprint but allows solar panels to stay in the game. 

As an additional power option we might introduce greenhouses. Those also don't require coal but take more space and still drive evolution up. They would be in a similar place as solar/accumulators since they would generate power out of nothing (water).


Logistics
----------

I add vacuum belts as a dependency to try them out: these are super-fast belts with which inserters cannot interact directly. They are bundled in a separate mod which I am not the author of. I rebalance the game so there only exist three tiers of belts: yellow now does 20 items per second, blue does 40 and vacuum does 120. Blue and vacuum tiers have increased stack sizes. Yellow belt cost is increased, blue belt cost is decreased compared to vanilla. 


Stack Sizes
------------

I'm moving some of the stack sizes of items a bit towards how many of them you actually need. This so far doesnt affect the intermediate products, so it will mostly just have an effect on the player's inventory but not on train sizes. This is one of the changes where I'm removing some of the quirkyness / character of the game (for example steam engines stack size 10 but boilers allow 50), but we'll see wether it feels better.


Military
---------

I'm making some changes to availability of military items. The game is still lacking an incentive for the player to make explosives, so I'm adding an alternative recipe for military science that is cheaper on the iron/copper side but needs explosives. This should nudge players towards creating explosive-based combat items. For equipment, in vanilla the portable fusion reactor compared to solar panels gives five times more electricity for 0.4 times the resources (if we don't consider oil costs). I feel players might thus feel compelled to skip solar panels. I'm reducing the price from five solar panels to one solar panel to offset this and make them more easily available. I'm also making some of the other equipment available earlier, otherwise the player unlocks the armor and forgets about it because the equipment is not available.

Some other technologies are made available a bit earlier, this includes combat robots, land mines, explosives and grenade damage.

The portable solar panel might still require a bit of an increase and I'm suspecting the personal laser defense should be weakened and made available a bit earlier to distinguish it from the discharge defense. Combat robots and poison/slowdown capsules will still need to be watched. The tank shells have two tiers that are basically the same, which is just awkward. Will need more data on this.


Todos
------

Polishing:
* Icons

Bugs:
* Test how adding mod to existing save works.
* Removing recipes still doesnt work - see oil processing


Techs: Reshuffle oil recipes
Look at military 3



Features:

Greenhouses

Equipments need a couple touches. Portable solar feels weak, even though they do about 1/4 of the fusion reactor. Increase just bit? -- Made easier to build. 

Modular armor grids might be in need of size changes. On the other hand, the odd numbers hint strongly towards using portable solar panels.

Combat robots feel useless.

Make walls 2x2?

