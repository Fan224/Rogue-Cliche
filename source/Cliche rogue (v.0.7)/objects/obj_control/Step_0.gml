/// @description Controla ciertos parametros

//Setea el tamaño de la GUI / Display
display_set_gui_size( display_get_width() / 4 + camera_get_view_width(view_camera[0]) / 4, 
display_get_height() /  4 + camera_get_view_height(view_camera[0]) / 4);

global.hp = clamp(global.hp,0,global.maxhp);


if keyboard_check_pressed(ord("Z")){

if file_exists("save.fl")
{	
game_load("save.fl");
}
else
{
//room_goto(menu_room)
}


}

