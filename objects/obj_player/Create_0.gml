spd = 1; 
hspd = 0;
vspd = 0;

shot_max = 60;
shot = 0;

life_max = 3;
life = life_max;

image_speed = 1;

moving = function(){
	var _shoter = keyboard_check_pressed(vk_control) || keyboard_check(vk_space);
	var _up = keyboard_check(ord("W")) || keyboard_check(vk_up);
	var _down = keyboard_check(ord("S")) || keyboard_check(vk_down);
	
	vspd = (_down - _up)* spd;
	y += vspd;
	y = clamp(y, sprite_width/2, room_height - sprite_height/2);
	
	shot = clamp(shot, -1, 70);
	shot--;
	x = xstart;
	if(_shoter && shot <= 0){
		x -= 4;
		var _bullet = instance_create_layer(x, y, layer, obj_billet);
		_bullet.hspeed = 3.8;
		shot = shot_max;
	}
}

draw_icon = function(icon = spr_icon_life, repetition = 3){
	var _space = 0;
	repeat(repetition){
		draw_sprite_ext(icon, 0, 8 + _space, 8, 3, 3, 0, c_white, 1);
		_space += 38;
	}
}

//collision = function(){
//	repeat(abs(hspd)){
//		if(place_meeting(x+sign(hspd), y, obj_collision)){
//			hspd = 0;
//			break
//		} else{
//			x += sign(hspd);
//		}
//	}
	
//	repeat(abs(vspd)){
//		if(place_meeting(x, y+sign(vspd), obj_collision)){
//			vspd = 0;
//			break
//		} else{
//			y += sign(vspd);
//		}
//	}

//}