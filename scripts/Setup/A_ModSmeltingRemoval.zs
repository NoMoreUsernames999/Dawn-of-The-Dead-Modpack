#reloadable

/*
							//Placeholder for IE removals. 
val removedOres = ["ingot", "metal"] as string[];
for i in loadedMods["immersiveengineering"].items {
for possible in removedOres { 
    if i.name.indexOf(possible) > -1 {
      furnace.remove(i);  
   	 	}
	}
}
*/

//========================================Furnace Recipes:========================================


print("ModSmeltingRemoval starting!"); //Mark beginning of script. 


//========================================Ceramics:========================================


print("Ceramics removals starting!"); //======Mark start of phase.

furnace.remove(<ceramics:unfired_clay>);
furnace.remove(<ceramics:clay_bucket>);
furnace.remove(<ceramics:clay_shears>);
furnace.remove(<ceramics:porcelain>);
furnace.remove(<ceramics:clay_barrel>);
furnace.remove(<ceramics:clay_barrel:1>);
furnace.remove(<ceramics:porcelain_barrel>);
furnace.remove(<ceramics:porcelain_barrel:1>);
furnace.remove(<ceramics:faucet>);
furnace.remove(<ceramics:channel>);


print("Ceramics removals complete"); //======Mark end of phase. 


//========================================Pyrotech:========================================


print("Pyrotech removals starting!"); //======Mark start of phase.



print("Pyrotech removals complete"); //======Mark end of phase. 


//========================================Misc:========================================

furnace.remove(<sakura:bamboo_charcoal_block>);
furnace.remove(<mocreatures:omelet>);
furnace.remove(<oe:dried_dulse>);
furnace.remove(<oe:dried_kelp>);


print("ModSmeltingRemoval finished!"); //======Mark end of this script. 