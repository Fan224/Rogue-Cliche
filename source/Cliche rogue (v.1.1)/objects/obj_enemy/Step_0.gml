/// @description enemy 
event_inherited();

mp_potential_step(obj_player.x,obj_player.y,0.5,false);

if place_meeting(x,y,obj_enemy_parent)
{mp_potential_step(obj_enemy_parent.x,obj_enemy_parent.y,-0.5,false);}

//Flash effect
if flash_alpha  > 0
{
flash_alpha -=0.10;
}

if !place_meeting(x,y,obj_bullet){hit=0;}