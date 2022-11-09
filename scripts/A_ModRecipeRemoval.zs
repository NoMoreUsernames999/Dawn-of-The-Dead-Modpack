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


//========================================Misc Mods:======================================== (For mods that don't have enough items to justify their own section).


print("Misc removals starting!"); //======Mark start of phase.

recipes.remove(<burlapsack:burlap_sack>);
recipes.remove(<energymeters:meter>);
recipes.removeByMod("firstaid");
recipes.removeByMod("modularmachinery");

print("Misc removals complete!"); //======Mark end of phase.

print("ModRecipeRemoval finished!"); //======Mark end of this script. 