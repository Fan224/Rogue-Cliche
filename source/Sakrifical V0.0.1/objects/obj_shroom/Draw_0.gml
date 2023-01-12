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

draw_sprite_ext(sprite,image_index,x,y,face,image_yscale,0,-1,1);



if (flash_alpha > 0)
{
	
shader_set(shader_hit);

draw_sprite_ext(sprite_index,image_index,x ,y , face, image_yscale,image_angle,flash_blend,flash_alpha);
	
	
shader_reset();
}


//Sombra
draw_sprite(spr_shadow,0,x,y-4)


#region //arma del enemigo






//Recoil / Empuje de arma
if act_f = 1 {
recoil_amount=7.5;
act_f=0;
}

gun_x = x;
gun_y = y;

recoil_amount = lerp(recoil_amount,0,0.1);
gun_x-= lengthdir_x(recoil_amount,dir);
gun_y-= lengthdir_y(recoil_amount,dir);




//Derecha
if dir < 90 or dir > 270
if instance_exists(obj_player)
{face=1;
draw_sprite_ext(spr_pistol,0, gun_x, gun_y+1,image_xscale,image_yscale,dir,image_blend,image_alpha);
}
//Izquierda
if dir >= 90 and dir <= 270
if instance_exists(obj_player)
{face=-1;
draw_sprite_ext(spr_pistol,1, gun_x, gun_y+1,image_xscale,image_yscale,dir,image_blend,image_alpha);
}

#endregion