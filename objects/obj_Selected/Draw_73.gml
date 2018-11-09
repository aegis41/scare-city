/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_font(fn_arial14)
draw_set_halign(fa_center);
message = "It's the day after Halloween and you awake to find yourself downtown. People are running from you in terror.";
draw_text(room_width / 2, room_height -170, message);
message = "Then you remember. . .YOU'RE A MONSTER!";
draw_text(room_width / 2, room_height -150, message);
message = "Try to make yourself less monstous, then make some friends to win!";
draw_text(room_width / 2, room_height -130, message);
message = "Press the E key to interact with buildings and people! Don't scare too many off!";
draw_text(room_width / 2, room_height -110, message);
draw_set_font(fn_arial10);
message = "© 2018, Anthony Gaff, Shawnda Lawrence, Isaiah Walker, Parker Gaff, Naayele Ackon, Raiden Ackon, Tayton Gaff";
draw_text(room_width / 2, room_height -60, message);
message = "Special thanks to Justin Daniel and Samuel Swanson";
draw_text(room_width / 2, room_height -30, message);