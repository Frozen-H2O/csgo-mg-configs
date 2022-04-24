# CS:GO Configs

A collection of my stripper and map setting configuration files for CS:GO maps of or relating to the Minigames gamemode.

## How to Report Map or Config Bugs

Simply open an issue on this github repository with the bug in question. Please include the full map name in the issue's name, whether it is a map bug or bug with existing config, and follow the template for map bugs.

## How to Contribute for Map Configs

For making any map-cfg configs, you simply need to add a csgo setting on its own line. This is primarily for ConVars that are not whitelisted in bspconvar_whitelist.txt or that are locked/hidden and require sm_cvar to change, but may also be used to easily change whitelisted CVars the map needs but has not set itself.
Load order for the configs is as follows:
- **[autoexec.cfg](Reference%20Configs/autoexec.cfg)** - On server start.
- **[server.cfg](Reference%20Configs/server.cfg)** - On map change, before plugins are loaded.
- ***map*.cfg** - [OnAutoConfigsBuffered](https://sourcemod.dev/#/sourcemod/function.OnAutoConfigsBuffered)
- ***map*.post.cfg** - [OnConfigsExecuted](https://sourcemod.dev/#/sourcemod/function.OnConfigsExecuted)

## How to Contribute for Stripper Configs

For making configs, you will most likely need knowledge of how to use CS:GO's hammer editor. You will also want a tool like [VIDE](http://www.riintouge.com/VIDE/)'s entity lump editor, or [entSpy](https://gamebanana.com/tools/5876) to view a map's entity logic. In addition, you may need a tool like [BspSrc](https://github.com/ata4/bspsrc/releases) to decompile a map's bsp to get it's vmf if you wish to open the map directly in the hammer editor. You can also compare maps with current strigger configs in this repository and see how past fixes have been done if you're looking for functional examples of things.

**_IMPORTANT:_** Make sure the filename of the config matches the exact map name on the server.

## [Stripper: Source](http://www.bailopan.net/stripper/snapshots/1.2/)

Stripper: Source is quite a complicated plugin, but essentially boils down to being the hammer editor in text form. If you're looking for a good starting point to learn how to make Stripper: Source configs, you can check out [the official documentation](https://www.bailopan.net/stripper/) or [this tutorial](https://gflclan.com/forums/topic/47449-stripper-cfgs-guide/). If you have any questions regarding stripper creation you can always join the [#mapping channel](https://discord.gg/zh2CVSM) on the GFLClan Zombie Escape Discord for assistance.

## Stripper Syntax
In order to try and keep stripper files consistant, the following syntax should try to be maintained:
- Use // for comments instead of ;, #, or \0
- Use "filter:" instead of "remove:" to delete entities from the map
- List all changes and bug fixes at the top of the file in a change block if there are multiple fixes in the file
- Put brackets {} on their own lines
- Use spaces instead of tabs

## Collection of links
- [VS Code extension for Source Engine highlighting](https://marketplace.visualstudio.com/items?itemName=Azashii.csgo-map-config-highlighting)
- [VIDE](http://www.riintouge.com/VIDE/)
- [entSpy](https://gamebanana.com/tools/5876)
- [BspSrc](https://github.com/ata4/bspsrc/releases)
- [Sourcemod and Metamod Download (Required for Stripper: Source)](https://www.sourcemod.net/downloads.php?branch=stable)
- [Stripper: Source Download](http://www.bailopan.net/stripper/snapshots/1.2)
- [Stripper: Source Documentation](https://www.bailopan.net/stripper/)
- [GFL Stripper Tutorial](https://gflclan.com/forums/topic/47449-stripper-cfgs-guide/)
- [GFL:ZE Discord for Mapping/Stripper Help](https://discord.gg/zh2CVSM)
