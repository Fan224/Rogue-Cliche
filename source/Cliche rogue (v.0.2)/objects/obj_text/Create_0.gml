//Variables del texto
text = "";
page = 0;
char = 0;
name = noone;
name_color = noone;
text_alpha = 0.05;
alpha_state = 1; //Indica si el alpha tiene que ser positivo o negativo
alpha_t=0;

box_width = sprite_get_width(spr_textbox)-4;
string_h = string_height(text);
creator = noone;

//Display de GUI
display_set_gui_size( display_get_width() / 4 + camera_get_view_width(view_camera[0]) / 4  
, display_get_height() /  4 + camera_get_view_height(view_camera[0]) / 4);




