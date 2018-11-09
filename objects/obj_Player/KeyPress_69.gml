/// @description Insert description here
// You can write your code in this editor
if (closeToBuilding) {
	if (monstrosity > 0) {
		monstrosity--;
		monAuraInst.image_xscale = monstrosity * 0.4;
		monAuraInst.image_yscale = monAuraInst.image_xscale;
	}
}

if (closeToPerson) {
	instance_destroy(nearestPerson);
	obj_Game.friendsMade++;
}