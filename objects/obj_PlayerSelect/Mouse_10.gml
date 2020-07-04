/// @description Hover to grow the sprite

//
	var scale = 0.1;
	var xOffset = (sprite_width * scale) / 2;
	var yOffset = (sprite_height * scale) / 2;
	image_xscale += scale;
	image_yscale += scale;
	x -= xOffset;
	y -= yOffset;