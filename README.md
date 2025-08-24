# Bedwars

Bedwars in Vanilla Minecraft for version 1.21.2 and up.

# How To Play

(These steps are subject to change)

1. Get the latest version of the datapack either from the releases section (currently unavailable) or directly from the source.
2. Create a world with no blocks in it by using the 'Super Flat' preset 'The Void' (or don't if you want scenery around the map).
3. Either add the datapack in the world creation screen or afterwards to the world/datapack folder.
4. You need to have a render distance of at least 16 chunks.
5. Have at least one other person with you in the world.
6. Run the command `/function bedwars:setup` to set up the datapack. This has to be run once per world or if the datapack updated.
7. Select how many teams you want to have by clicking on the command block in the lobby that is labeled "Settings" or running the command `/function bedwars:settings`. This will bring up a menu where you can choose the amount of teams.
Alternatively you can run the following command `/scoreboard players set teams data [TEAM COUNT]` with `[TEAM COUNT]` being the number of teams you want to have on the map. Note that only 2, 3 and 4 teams are supported. Using values outside that range will have no impact on most of the game. However, some things may not function properly.
8. Start the game by pressing the start button on the spawn platform.
9. Play the game until it ends, or if you decide to end it early, run the command `/function bedwars:reset` to reset everything and have the game ready for another round. If the round ends by itself (time ran out or a team won) this will be executed after 10 seconds automatically.
10. Once the game is over, all of you will be teleported back to the start paltform. You can't start the game while the reset is in progress. Wait until it is done and press the start button to start the game again.

## In Game
Whilst a game is in progress, your goal is to destroy your opponents bed and eliminate members of opposing teams. As long as you have your bed, you will respawn if you die. However, if you lose your bed, you wont respawn after dieing. If you are dead, you will be in spectator mode and the time remaining until you respawn will be shown above your hotbar. If only one team is alive or the time ran out, the game will display information about who, if anyone did, won.

There are usually 3 types of islands. the team islands, the diamond generator islands and the emerald island. the emerald island is usually in the center with the team and diamond islands surrounding it. However maps may have a different layout. You and your teammates will spawn in your team island with the corrosponding color and your bed in front of you. Usually behind where you spawn will be the forge, where basic resources will spawn (iron and gold). Use these to buy tools and blocks to protect your bed and defeat your opponents at the 'Item Shop'.

To upgrade your team, locate the nearest diamond island and bridge over to it. There will be a floating text 'Diamond Spawner' with the time until the next diamond spawns below it. Somewhere in your base there will be a village with the name 'Team Upgrades'. It will sell you team upgrades for diamonds.

Emeralds spawn on the emerald island which can buy you stronger items than iron and gold can, like diamond armor and tools. The emerald spawner and the diamond spawner will be upgraded during the game and will produce more resources. This will be announced in the chat.

After 30 minutes the game will destroy all beds in order to have the game not last to long and after 50 minutes the game will end in a draw.

## Bedrock Edition

The only way to play with this datapack on Bedrock is to host a server with a plugin like [Geyser](https://geysermc.org/) that allows Bedrock players to join a Java server.
Playing on bedrock edition will cause some items to not appear correctly as item components are not available on bedrock edition. The items however, will still function like they normally would.

# Custom Content
To add custom content, visit the wiki (currently unavailable) for information on how to add your own maps, custom rotating item shop items, custom items for the regular item shop or custom team upgrades

# Reporting issues
When encountering an issue, please report it with as much detail as possible on how to reproduce it on this GitHub repository.
The same goes for feature requests or other improvements or changes you would like to see. Please note that some aspects are intendet behavoir or might have been already covered in a previous issue, so please check for any similar issues that are already in this repository.