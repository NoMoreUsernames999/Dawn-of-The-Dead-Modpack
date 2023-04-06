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
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.AxisAlignedBB;

val customBlockTab = VanillaFactory.createCreativeTab("dotdblocks", <item:minecraft:dirt>);
customBlockTab.register();

var silvercoin = VanillaFactory.createItem("silvercoin");
silvercoin.maxStackSize = 64;
silvercoin.rarity = "uncommon";
silvercoin.itemRightClick = function(stack, world, player, hand) {
    server.commandManager.executeCommand(server, "xp" + " 10 " + player.name);
    stack.shrink(1);
    return "SUCCESS";
};
silvercoin.register();

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
