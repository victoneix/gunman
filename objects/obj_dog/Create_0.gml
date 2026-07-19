hspd = 0;
vspd = 0;
grav = 0.24;
mult = random_range(0.8, 2.4);
alarm[0] = 22*mult;

moving = function(){
	vspd += grav;
	vspd = clamp(vspd, -9, 9);
	hspd = -2;
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