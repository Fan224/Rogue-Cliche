/// @description Controla ciertos parametros

//Setea el tamaño de la GUI / Display
display_set_gui_size( display_get_width() / 4 + camera_get_view_width(view_camera[0]) / 4, 
display_get_height() /  4 + camera_get_view_height(view_camera[0]) / 4);

global.hp = clamp(global.hp,0,global.maxhp);


//LEVEL UP
if global.xp >= global.max_xp
{
global.xp=0;
global.max_xp+=35;
global.level+=1;
levelup=true;
}

global.ter_int=global.gun[global.gun_select,5];

