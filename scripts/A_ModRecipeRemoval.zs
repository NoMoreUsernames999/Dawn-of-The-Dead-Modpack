import crafttweaker.item.IItemStack;

print("ModRecipeRemoval starting!"); //Mark beggining of script. 


//========================================Barrels Drums Storage & More:========================================


print("BDS&M removals starting!"); //======Mark start of phase.

recipes.remove(<bdsandm:upgrade>);
recipes.remove(<bdsandm:upgrade:1>);
recipes.remove(<bdsandm:upgrade:2>);
recipes.remove(<bdsandm:upgrade:3>);
recipes.remove(<bdsandm:crate_key>);
recipes.remove(<bdsandm:wood_crate>);
recipes.remove(<bdsandm:wood_barrel>);
recipes.remove(<bdsandm:metal_crate>);
recipes.remove(<bdsandm:metal_barrel>);
recipes.remove(<bdsandm:shipping_container>);

print("BDS&M removals complete"); //======Mark end of phase. 


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
recipes.remove(<grapplemod:block_grapple_modifier>);
recipes.remove(<grapplemod:repeller>);
recipes.remove(<grapplemod:baseupgradeitem>);
recipes.remove(<grapplemod:launcheritem>);
recipes.remove(<grapplemod:enderhook>);
recipes.remove(<grapplemod:magnethook>);
recipes.remove(<grapplemod:rockethook>);
recipes.remove(<grapplemod:motorhook>);
recipes.remove(<grapplemod:smarthook>);
recipes.remove(<grapplemod:doublemotorhook>);
recipes.remove(<grapplemod:rocketdoublemotorhook>);

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


//========================================fishing made better:========================================

print("fishing made better removals starting!"); //======Mark start of phase.

recipes.remove(<fishingmadebetter:baitbox>);
recipes.remove(<fishingmadebetter:fishing_rod_iron>);
recipes.remove(<fishingmadebetter:fishing_rod_diamond>);
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
recipes.remove(<<fishingmadebetter:hook_basic>);
recipes.remove(<fishingmadebetter:hook_shiny>);
recipes.remove(<fishingmadebetter:hook_barbed>);
recipes.remove(<fishingmadebetter:hook_magnetic>);

print("fishing made better removals complete"); //======Mark end of phase.


//========================================wastelandgrocers:========================================

print("wastelandgrocers removals starting!"); //======Mark start of phase.

recipes.remove(<wastelandgrocers:needle>);
recipes.remove(<wastelandgrocers:can_opener>);
recipes.remove(<wastelandgrocers:med_bandaid>);
recipes.remove(<wastelandgrocers:med_bandage_wrap><wastelandgrocers:med_bandage_wrap>);
recipes.remove(<wastelandgrocers:med_first_aid>);
recipes.remove(<wastelandgrocers:med_trauma_kit>);


print("wastelandgrocers removals complete"); //======Mark end of phase.


//========================================Misc Mods:======================================== (For mods that don't have enough items to justify their own section).


print("Misc removals starting!"); //======Mark start of phase.

recipes.remove(<burlapsack:burlap_sack>);
recipes.remove(<energymeters:meter>);
recipes.removeByMod("firstaid");
recipes.removeByMod("modularmachinery");
recipes.removeByMod("spartanshields");
recipes.removeByMod("locks");
recipes.removeByMod("astikorcarts");
recipes.removeByMod("simplycats");
recipes.removeByMod("xplosives");
recipes.remove(<dynamicstealth:handmirror>);
recipes.removeByMod("sophisticatedwolves"); 
recipes.removeByMod("reevess_furniture_mod");
recipes.removeByMod("pvj");
recipes.removeByMod("industrialrenewal");

print("Misc removals complete!"); //======Mark end of phase.

print("ModRecipeRemoval finished!"); //======Mark end of this script. 
