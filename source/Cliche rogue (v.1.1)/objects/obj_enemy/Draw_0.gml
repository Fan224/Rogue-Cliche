/// @description  

// Inherit the parent event
event_inherited();



if (flash_alpha > 0)
{
	
shader_set(shader_hit);

draw_sprite_ext(sprite_index,image_index,x ,y , image_xscale, image_yscale,image_angle,flash_blend,flash_alpha);
	
	
	shader_reset();
	
}






