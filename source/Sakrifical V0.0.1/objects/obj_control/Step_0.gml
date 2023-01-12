/// @description Controla ciertos parametros

//Setea el tamaño de la GUI / Display
display_set_gui_size( display_get_width() / 4 + camera_get_view_width(view_camera[0]) / 4, 
display_get_height() /  4 + camera_get_view_height(view_camera[0]) / 4);

//Set Health
global.hp = clamp(global.hp,0,global.maxhp);
//Screenshake set
global.ter_int=global.gun[global.gun_select,5];

//LEVEL UP
if global.xp >= global.max_xp
{
global.xp=0;
global.max_xp+=35;
global.level+=1;
levelup=true;
}


//Open spellbook
if keyboard_check_pressed(vk_tab)
{  
if book=0 {book=1;}else{book=0;}	 
}

//Gun switching
global.gun_row = clamp (global.gun_row,0,global.gun_max_capacity+1);
if global.gun_row > global.gun_max_capacity{global.gun_row = 1;}
if global.gun_row < 1 {global.gun_row = global.gun_max_capacity;}

global.gun_select = global.guns_storage[global.gun_row];

//Empty weapon slot
if global.guns_storage[global.gun_row] == 0 
if arrow=2
{global.gun_row-=1; 
alpha_act=1;
draw_alp=1;}

if global.guns_storage[global.gun_row] == 0 
if arrow=1
{global.gun_row+=1; 
alpha_act=1;
draw_alp=1;}

//Mouse wheel
if mouse_wheel_down(){
global.gun_row+=1;
obj_gun_dir.eff=1;
obj_gun_dir.eff_img=0;
arrow=1;
alpha_act=1;
draw_alp=1;
at=0;
}

if mouse_wheel_up(){
global.gun_row-=1;
obj_gun_dir.eff=1;
obj_gun_dir.eff_img=0;
arrow=2;
alpha_act=1;
draw_alp=1;
at=0;
}



//Gun text Alpha
if alpha_act = 1
{
at+=1;
}

if at >= 60 {alarm[0]=1;}

if draw_alp <= 0.0 
if at >= 60
{
at=0;
alpha_act=0;	
}