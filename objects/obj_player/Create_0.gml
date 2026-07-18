spd = 2; 
hspd = 0;
vspd = 0;
grav = 0.3;

moving = function(){
	var _jump = keyboard_check_pressed(vk_space);
	var _shoter = keyboard_check_pressed(vk_control);
	
	vspd += grav;
	vspd = clamp(vspd,-7, 7);


	if(place_meeting(x,y+1,obj_collision) && _jump){
		vspd -= 7;
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