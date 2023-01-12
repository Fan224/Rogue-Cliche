/// @description  Dibuja el Texto 

//Alpha
draw_set_alpha(text_alpha);
//Font
draw_set_font(Font1);
draw_set_color(c_white);

//Text_Box / Caja de texto
draw_sprite_ext(spr_textbox,0, +4, +camera_get_view_height(0) / 3, 1 +camera_get_view_width(0) / 14, 1, 0, -1, text_alpha);

//Velocidad del Texto
if char < string_length(text[page])  {
	char +=0.4; //Speed
}

//Char. no puede superar la cantidad maxima de texto por conversación.
char = clamp(char, 0, string_length(text[page]));

//Copia pedazos del texto 
textpart  = string_copy(text[page], 1 , char);


#region Dibuja el Texto de la conversación y su color respectivo

//Character Name draw
draw_set_color(name_color[page]); //character name color
draw_text( +4, +camera_get_view_height(0) / 5 - 20 + string_h, name[page]); //character name


//Draws and copies the Text, and separates the strings of it.
draw_set_color(c_white);
draw_text_ext( +7, +camera_get_view_height(0) / 4 + string_h, textpart, -7, box_width);

//Pone el alpha a la normalidad
draw_set_alpha(1);
#endregion







