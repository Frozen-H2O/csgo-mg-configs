# CS:GO Configs

An collection of my stripper configs for non-ZE CS:GO maps. Any ZE stripper additions and/or edits I do can be found on [GFL's Github Repo](https://github.com/gflclan-cs-go-ze/ZE-Configs/commits?author=Frozen-H2O).

## How to Report Map or Stripper Bugs

Simply open an issue on this github repository with the bug in question. Please include the full map name in the issue's name, whether it is a map bug or bug with existing stripper config, and follow the template for map bugs.

## How to Contribute

For making any of these configs, you will need knowledge of how to use CS:GO's hammer editor. You will also want a tool like [VIDE](http://www.riintouge.com/VIDE/)'s entity lump editor, or [entSpy](https://gamebanana.com/tools/5876) to view a map's entity logic. In addition, you may need a tool like [BspSrc](https://github.com/ata4/bspsrc/releases) to decompile a map's bsp to get it's vmf if you wish to open the map directly in the hammer editor. You can also compare maps with current configs in this repository and see how past stripper fixes have been done if you're looking for functional examples of things.

**_IMPORTANT:_** Make sure the filename of the config matches the exact map name on the server.

## [Stripper: Source](http://www.bailopan.net/stripper/snapshots/1.2/)

Stripper: Source is quite a complicated plugin, but essentially boils down to being the hammer editor in text form. If you're looking for a good starting point to learn how to make Stripper: Source configs, you can check out [the official documentation](https://www.bailopan.net/stripper/) or [this tutorial](https://gflclan.com/forums/topic/47449-stripper-cfgs-guide/). If you have any questions regarding stripper creation you can always join the [#mapping channel](https://discord.gg/zh2CVSM) on the GFLClan Zombie Escape Discord for assistance.

## Syntax
In order to try and keep stripper files consistant, the following syntax should try to be maintained:
- Use // for comments instead of ;, #, or \0
- Use "filter:" instead of "remove:" to delete entities from the map
- List all changes and bug fixes at the top of the file in a change block if there are multiple fixes in the file
- Put brackets {} on their own lines
- Use tabs at the start of lines for spacing and spaces for any spacing in the middle of lines (ie. ____"classname"++++++"logic_auto" should have _ replaced with tabs and + replaced with spaces)
- All say commands issued to a point_servercommand should have two asterisks ** around their message, regardless of the map's original message formatting. (ie. "console,Command,say ** Example **,0,-1")

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