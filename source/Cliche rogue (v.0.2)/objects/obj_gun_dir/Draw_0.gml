/// @description  


//Direccion
if instance_exists(obj_player)
{
dir=point_direction(obj_player.x,obj_player.y, mouse_x, mouse_y);
}

//Recoil / Tirada de arma
if act = 1 {
recoil_amount=7;
act=0;
}

gun_x = obj_player.x;
gun_y = obj_player.y;

recoil_amount = lerp(recoil_amount,0,0.2);
gun_x-= lengthdir_x(recoil_amount,dir);
gun_y-= lengthdir_y(recoil_amount,dir);



//Gun-1 (Pistol)

//Derecha
if dir < 90 or dir > 270
if instance_exists(obj_player)
{
obj_player.face=2;
draw_sprite_ext(spr_gun,0, gun_x, gun_y,image_xscale,image_yscale,dir,image_blend,image_alpha);
}


//Izquierda
if dir >= 90 and dir < 269
if instance_exists(obj_player)
{
obj_player.face=1;
draw_sprite_ext(spr_gun,1, gun_x, gun_y,image_xscale,image_yscale,dir,image_blend,image_alpha);
}








