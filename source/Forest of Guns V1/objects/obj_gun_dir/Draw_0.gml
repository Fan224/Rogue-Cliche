/// @description  


y = clamp(y,y-2,y+2);

//Arriba
if dir < 190
if instance_exists(obj_player)
{
y=y-2;
}
//Abajo
if dir >= 190
if instance_exists(obj_player)
{
y=y+2;	
}





//Direccion del disparo
if instance_exists(obj_player)
{dir = point_direction(obj_player.x,obj_player.y, mouse_x, mouse_y);}


//Recoil / Empuje de arma
if act = 1 {
recoil_amount=7.5;
act=0;
}

gun_x = obj_player.x;
gun_y = obj_player.y;

recoil_amount = lerp(recoil_amount,0,0.1);
gun_x-= lengthdir_x(recoil_amount,dir);
gun_y-= lengthdir_y(recoil_amount,dir);



// [ranura del arma (1,2,3,),(ID del arma-0, sprite del arma-1, tiempo de recarga-2, tipo de bala-3)]


//Derecha
if dir < 90 or dir > 270
if instance_exists(obj_player)
{obj_player.face=2;
draw_sprite_ext(global.gun[global.gun_select,1],0, gun_x, gun_y+1,image_xscale,image_yscale,dir,image_blend,image_alpha);
}
//Izquierda
if dir >= 90 and dir <= 270
if instance_exists(obj_player)
{obj_player.face=1;
draw_sprite_ext(global.gun[global.gun_select,1],1, gun_x, gun_y+1,image_xscale,image_yscale,dir,image_blend,image_alpha);
}








