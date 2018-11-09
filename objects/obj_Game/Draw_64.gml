/// @description Insert description here
// You can write your code in this editor

/*
var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();
var unscaredPeople = instance_number(obj_Person);


draw_text(_gui_width / 2, _gui_height / 4, "Unscared People:" + string(unscaredPeople));
draw_text(_gui_width / 2, _gui_height / 4 + 50, "Friends Made:" + string(obj_Player.friendsMade));
*/

draw_sprite(spr_PersonCounter, 1, 10, 10);
draw_sprite(spr_FriendCounter, 1, 84, 10);
draw_set_color(c_black);
draw_set_font(fn_arial14)
draw_set_halign(fa_center);
draw_text(sprite_get_width(spr_PersonCounter) / 2 + 10, sprite_get_height(spr_PersonCounter) / 2 - 8, string(instance_number(obj_Person)));
draw_text(sprite_get_width(spr_FriendCounter) / 2 + 84, sprite_get_height(spr_FriendCounter) / 2 - 8, string(friendsMade));