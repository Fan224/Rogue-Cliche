/// @description 


if place_meeting(x+spd,y,obj_wall_parent){
spd = 0;
}

if place_meeting(x-spd,y,obj_wall_parent){
spd = 0;
}

if place_meeting(x,y+spd,obj_wall_parent){
spd = 0;
}

if place_meeting(x,y-spd,obj_wall_parent){
spd = 0;
}






if hp <= 0{
//obj_control.kills+=1;
instance_destroy();
}



