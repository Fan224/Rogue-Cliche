/// @description enemy 
event_inherited();

mp_potential_step(obj_player.x,obj_player.y,1.5,false);

if position_meeting(x,y,obj_enemy_parent)
{mp_potential_step(obj_enemy_parent.x,obj_enemy_parent.y,-0.1,false);}

//Flash effect
if flash_alpha  > 0
{
flash_alpha -=0.05;
}

if !place_meeting(x,y,obj_bullet){hit=0;}