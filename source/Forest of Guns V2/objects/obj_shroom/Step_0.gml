/// @description enemy 
event_inherited();

if act=1{mp_potential_step(obj_player.x,obj_player.y,spd,false);}

if place_meeting(x,y,obj_enemy_parent)
{mp_potential_step(obj_enemy_parent.x,obj_enemy_parent.y,-spd,false);}

//Flash effect
if flash_alpha  > 0
{
flash_alpha -=0.1;
}


if !place_meeting(x,y,obj_bullet){hit=0;}

if place_meeting(x,y,obj_door){
mp_potential_step(obj_door.x,obj_door.y,-1,false);
}

if act=1{
t+=1;

//Direccion del disparo
if instance_exists(obj_player)
{dir = point_direction(x,y,obj_player.x,obj_player.y);}

 var _xx = x + lengthdir_x(5, dir);
 var _yy = y + lengthdir_y(5, dir);


//Shoot
if t > 90 
{
with instance_create_layer(_xx,_yy,layer,obj_enemy_bullet){dir+=random_range(-20,20);}
t=0;
act_f=1;
}

}