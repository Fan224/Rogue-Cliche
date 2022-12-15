/// @description enemy 
event_inherited();

if act=1{mp_potential_step(obj_player.x,obj_player.y,spd,false);}

if place_meeting(x,y,obj_enemy_parent)
{mp_potential_step(obj_enemy_parent.x,obj_enemy_parent.y,-spd,false);}

//Flash effect
if flash_alpha  > 0
{
flash_alpha -=0.10;
}

if !place_meeting(x,y,obj_bullet){hit=0;}


if place_meeting(x,y,obj_door){
mp_potential_step(obj_door.x,obj_door.y,-1,false);
}



