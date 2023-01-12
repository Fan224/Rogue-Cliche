/// @description  View_Control 
randomize();

#macro view view_camera[0]
camera_set_view_size(view, view_width, view_height);


if (instance_exists(obj_player)){

#region //Efecto de Terremoto

if ter == 0 
{
ter_x=0; ter_y=0;
} 
else 
{
var	ter_intensity = global.ter_int; //Intensidad del efecto (pixeles que mueve)
ter_t +=1;
ter_x = irandom_range(-ter_intensity,ter_intensity);
ter_y = irandom_range(-ter_intensity,ter_intensity);
}

if ter_t > 7 {ter=0; ter_t=0;}
#endregion

//Enfoca la camara en la mitad de la 'view', centrando al jugador y sin salir del "cuarto" actual.
//ademas se inclina ligeramente en la posicion del mouse
var _x = clamp(obj_player.x + ter_x - (view_width /2)-(obj_player.x - mouse_x)/4, x- ter_x, x+608 - view_width  + ter_x);
var _y = clamp(obj_player.y + ter_y - (view_height/2)-(obj_player.y - mouse_y)/4, y- ter_y, y+480 - view_height + ter_y);
	
var _cur_x = camera_get_view_x(view);
var _cur_y = camera_get_view_y(view);
var _spd = .2;

camera_set_view_pos(view, 
lerp(_cur_x, _x, _spd),
lerp(_cur_y, _y, _spd));

}



#region Camara del menu
if (instance_exists(obj_menu)){


var _x = clamp(obj_menu.x -  view_width/2, 0, room_width  - view_width);
var _y = clamp(obj_menu.y - view_height/2, 0, room_height - view_height);

	
var _cur_x = camera_get_view_x(view);
var _cur_y = camera_get_view_y(view);

var _spd = .4;

camera_set_view_pos(view, 
lerp(_cur_x, _x, _spd),
lerp(_cur_y, _y, _spd));
}

#endregion

