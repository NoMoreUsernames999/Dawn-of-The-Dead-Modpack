#reloadable

/*
//!Placeholder for IE removals. 
//Todo: Finish this, add section for IE.
val removedOres = ["ingot", "metal"] as string[];
for i in loadedMods["immersiveengineering"].items {
for possible in removedOres { 
    if i.name.indexOf(possible) > -1 {
      furnace.remove(i);  
   	 	}
	}
}
*/

//#========================================Smelting Recipes:========================================


//?Mark beginning of script. 
print("ModSmeltingRemoval starting!"); 


//#========================================Ceramics:========================================


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


//#========================================Pyrotech:========================================





//#========================================Misc:========================================

furnace.remove(<sakura:bamboo_charcoal_block>);
furnace.remove(<mocreatures:omelet>);
furnace.remove(<oe:dried_dulse>);
furnace.remove(<oe:dried_kelp>);


//?======Mark end of this script. 
print("ModSmeltingRemoval finished!"); 