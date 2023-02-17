/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_kill_character, 1, false);
room_restart();

lives = lives - 1;
if (lives>0)
{
	room_restart();
}
else
{
	global.game_over = true;
}
