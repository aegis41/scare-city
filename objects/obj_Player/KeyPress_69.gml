/// @description Actions
// You can write your code in this editor
if (closeToBuilding) {
	// Checking if still a monster
	/*if (monstrosity > 0) {
		monstrosity--;
		monAuraInst.image_xscale = monstrosity * 0.4;
		monAuraInst.image_yscale = monAuraInst.image_xscale;
	}*/
	
	// getting the building props
	lastBuildingName = instance_nearest(x, y, obj_Building).buildingName;
	lastBuildingFixes = instance_nearest(x, y, obj_Building).buildingFixes;

	// go into the building
	room_goto(rm_Building)
}

if (closeToPerson) {
	instance_destroy(nearestPerson);
	obj_Game.friendsMade++;
}

if (closeToDoor) {
	// exit room
	room_goto(rm_City);
}