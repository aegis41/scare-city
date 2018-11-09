/// @description Insert description here
// You can write your code in this editor

walkingSpeed = 10;
monstrosity = 5;
image_speed = 0;
image_index = global.playerSelection;
monsterType = "vampire";
closeToBuilding = false;
closeToPerson = false;
nearestPerson = instance_nearest(x, y, obj_Person);

var playerWidth = sprite_get_width(spr_Player),
	playerHeight = sprite_get_height(spr_Player);

monAuraInst = instance_create_depth(x - playerWidth / 2, y - playerHeight / 2, depth + 10, obj_Monstrosity_Aura);
monAuraInst.owner = id;