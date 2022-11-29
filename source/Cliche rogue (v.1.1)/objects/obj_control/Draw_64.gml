/// @description 
draw_set_font(Font1);


//Keys Icon
draw_sprite(spr_key_icon,0, display_get_width / 8, display_get_height  / 8);

//Keys number
draw_set_color(c_black);
draw_text(display_get_width  / 8, display_get_height / 8 +1, ((string(global.key))));
draw_set_color(c_white);
draw_text(display_get_width  / 8+1,display_get_height / 8,  ((string(global.key))));





//MaxHP Bar
draw_sprite(spr_bar, image_index, display_get_width/ 9, display_get_height/9);

#region //Extended MaxHP bar (35 es el minimo de pixeles)

var dist = round((global.maxhp-35)/3); //el numero que divide determina cuantos PV/HP necesitas para aumentar la barra
    dist = clamp(dist,0,35); //Maximo aumento de vida (en pixeles) (Formula: cantidad minima, generalemnte el tamaño es la mitad de la barra / cantidad maxima de pixeles)

draw_sprite(spr_bar_extend, image_index, (display_get_width/9)+dist, display_get_height / 9);

#endregion

//Current HP Bar
draw_sprite_stretched(spr_hpbar,image_index, display_get_width/7, display_get_height/7,
(global.hp/global.maxhp) * 70 + dist,32);


//HP icon
// Mas del 50% de vida / if global.hp >= global.maxhp * 0.5
draw_sprite(spr_heart,0,display_get_width/11, display_get_height / 11);

//HP Number
draw_set_color(c_black);
draw_text(display_get_width/9, display_get_height / 9+1,string_hash_to_newline((string(global.hp))+"/"+(string(global.maxhp))));
draw_set_color(c_white);
draw_text(display_get_width/9, display_get_height / 9,string_hash_to_newline((string(global.hp))+"/"+(string(global.maxhp))));


