/// @Move the person and other stuff
// You can write your code in this editor

var xMove, yMove;

if (!afraid) {
	if stepCount < 90 {
		stepCount++;
	} else {
		xDirection = choose(-1,1);
		yDirection = choose(-1,1);
		stepCount = 0;
	}
	xMove = xDirection * walkingSpeed;
	yMove = yDirection * walkingSpeed;

	if (x + xMove > 0 && x + xMove + sprite_width < room_width && place_free(x + xMove, y + yMove)) {
		x += xMove;
	}
	if (y + yMove > 0 && y + yMove + sprite_height < room_height && place_free(x + xMove, y + yMove)) {
		y += yMove;
	}
} else {
	if (instance_exists(obj_Exit)) {
		var exitInst;
		exitInst = instance_nearest(x, y, obj_Exit);
		mp_potential_step(exitInst.x, exitInst.y, walkingSpeed * 1.5, false)
	}
}