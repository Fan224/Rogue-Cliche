/// @description  

//Direcciòn en la que mira
//Derecha
dir = point_direction(x,y,obj_player.x,obj_player.y);

if dir < 90 or dir > 270
if instance_exists(obj_player)
{
face=1;
}

//Izquierda
if dir >= 90 and dir <= 270
if instance_exists(obj_player)
{
face=-1;
}

draw_sprite_ext(spr_zombie,image_index,x,y,face,image_yscale,0,-1,1);



if (flash_alpha > 0)
{
	
shader_set(shader_hit);

draw_sprite_ext(sprite_index,image_index,x ,y , image_xscale, image_yscale,image_angle,flash_blend,flash_alpha);
	
	
	shader_reset();
	
}

