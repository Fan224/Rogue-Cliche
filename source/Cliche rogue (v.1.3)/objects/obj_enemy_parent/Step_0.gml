/// @description 


if place_meeting(x+spd,y,obj_wall_parent){
x=xprevious;
}

if place_meeting(x-spd,y,obj_wall_parent){
x=xprevious;
}

if place_meeting(x,y+spd,obj_wall_parent){
y=yprevious;
}

if place_meeting(x,y-spd,obj_wall_parent){
y=yprevious;
}






if hp <= 0{
//obj_control.kills+=1;
instance_destroy();
}



