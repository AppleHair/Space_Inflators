/// @description

flash = false;

speed_amount = 1;

last_paused = obj_game.paused;

saved_vspeed = speed_amount;

if (last_paused == false) {
	vspeed = speed_amount;
}

enemy_health = 45;

health_medium = 35;
health_large = 20;

bullet_amount = 1;

dying = false;

enemy_score = 300;

alarm_set(0, 2 * game_get_speed(gamespeed_fps));

saved_shoot_alarm = alarm_get(0);