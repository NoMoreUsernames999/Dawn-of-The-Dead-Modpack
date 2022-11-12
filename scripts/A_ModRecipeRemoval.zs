import crafttweaker.item.IItemStack;

print("ModRecipeRemoval starting!"); //Mark beggining of script. 


//========================================Cooking For Blockheads:========================================


print("Cooking for blockheads removals starting!"); //======Mark start of phase.

recipes.remove(<cookingforblockheads:ice_unit>);
recipes.remove(<cookingforblockheads:heating_unit>);
recipes.remove(<cookingforblockheads:fruit_basket>);
recipes.remove(<cookingforblockheads:corner>);
recipes.remove(<cookingforblockheads:cabinet>);
recipes.remove(<cookingforblockheads:counter>);
recipes.remove(<cookingforblockheads:spice_rack>);
recipes.remove(<cookingforblockheads:counter>);
recipes.remove(<cookingforblockheads:toaster>);
recipes.remove(<cookingforblockheads:cooking_table>);
recipes.remove(<cookingforblockheads:oven>);
recipes.remove(<cookingforblockheads:fridge>);
recipes.remove(<cookingforblockheads:sink>);
recipes.remove(<cookingforblockheads:tool_rack>);

print("Cooking for blockheads removals complete"); //======Mark end of phase. 


//========================================Grappling Hook:========================================


print("Grappling hook removals starting!"); //======Mark start of phase.

recipes.remove(<grapplemod:grapplinghook>);

val removedGrapple = ["upgrade", "smarthook", "repellerhook", "enderhook", "magnethook", "motorhook", "doublemotorhook", "rocketdoublemotorhook", "launcheritem", "block"] as string[];
for i in loadedMods["grapplemod"].items {
for possible in removedGrapple { 
    if i.name.indexOf(possible) > -1 {
      mods.jei.JEI.removeAndHide(i);  
   	 	}
	}
}

print("Grappling hook removals complete"); //======Mark end of phase. 


//========================================Macaw's Decorations:========================================


print("Macaw's doors removals starting!"); //======Mark start of phase.

recipes.removeByMod("mcwdoors");
recipes.removeByMod("mcwfences");
recipes.removeByMod("mcwtrpdoors");
recipes.removeByMod("mcwwindows");

print("Macaw's windows removals complete"); //======Mark end of phase. 


//========================================Modern Warfare:========================================


print("Modern warfare removals starting!"); //======Mark start of phase.

val removedMW = ["m", "a", "s", "p", "l"] as string[];
for i in loadedMods["mw"].items {
for possible in removedMW { 
    if i.name.indexOf(possible) > -1 {
      mods.jei.JEI.removeAndHide(i);  
   	 	}
	}
}

print("Modern warfare removals complete"); //======Mark end of phase.


//========================================Fishing Made Better:========================================

print("Fishing made better removals starting!"); //======Mark start of phase.

recipes.remove(<fishingmadebetter:baitbox>);
recipes.removeShaped(<fishingmadebetter:fishing_rod_iron>, [[null,null,<ore:ingotiron>],[null,<ore:ore:ingotiron>,<fishingmadebetter:bobber_basic>],[<ore:ore:ingotiron>,<fishingmadebetter:reel_basic>,<fishingmadebetter:hook_basic>]]);
recipes.removeShaped(<fishingmadebetter:fishing_rod_diamond>, [[null,null,<minecraft:diamond>],[null,<minecraft:diamond>,<fishingmadebetter:bobber_basic>],[<minecraft:diamond>,<fishingmadebetter:reel_basic>,<fishingmadebetter:hook_basic>]]);
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

print("Fishing made better removals complete"); //======Mark end of phase.


//========================================Wastelandgrocers:========================================


print("wastelandgrocers removals starting!"); //======Mark start of phase.

recipes.remove(<wastelandgrocers:needle>);
recipes.remove(<wastelandgrocers:can_opener>);
recipes.remove(<wastelandgrocers:med_bandaid>);
recipes.remove(<wastelandgrocers:med_bandage_wrap>);
recipes.remove(<wastelandgrocers:med_first_aid>);
recipes.remove(<wastelandgrocers:med_trauma_kit>);


print("wastelandgrocers removals complete"); //======Mark end of phase.


//========================================Project Vibrant Journeys:========================================


print("PVJ removals starting!"); //======Mark start of phase.

recipes.remove(<pvj:sugarcane_juice>);
recipes.remove(<pvj:cactus_salad>);
recipes.remove(<pvj:cracked_coconut>);
recipes.remove(<pvj:cobblestone_brick>);
recipes.remove(<pvj:basalt_brick>);
recipes.remove(<pvj:marble_brick>);

val removedPVJ = ["slab", "stairs", "wall", "boat", "trapdoor", "door", "fence", "planks"] as string[];
for i in loadedMods["pvj"].items {
for possible in removedPVJ { 
    if i.name.indexOf(possible) > -1 {
      recipes.remove(i);  
   	 	}
	}
}

print("PVJ removals complete"); //======Mark end of phase.


//========================================Better Animals Plus:========================================


print("BetterAnimals+ removals starting!"); //======Mark start of phase.

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

print("BetterAnimals+ removals complete"); //======Mark end of phase.


//========================================Aquaculture:========================================


print("Aquaculture removals starting!"); //======Mark start of phase.

recipes.remove(<aquaculture:food:6>);

val removedF = ["neptunium", "pick"] as string[];
for i in loadedMods["aquaculture"].items {
for possible in removedF { 
    if i.name.indexOf(possible) > -1 {
      mods.jei.JEI.removeAndHide(i); 
   	 	}
	}
}

print("Aquaculture removals complete"); //======Mark end of phase.


//========================================Camera Obscura:========================================


print("CameraObscura removals starting!"); //======Mark start of phase.

recipes.remove(<cameraobscura:csitem:1>);
recipes.remove(<cameraobscura:filter:*>);
mods.jei.JEI.removeAndHide(<cameraobscura:csitem:6>);
mods.jei.JEI.removeAndHide(<cameraobscura:csitem:7>);
mods.jei.JEI.removeAndHide(<cameraobscura:csitem:3>);
mods.jei.JEI.removeAndHide(<cameraobscura:sdcard>);
mods.jei.JEI.removeAndHide(<cameraobscura:polaroid_stack>);
mods.jei.JEI.removeAndHide(<cameraobscura:vintage_photo>);

print("CameraObscura removals complete"); //======Mark end of phase.

//========================================Immersiv Vehicles:========================================


print("Immersiv Vehicles removals starting!"); //======Mark start of phase.


recipes.removeByMod("MTS_Official_Pack_V23");
recipes.removeByMod("Immersive Vehicles");
recipes.removeByMod("Helicopter_Pack");


print("Immersiv Vehicles removals complete"); //======Mark end of phase.

//========================================Misc Mods:======================================== (For mods that don't have enough items to justify their own section).


print("Misc removals starting!"); //======Mark start of phase.

recipes.remove(<burlapsack:burlap_sack>);
recipes.remove(<energymeters:meter>);
recipes.removeByMod("firstaid");
recipes.removeByMod("spartanshields");
recipes.removeByMod("locks");
recipes.removeByMod("astikorcarts");
recipes.remove(<simplycats:treat_bag>);
recipes.remove(<simplycats:laser_pointer>);
recipes.remove(<simplycats:window_perch_dark_oak>);
recipes.remove(<simplycats:window_perch_acacia>);
recipes.remove(<simplycats:window_perch_jungle>);
recipes.remove(<simplycats:window_perch_birch>);
recipes.remove(<simplycats:window_perch_oak>);
recipes.remove(<simplycats:window_perch_spruce>);
recipes.removeByMod("xplosives");
recipes.remove(<dynamicstealth:handmirror>);
recipes.removeByMod("sophisticatedwolves"); 
recipes.removeByMod("reevess_furniture_mod");
recipes.removeByMod("industrialrenewal");
recipes.removeByMod("bdsandm");
recipes.removeByMod("mutantbeasts");
recipes.removeByMod("qualitytools");
recipes.removeByMod("of");
recipes.removeByMod("gaspunk");
recipes.removeByMod("air_support");
recipes.removeByMod("mod_lavacow");
recipes.removeByMod("floodlights");

print("Misc removals complete!"); //======Mark end of phase.

print("ModRecipeRemoval finished!"); //======Mark end of this script. 
