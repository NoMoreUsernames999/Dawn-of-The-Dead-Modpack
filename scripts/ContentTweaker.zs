#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import crafttweaker.command.ICommand;
import crafttweaker.command.ICommandSender;
import crafttweaker.command.ICommandManager;
import crafttweaker.server.IServer;
import crafttweaker.events.IEventManager;
import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.AxisAlignedBB;

val customBlockTab = VanillaFactory.createCreativeTab("dotdblocks", <item:minecraft:dirt>);
customBlockTab.register();

var silvercoin = VanillaFactory.createItem("silvercoin");
silvercoin.maxStackSize = 64;
silvercoin.rarity = "uncommon";

silvercoin.itemRightClick = function(stack, world, player, hand) {
    server.commandManager.executeCommand(server, "xp 10 " + player.name);
    stack.shrink(1);
    return "SUCCESS";
};

silvercoin.register();

static coinXp as IItemStack = <minecraft:iron_ingot>;
events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){
    if(!event.world.isRemote()){
        val itemStack = event.item as IItemStack;     
        if ((itemStack.definition.id).matches(coinXp.definition.id)) {  
            server.commandManager.executeCommand(server, "xp 10 " + player.name);
            stack.shrink(1);
        }  
    }
});

var candyBar = VanillaFactory.createBlock("candyBar", <blockmaterial:Cake>);
candyBar.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    0.1 / 16.0,
    16.0 / 16.0
	);
candyBar.setLightOpacity(0);
candyBar.setBlockHardness(1.0);
candyBar.setBlockResistance(1.0);
candyBar.setBlockSoundType(<soundtype:ground>);
candyBar.setCreativeTab(<creativetab:dotdblocks>);
candyBar.setEntitySpawnable(false);
candyBar.setFullBlock(false);
candyBar.setPassable(true);
candyBar.setBlockLayer("CUTOUT");
candyBar.register();

var batteries = VanillaFactory.createBlock("batteries", <blockmaterial:Cake>);
batteries.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    0.1 / 16.0,
    16.0 / 16.0
	);
batteries.setLightOpacity(0);
batteries.setBlockHardness(1.0);
batteries.setBlockResistance(1.0);
batteries.setBlockSoundType(<soundtype:ground>);
batteries.setCreativeTab(<creativetab:dotdblocks>);
batteries.setEntitySpawnable(false);
batteries.setFullBlock(false);
batteries.setPassable(true);
batteries.setBlockLayer("CUTOUT");
batteries.register();

var batteriesTwo = VanillaFactory.createBlock("batteriesTwo", <blockmaterial:Cake>);
batteriesTwo.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    0.1 / 16.0,
    16.0 / 16.0
	);
batteriesTwo.setLightOpacity(0);
batteriesTwo.setBlockHardness(1.0);
batteriesTwo.setBlockResistance(1.0);
batteriesTwo.setBlockSoundType(<soundtype:ground>);
batteriesTwo.setCreativeTab(<creativetab:dotdblocks>);
batteriesTwo.setEntitySpawnable(false);
batteriesTwo.setFullBlock(false);
batteriesTwo.setPassable(true);
batteriesTwo.setBlockLayer("CUTOUT");
batteriesTwo.register();

var paperGarbage = VanillaFactory.createBlock("paperGarbage", <blockmaterial:Cake>);
paperGarbage.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    0.1 / 16.0,
    16.0 / 16.0
	);
paperGarbage.setLightOpacity(0);
paperGarbage.setBlockHardness(1.0);
paperGarbage.setBlockResistance(1.0);
paperGarbage.setBlockSoundType(<soundtype:ground>);
paperGarbage.setCreativeTab(<creativetab:dotdblocks>);
paperGarbage.setEntitySpawnable(false);
paperGarbage.setFullBlock(false);
paperGarbage.setPassable(true);
paperGarbage.setBlockLayer("CUTOUT");
paperGarbage.register();

var rawExplosive = VanillaFactory.createBlock("rawExplosive", <blockmaterial:Cake>);
rawExplosive.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    0.1 / 16.0,
    16.0 / 16.0
	);
rawExplosive.setLightOpacity(0);
rawExplosive.setBlockHardness(1.0);
rawExplosive.setBlockResistance(1.0);
rawExplosive.setBlockSoundType(<soundtype:ground>);
rawExplosive.setCreativeTab(<creativetab:dotdblocks>);
rawExplosive.setEntitySpawnable(false);
rawExplosive.setFullBlock(false);
rawExplosive.setPassable(true);
rawExplosive.setBlockLayer("CUTOUT");
rawExplosive.register();