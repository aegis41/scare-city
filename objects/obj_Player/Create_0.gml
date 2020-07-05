/// @description Create the player
// You can write your code in this editor

image_speed = 0;
image_index = global.playerSelection;
walkingSpeed = 10;
monstrosity = 5;
monsterType = "vampire";
closeToBuilding = false;
closeToPerson = false;
nearestPerson = instance_nearest(x, y, obj_Person);
lastBuildingName = "";
lastBuildingFixes = [];

var playerWidth = sprite_get_width(spr_Player),
	playerHeight = sprite_get_height(spr_Player);

monAuraInst = instance_create_depth(x - playerWidth / 2, y - playerHeight / 2, depth + 10, obj_Monstrosity_Aura);
monAuraInst.owner = id;