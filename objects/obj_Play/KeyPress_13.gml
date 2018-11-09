/// @description Insert description here
// You can write your code in this editor
if (global.gameOver == -1) {
	room_goto(rm_City);
} else {
	global.gameOver = -1;
	room_goto(rm_Splash);
}