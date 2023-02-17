/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player))
{
	dis = distance_to_object(obj_player);
	if (dis < attack_range)
	{
		path_end();
		direction = point_direction(x,y,obj_player.x,obj_player.y);
		speed = hsp;
	}
}
