/// @description 


// Movimiento & teclas


//Direcciòn del cursor
if global.hp > 0 
{dir = point_direction(x,y,mouse_x,mouse_y);}


//Configuraciòn de teclas, etc...
var key_up =    (keyboard_check(ord("W"))) or  (keyboard_check(vk_up));
var key_down =  (keyboard_check(ord("S"))) or (keyboard_check(vk_down));
var key_left =  (keyboard_check(ord("A"))) or (keyboard_check(vk_left));
var key_right = (keyboard_check(ord("D"))) or (keyboard_check(vk_right));


#region Movimiento, spd = velocidad, global.spd = velocidad adicional.
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

//Colisiones
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

#region Disparo

if (mouse_check_button_released(mb_left))
if shoot=0
{
var _xx = x + lengthdir_x(20, dir);
var _yy = y + lengthdir_y(20, dir);


obj_gun_dir.act = 1;
instance_create_layer(_xx, _yy, layer, obj_bullet);
instance_create_layer(_xx, _yy, layer, obj_shooteffect); //Shoot particle

obj_camera.ter = 1;
shoot=1;
}

#endregion

#region//Recarga

//Hace que el tiempo de recarga no pueda bajar de una cierta cantidad, por balancè.
global.reload = clamp(global.reload, 2.0 , 20);


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
if  (key_right) or (key_left) or (key_up) or (key_down)
{
if face==1 {sprite_index=(spr_player_move_left);}
if face==2 {sprite_index=(spr_player_move_right);}
}

if !key_up 
if !key_down
if !key_left
if !key_right
{
if face==1 {sprite_index=(spr_player_idle_left);}
if face==2 {sprite_index=(spr_player_idle_right);}	
}








