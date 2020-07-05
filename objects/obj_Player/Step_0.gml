/// What happens to the player every step

// Player movement

var xDirection, yDirection, xMove, yMove;
xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));
yDirection = keyboard_check(ord("S")) - keyboard_check(ord("W"));
xMove = xDirection * walkingSpeed;
yMove = yDirection * walkingSpeed;

// check for being close to a building
closeToBuilding = distance_to_object(obj_Building) < 10;
// let the player know
if (closeToBuilding) {
	var enterBuildingHeight = sprite_get_height(spr_EnterBuilding);
	enterInst = instance_create_depth(x, y - enterBuildingHeight, depth - 10, obj_EnterBuilding);
	enterInst.owner = id;
}

// check for being close to a person
if (monstrosity <= 0) {
	nearestPerson = instance_nearest(x, y, obj_Person);
	closeToPerson = distance_to_object(nearestPerson) < 10;
	if (closeToPerson) {
		var friendsHeight = sprite_get_height(spr_Friends);
		friendInst = instance_create_depth(x, y - friendsHeight, depth - 15, obj_Friends);
		friendInst.owner = id;
	}	
}

// check for being close to a door
closeToDoor = distance_to_object(obj_door) < 10;

// move
if (x + xMove > 0 && x + xMove + sprite_width < room_width && place_free(x + xMove, y + yMove)) {
	if (x < walkingSpeed && xDirection < 0) {
		x = 0;
	} else if (room_width - sprite_width - x < walkingSpeed && xDirection > 0) {
		x = room_width - sprite_width;
	} else {
		x += xMove;
	}
}
if (y + yMove > 0 && y + yMove + sprite_height < room_height && place_free(x + xMove, y + yMove)) {
	if (y < walkingSpeed && yDirection < 0) {
		y = 0;
	} else if (room_height - sprite_height < walkingSpeed && yDirection > 0) {
		y = room_height - sprite_height;
	} else {
		y += yMove;
	}
}
