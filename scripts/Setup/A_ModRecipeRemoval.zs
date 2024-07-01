#reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//?Mark beginning of script. 
print("ModRecipeRemoval starting!"); 


//#========================================Oceanic Expanse:========================================


mods.jei.JEI.removeAndHide(<oe:turtle_helmet>);
recipes.remove(<oe:underwater_torch>);

//* Remove all palm wood and coquina brick
val removeOceanic = ["palm", "coquina_brick"] as string[];
for i in loadedMods["oe"].items {
	for possible in removeOceanic { 
		if i.name.indexOf(possible) > -1 {
			recipes.remove(i);  
		}
	}
}


//#========================================Grappling Hook:========================================


recipes.remove(<grapplemod:grapplinghook>);

//*Remove recipes and hide all upgrades and special hooks. 
val removedGrapple = ["upgrade", "smarthook", "repellerhook", "enderhook", "magnethook", "motorhook", "doublemotorhook", "rocketdoublemotorhook", "launcheritem", "block"] as string[];
for i in loadedMods["grapplemod"].items {
	for possible in removedGrapple { 
		if i.name.indexOf(possible) > -1 {
			mods.jei.JEI.removeAndHide(i);  
		}
	}
}


//#========================================Modern Warfare:========================================

//!Not currently being used, but left here in case a switch back to MW is made.

/* Block commented out

//*Remove recipes and hide all Modern Warfare items from JEI.
val removedMW = ["m", "a", "s", "p", "l"] as string[];   
for i in loadedMods["mw"].items {
	for possible in removedMW { 
		if i.name.indexOf(possible) > -1 {
			mods.jei.JEI.removeAndHide(i);  
		}
	}
}

*/


//#========================================Fishing Made Better:========================================


recipes.removeShaped(<fishingmadebetter:fishing_rod_iron>, [
	[null,null,<ore:ingotIron>],
	[null,<ore:ingotIron>,<fishingmadebetter:bobber_basic>],
	[<ore:ingotIron>,<fishingmadebetter:reel_basic>,<fishingmadebetter:hook_basic>]
]);
recipes.removeShaped(<fishingmadebetter:fishing_rod_diamond>, [
	[null,null,<minecraft:diamond>],
	[null,<minecraft:diamond>,<fishingmadebetter:bobber_basic>],
	[<minecraft:diamond>,<fishingmadebetter:reel_basic>,<fishingmadebetter:hook_basic>]
]);
recipes.remove(<fishingmadebetter:baitbox>);
recipes.remove(<fishingmadebetter:fillet_knife_wood>);
recipes.remove(<fishingmadebetter:fillet_knife_iron>);
recipes.remove(<fishingmadebetter:fillet_knife_diamond>);
recipes.remove(<fishingmadebetter:scaling_knife_wood>);
recipes.remove(<fishingmadebetter:scaling_knife_iron>);
recipes.remove(<fishingmadebetter:scaling_knife_diamond>);
recipes.remove(<fishingmadebetter:fish_tracker_iron>);
recipes.remove(<fishingmadebetter:fish_tracker_gold>);
recipes.remove(<fishingmadebetter:fish_tracker_diamond>);
recipes.remove(<fishingmadebetter:fish_tracker_obsidian>);
recipes.remove(<fishingmadebetter:fish_tracker_void>);
recipes.remove(<fishingmadebetter:reel_basic>);
recipes.remove(<fishingmadebetter:reel_fast>);
recipes.remove(<fishingmadebetter:reel_long>);
recipes.remove(<fishingmadebetter:bobber_basic>);
recipes.remove(<fishingmadebetter:bobber_obsidian>);
recipes.remove(<fishingmadebetter:bobber_lightweight>);
recipes.remove(<fishingmadebetter:bobber_heavy>);
recipes.remove(<fishingmadebetter:bobber_void>);
recipes.remove(<fishingmadebetter:hook_basic>);
recipes.remove(<fishingmadebetter:hook_shiny>);
recipes.remove(<fishingmadebetter:hook_barbed>);
recipes.remove(<fishingmadebetter:hook_magnetic>);


//#========================================Better Animals Plus:========================================


//*Removal loop. Remove all capes for recipe change later, plus fantasy items.
val removedBAP = ["hirschgeistskullwearable", "cape", "handoffate"] as string[];    
for i in loadedMods["betteranimalsplus"].items {
	for possible in removedBAP { 
		if i.name.indexOf(possible) > -1 {
			recipes.remove(i); 
		}
	}
}

mods.jei.JEI.hide(<betteranimalsplus:hirschgeistskullwearable>);
mods.jei.JEI.hide(<betteranimalsplus:handoffate>);


//#========================================Aquaculture:========================================


recipes.remove(<aquaculture:food:6>);

//*Removal loop. Remove and hide all fantasy armor and weapon recipes from JEI.
val removedF = ["neptunium", "pick"] as string[];   
for i in loadedMods["aquaculture"].items {
	for possible in removedF { 
		if i.name.indexOf(possible) > -1 {
			mods.jei.JEI.removeAndHide(i); 
		}
	}
}


//#========================================Camera Obscura:========================================


recipes.remove(<cameraobscura:csitem:1>);
recipes.remove(<cameraobscura:filter:*>);
mods.jei.JEI.removeAndHide(<cameraobscura:csitem:6>);
mods.jei.JEI.removeAndHide(<cameraobscura:csitem:7>);
mods.jei.JEI.removeAndHide(<cameraobscura:csitem:3>);
mods.jei.JEI.removeAndHide(<cameraobscura:sdcard>);
mods.jei.JEI.removeAndHide(<cameraobscura:polaroid_stack>);
mods.jei.JEI.removeAndHide(<cameraobscura:vintage_photo>);


//?(For mods that don't have enough items to justify their own section)
//#========================================Misc Mods:======================================== 


recipes.removeByMod("burlapsack");
recipes.remove(<energymeters:meter>);
recipes.removeByMod("firstaid");
recipes.removeByMod("spartanshields");
recipes.removeByMod("locks");
recipes.removeByMod("astikorcarts");
recipes.removeByMod("xplosives");
recipes.removeByMod("sophisticatedwolves"); 
recipes.removeByMod("industrialrenewal");
recipes.removeByMod("bdsandm");
recipes.removeByMod("mutantbeasts");
recipes.removeByMod("qualitytools");
recipes.removeByMod("of");
recipes.removeByMod("gaspunk");
recipes.removeByMod("air_support");
recipes.removeByMod("floodlights");
recipes.removeByMod("advancedmortars");
recipes.removeByMod("arcademod");
recipes.removeByMod("better_diving");
recipes.removeShapeless(<ceramics:unfired_clay>, [<minecraft:quartz>,<minecraft:clay_ball>,<minecraft:clay_ball>]);
recipes.removeShapeless(<ceramics:unfired_clay>, [<minecraft:dye:15>,<minecraft:clay_ball>]);
recipes.removeByMod("customsignposts");
recipes.removeByMod("davincisvessels");
recipes.removeByMod("yurtmod");
recipes.removeByMod("survivalinc");
recipes.removeByMod("waystones");
recipes.removeByMod("paniclecraft");
recipes.removeByMod("exsartagine");
recipes.remove(<musictriggers:blank_record>);
recipes.removeByMod("simplycats");
recipes.removeByMod("mts");
recipes.remove(<clef:block_instrument_player>);
recipes.removeByMod("horse_tack");
recipes.removeShaped(<dynamicstealth:handmirror>, [
	[null,<minecraft:glass_pane>,null],
	[null,<minecraft:iron_ingot>,null],
	[null,null,null]
]);
recipes.removeByMod("antiqueatlas");
recipes.removeByMod("clipboard");
recipes.removeByMod("projectred-core");
recipes.removeByMod("projectred-transmission");
recipes.removeByMod("projectred-integration");
recipes.removeByMod("sakura");
recipes.removeByMod("comforts");
recipes.removeByMod("dawnoftimebuilder");
recipes.removeByMod("mocreatures");
recipes.removeByMod("engineersdecor");
recipes.removeByMod("rustic");


//?======Mark end of this script. 
print("ModRecipeRemoval finished!"); 
