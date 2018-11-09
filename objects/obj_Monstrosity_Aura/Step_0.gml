/// @Stay on the player
// You can write your code in this editor

if instance_exists(owner) {
	x = owner.x + owner.sprite_width / 2;
	y = owner.y + owner.sprite_height / 2;
}

if (image_angle < 360) {
	image_angle++;
} else {
	image_angle = 0;
}