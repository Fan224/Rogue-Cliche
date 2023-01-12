/// @description 
dir = point_direction(x,y,mouse_x,mouse_y);

// Movimiento & teclas

//Direcciòn del cursor
if global.hp > 0 
{dir = point_direction(x,y,mouse_x,mouse_y);}


//Configuraciòn de teclas, etc...
var key_up =    (keyboard_check(ord("W"))) or  (keyboard_check(vk_up));
var key_down =  (keyboard_check(ord("S"))) or (keyboard_check(vk_down));
var key_left =  (keyboard_check(ord("A"))) or (keyboard_check(vk_left));
var key_right = (keyboard_check(ord("D"))) or (keyboard_check(vk_right));


#region (Movimiento)
vspd = 0;
hspd = 0;


//Ajusta la velocidad del jugador
global.spd = global.base_spd + (global.additional_spd - global.decreasing_spd);
spd = global.spd;

//Controla si te puedes mover en ese momento, = 1 te detiene.
if global.move == false
{
spd=0;
}


//(Colisiones)
if (key_left)  hspd = -spd;
if (key_right) hspd =  spd;

if !place_free(x+hspd,y) {
  hspd = 0;
}

x += hspd;


if (key_up)   vspd = -spd;
if (key_down) vspd =  spd;

if !place_free(x,y+vspd) {
  vspd = 0;
}

y += vspd;


#endregion


#region (Disparo)

if global.gun[global.gun_select,3] = "semi-auto"
{
 if (mouse_check_button_released(mb_left))
 if shoot = 0
 {
 obj_gun_dir.act = 1;
 obj_camera.ter = 1;
 scr_gun_shooting();//Shoots the specific bullet
 shoot=1;
 }
}
else
{	
 if (mouse_check_button(mb_left))
 if shoot = 0
 {
 obj_gun_dir.act = 1;
 obj_camera.ter = 1;
 scr_gun_shooting();//Shoots the specific bullet
 shoot=1;
 }		 
}

#endregion


#region (Recarga)

//Indica el tiempo de recarga y lo ulpilica por los Fps del juego, 
//es decir que g.reload es segundos de recarga
global.reload = global.gun[global.gun_select,2] * game_get_speed(gamespeed_fps);
//Hace que el tiempo de recarga no pueda bajar de una cierta cantidad, por balancè.
global.reload = clamp(global.reload, 0.01 , 50);

//Si disparaste se recarga el arma actual
if shoot = 1
{
ts +=1;
}

if ts > global.reload
{
shoot = 0;
ts = 0;
}


#endregion


//Direccion del sprite
#region
if  (key_right) or (key_left) or (key_up) or (key_down)
{
if face==1 {sprite_index=(spr_player1_idle_left);}
if face==2 {sprite_index=(spr_player1_idle_right);}	
}

if !key_up 
if !key_down
if !key_left
if !key_right
{
if face==1 {sprite_index=(spr_player1_idle_left);}
if face==2 {sprite_index=(spr_player1_idle_right);}	
}

#endregion






