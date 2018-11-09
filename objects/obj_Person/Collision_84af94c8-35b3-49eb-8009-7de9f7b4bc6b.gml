/// @Person collides with monstrosity aura
// You can write your code in this editor

// check to see if the person flees
fearLevel += other.owner.monstrosity;
if fearLevel >= fearTolerance && !afraid {
	var afraidWidth = sprite_get_width(spr_Monstrosity_Aura),
		afraidHeight = sprite_get_height(spr_Monstrosity_Aura);
	afraid = true;
	afraidInst = instance_create_depth(x, y - afraidHeight, depth - 10, obj_Afraid);
	afraidInst.owner = id;
}
