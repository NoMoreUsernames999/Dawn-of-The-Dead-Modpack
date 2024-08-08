# This file covers some guidelines and limitations of the structure mods which must be followed for building.

## Recurrent Complex

If you are experienced with recurrent complex, you can skip 1-3. 

1) Recurrent complex does not support redstone states (powered redstone will spawn as unpowered until toggled again). 
   I am 70% sure that CofH world's nbt structure spawning does, however they are limited to 48x48x48 blocks (haven't tested the redstone with cofh yet, will update when I do). 
   If your structure relies on active redstone, either make it no larger than the aforementioned size, or make a player trigger to reset the network and "fix" it when they enter (not recommended. Will not always work). 
   *Redstone can still be used*. You just can't have *active* redstone.

2) Recurrent complex is technically limited to 48 cubic blocks as well, since larger structures take longer to generate. 
   If you plan on making a build that is bigger than 48 blocks on either of the 3 axis, you **must** have approval first as there will be a limited number of structures this size. 

3) Recurrent complex supports most regular modded blocks, and has rotation support for some of them. Any blocks that do not support ReC, or do but don't have rotation support, are listed below. 
   If you don't know how to use recurrent complex, then you can just learn how to export a structure and then submit the file and I'll handle the rest. 
   At minimum you should know how to export and import: [Wiki](https://github.com/NoMoreUsernames999/Recurrent-Complex-Wiki/wiki/Building-A-Structure)
   Note that when selecting a structure, the second selection must be at the opposite diagonal corner so it forms a box. 
   
4) The name of your structure should follow this naming convention to make it easier to sort. There will eventually be hundreds if not thousands of structure files and this will save everyone a massive headache. 
   Naming scheme is: "DimensionsName" (or gamemode, if for DoTD), "GenerationCategory" (e.g static, decoration, dungeon, dynamic, maze, etc) "StructureName". If the structure is part of a maze or dynamic structure, the category must state so and the name must end with the component type. E.g the structure that triggers a maze is always called the "parent," while its rooms end in "room" with a descriptive suffix (e.g CornerMossy, Stairs2, LootLVL2, etc).  
   The naming should be one connected word with no spaces, and while it can contain upper case and numbers, CANNOT contain any sort of special characters. So an example of a structure name would be MarsTerrainRockFormationSmall, NetherDynamicFortressParent, OverworldMazeHelmsdeepRoomTrapPit, OverworldUndergroundBunker2, etc. you can always ask if you're unsure. 
   If the modpack is DoTD, the generation category is actually a **6 digit** serial number preceded by a type, which match to an entry in the Map Almanac document. This document keeps an entry for each structure's name, description, and coordinate to keep track of them. Unless you're making a structure which hasn't had its location set yet, the structure's serial should be copied from the Map Almanac doc (which is generated using [this](https://github.com/NoMoreUsernames999/Recurrent-Complex-Wiki/wiki/Building-A-Structure) website, if you need to enter one in the doc. Select range 1-999999. If the generated number is less than 6 digits, prefix 0's to it until it does. You must use CTRL+F for in document search to make sure the number doesn't already exist after doing so. Extremely rare, but possible). An example would be CampaignStatic649836, CampaignStatic235865, MultiplayerStatic004573, etc. For very unique locations, a name instead of a serial can be used, such as CampaignNPCHelixBase, MetroMazeShiwaganeExit, CampaignMazeShiwaganeEntrance, MetroMazeTrainSouth4, etc.     

5) The most important of all, **structures must have logical and functional designs.** 
   What I mean is, the design of a structure should make sense. If someone were to decide to fix it and use it, it should have the possibility for 100% functionality. 
   So when,for example, making a room inside a structure, what purpose does that room serve? If building a bunker or something, what does a bunker usually have? Etc. 
   You don't have to be fully realistic and try to include everything in a structure, but avoid making seemingly empty rooms that wouldn't have served a purpose.
   An example would be building a ruined ship structure that is found in space. A ship should have a control room, an engine room, bunks, etc. Is it a civilian transport? It should have a cargo hold. Gunship? Though not included, it should have space to place actual weapons. 
   Engine rooms should be big enough to fit actual industrial generators or reactors. Ships using avp blast doors or other stuff that normally requires power should have wiring included.
   Or if making a ruined research lab, it should include a reception area with a front desk, a stairwell, labs, office rooms, etc. (For DoTD) If including zombies in structures, the type and count should match the structure. It wouldn't make sense to find a horde of 15 zombies in a family's house.
   You get the idea. This ensures all structures are interesting to explore, are believable, and should a player decide to fix one up and use it, that it would be fully usable once repaired. 

Side note: Because of dynamic block ID, you should not use world edit to export and import structures between worlds unless it contains 100% vanilla blocks (export/import in the same world works fine). 
Especially with Chisel, they will turn into random broken bs. Use recurrent complex to export/ import between worlds. Also obviously don't use valuable blocks, such as metals or expensive machinery, in a structure. 
For the latter, you can use blocks to build something that *looks* like the machine or whatever, but don't include the actual thing in the structure and give players large amounts of free resources. To include actual machine parts in structures, like in DoTD factories, you must have prior approval as there are a limited number of these structures. 



### List of blocks that do not support rotation. 
If your structure contains any of the following, you MUST have rotation and mirroring disabled for that structure. 
Keep in mind this means it will always generate with the same orientation. Before submitting any structure, you MUST test it by importing it at 90 degree rotation to see if anything breaks. 
If in a test world, make backups. This will typically corrupt the world if a block isn't supported. I recommend testing import rotation in new worlds. This list will be updated as I find blocks that cause issues: 
   
  - AVP blast doors. 
  - AVP machine blocks.
  - HBM multiblock doors. 
  - All RS gauges and switches.
  - All Industrial Renewal stairs and railings, diagonal support beams, warning light, and hazard sign.
  - Floodlight mod's wall lamps.
  - Useful Interior's park bench. 
  - Immersive Engineering wire connectors. 


### List of blocks that do not support Recurrent complex. These CANNOT BE USED in ANY structures: 
   
  - HBM doors as follows: 
  - Water door.
  - QE containment door. 
  - Round airlock.
  - Sliding seal door. 
  - Sliding blast door. 
  - Vault tech blast door (Sort of. The only block you can click to open it is the bottom middle. As long as it is accessible it can be used).
  - Immersive Engineering wires (just the wires. Connection points work fine, but bug out and break if exported with wiring).
  - Immersive Engineering switches and transformers.

## Lost Cities

Conventions of LC buildings:

1) Every building must have the outermost 2 layers of the 16x16 space empty, and must contain sidewalk blocks. The building walls must never exceed the inner 14x14 area (siding decorations like AC units, window sills, HVAC piping, etc are fine so long as they are at least 2 blocks above ground level and maintain a 1 block distance from the edge of the 16x16 area. This is to ensure there is always 1 block of space between any part of buildings that are next to each other). If you need a larger building, make a multi-building. The config option for generating doorways is disabled, so buildings don't need to extend to the edges of the chunk. This also means you need to always add your own doorways as doorway slices will never generate.