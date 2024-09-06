/// @description
// You can write your code in this editor

if (other.enemy_health > 0)
{

other.enemy_health--;
if (other.enemy_health <= 0)
{
	audio_play_sound(snd_explosion_enemy, 1, false);
	obj_game.enemy_amount--;
	obj_game.score_multi -= 2;
	if (obj_game.enemy_amount <= 0) {
		obj_game.ended = true;
		obj_game.lost = false;
	}
}
else if (other.enemy_health == other.health_medium or other.enemy_health == other.health_large)
{
	obj_game.score_multi++;
	audio_play_sound(snd_hit, 1, false);
}
else
{
	audio_play_sound(snd_hit, 1, false);
}

instance_destroy(self);

}