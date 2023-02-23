
if (instance_place(x,y,obj_ladder))
{
	if(keyboard_check(vk_up) || keyboard_check(vk_down))
	
	{
		climbing = true;
		vspeed = 0;
		gravity = 0;
		sprite_index = spr_climbing;
	}
}
	else{
		if (instance_place(x,y+1,obj_block)){
			sprite_index = spr_idle;
		}
		climbing = false
	}
if (climbing)
{
	gravity = 0;
	if(keyboard_check(vk_up)){
		vspeed -= climb_speed;
	
	}
	if (keyboard_check(vk_down))
	{
            y += climb_speed;
    }
	if (place_meeting(x, y + 1, obj_block))
	{
            climbing = false;
    }
}
else{
	if (keyboard_check(vk_left) and !instance_place(x-move_speed, y, obj_block)){
		if (instance_place(x,y+1,obj_block)){
			sprite_index = spr_running
		}
		x += -move_speed
		image_xscale = -1
	}

	if (keyboard_check(vk_right) and !instance_place(x+move_speed, y, obj_block)) {
		if (instance_place(x,y+1,obj_block)){
			sprite_index = spr_running
		}
		x += move_speed
		image_xscale =1
	}
jump_height = -8
if (keyboard_check_pressed(vk_up))
{
	show_debug_message("Jumping..")
	if (instance_place(x,y+1,obj_block))
	{
		
		vspeed = jump_height 
		sprite_index = spr_jump
		alarm[0] = 10
		
	}
}


if instance_place(x,y+1,obj_block)
{
	gravity = 0
}
else{
	gravity = 0.25
	}
if (vspeed > 12)
{
	vspeed = min(12,room_width)
}
if (keyboard_check_pressed(ord("Z")))
{
	instance_create_layer(x,y,"Instances", obj_sword);
	
}

}


	
	

