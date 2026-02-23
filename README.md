# Room-System-For-Godot
This proyect of godot contains 2 scripts that handle the room system. Then there are another scripts for the player, camera and that stuff to debug, feel free to change any code FROM YOUR ARCHIVES. Maybe this code is a little janky but I am new at coding in godot, so please give a coment if I need to fix something

If you only want the room stuff to put it in your proyect you'll need to download the files prenamed "_Independent" this are file with no integrations that require other scripts more than the ones from the 2 gdscripts

Usage of the system:
Firstly it is important to know that you need to have an structure like ts:
  CurrentScene
    →RoomContainer
Else it wont work cuz the .tscn file are gonna be loaded in the RoomContainer

Fistly you have the Door node, this is an Area2D but it detects once when someting enters an then it triggers the change Scene, this node has 4 variables:
※Next Scene: this is a path type variable that determines what archive .tscn is going to be loaded **IT IS IMPORTANT TO KNOW THAT IF YOU CHANGE THE FILE PATH IT WONT WORK**
※Next Pos: This stores a vector2 that you can use to teleport the character or something to that vector2, do what u want.
※Dir: this isn't actually needed but if you find it useful feel free to use it
※Wait time: this detemines the time the codes wait for creating the node **AFTER** deleting the current scene, this can be useful for things like fade in or something feel free to use it as you want

And then there is the GlobalEventsHandler, this is a preloaded source that manages all the .tscn deleting & creating nodes for the room management and al that stuff feel free to change the code if you see some memory leak or something

That would be all, the complete proyect come with some assest that I found on itch.io and another systems that I am not explaining here
