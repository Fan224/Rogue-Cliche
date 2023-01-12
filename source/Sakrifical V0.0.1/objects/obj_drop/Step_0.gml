/// @description  

if instance_exists(obj_player){
	
if distance_to_object(obj_player) < 27
{
mp_potential_step(obj_player.x,obj_player.y,1.5,false);
}
else
{
mp_potential_step(obj_player.x,obj_player.y,0,false);
}

}




