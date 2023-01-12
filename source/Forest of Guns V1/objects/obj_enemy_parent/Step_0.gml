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
//if ds_map_find_value(global.obtained_items_list,"fire body"){}
instance_create_layer(x,y,layer,obj_drop);
instance_destroy();
}



