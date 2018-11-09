/// @description Insert description here
// You can write your code in this editor
var message;
if (global.gameOver == 1) {
	message = "Congratulations! You managed to make 10 friends. You're no longer a monster!";
} else if (global.gameOver == 0) {
	message = "You scared away too many people! Next time try to visit some buildings to be less monstrous!";
}

draw_set_color(c_white);
draw_set_font(fn_arial14)
draw_set_halign(fa_center);
draw_text(room_width / 2, room_height / 2, message);
draw_text(room_width / 2, 590, ". . .again");
draw_set_font(fn_arial10);
message = "© 2018, Anthony Gaff, Shawnda Lawrence, Isaiah Walker, Parker Gaff, Naayele Ackon, Raiden Ackon, Tayton Gaff";
draw_text(room_width / 2, room_height -60, message);
message = "Special thanks to Justin Daniel and Samuel Swanson";
draw_text(room_width / 2, room_height -30, message);