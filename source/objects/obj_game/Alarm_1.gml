/// @description ending
// You can write your code in this editor
starting = true;
ending = false;
paused = true;
alarm_set(0, 2 * game_get_speed(gamespeed_fps));

if (lost) {
	room_restart();	
} else {
	room_goto_next();
}


