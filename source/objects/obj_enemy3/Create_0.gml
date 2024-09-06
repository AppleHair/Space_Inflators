/// @description

flash = false;

last_paused = obj_game.paused;

saved_vspeed = 1;
saved_hspeed = 1;

if (last_paused == false) {
	vspeed = 1;
	hspeed = 1;
}

enemy_health = 45;

health_medium = 35;
health_large = 20;

dying = false;

enemy_score = 450;

bullet_amount = 1;

dir_to_ship = 0;

alarm_set(0, 2 * game_get_speed(gamespeed_fps));

saved_shoot_alarm = alarm_get(0);