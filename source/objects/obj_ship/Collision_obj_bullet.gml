/// @description Insert description here
// You can write your code in this editor

instance_destroy(other);
obj_game.lost = true;
obj_game.ended = true;
audio_stop_all();
audio_play_sound(snd_explosion, 3, false);
instance_destroy(self);


