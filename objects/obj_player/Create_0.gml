spd = 2; 
hspd = 0;
vspd = 0;
grav = 0.18;

shot_max = 60;
shot = shot_max;

moving = function(){
	var _jump = keyboard_check_pressed(vk_space);
	var _shoter = keyboard_check_pressed(vk_control);
	
	vspd += grav;
	vspd = clamp(vspd,-7, 7);
	shot = clamp(shot, -1, 70);

	if(_jump){
		vspd = 0;
		vspd -= 4.5;
	}
	
	shot--;
	if(_shoter && shot <= 0){
		var _bullet = instance_create_layer(x+8, y, layer, obj_billet);
		_bullet.hspeed = 3.8;
		shot = shot_max;
	}
}

collision = function(){
	repeat(abs(hspd)){
		if(place_meeting(x+sign(hspd), y, obj_collision)){
			hspd = 0;
			break
		} else{
			x += sign(hspd);
		}
	}
	
	repeat(abs(vspd)){
		if(place_meeting(x, y+sign(vspd), obj_collision)){
			vspd = 0;
			break
		} else{
			y += sign(vspd);
		}
	}

}