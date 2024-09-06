/// @description launch
// You can write your code in this editor
speed_amount = 7;

audio_play_sound(snd_lazer_shoot, 0, false);

speed = speed_amount;
if (obj_game.paused) {
	speed = 0;
}


