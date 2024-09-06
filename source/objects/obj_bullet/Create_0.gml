/// @description Insert description here
// You can write your code in this editor
speed_amount = 4;
audio_play_sound(snd_bullet_shoot, 2, false);
speed = speed_amount;
if (obj_game.paused) {
	speed = 0;
}


