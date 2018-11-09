/// @description Insert description here
// You can write your code in this editor
if (friendsMade >= 10 || instance_number(obj_Person) < 10) {
	if (friendsMade >= 10) {
		global.gameOver = 1;
	} else if (instance_number(obj_Person) < 10) {
		global.gameOver = 0;
	}
	room_goto_next();	
}