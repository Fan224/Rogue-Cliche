/// @description  


if distance_to_object(obj_player) < 10
{
image_index=1;	

if keyboard_check_released(ord("E")){
global.gun_select = 2;
instance_destroy();
}

}
else
{
image_index=0;	
}






