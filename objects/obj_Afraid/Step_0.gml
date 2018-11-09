/// @Stay on the person
// You can write your code in this editor

if instance_exists(owner) {
	x = owner.x - sprite_width / 2 + owner.sprite_width / 2;
	y = owner.y - sprite_height;
} else {
	instance_destroy();
}