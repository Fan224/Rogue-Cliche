/// @description UI Draw
draw_set_font(Font1);


if levelup=true
{
	
//Ventana Negra
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(obj_camera.x-300,obj_camera.y-300,obj_camera.x+608,obj_camera.y+480,false);

if keyboard_check_pressed(vk_space){levelup = false;}
}

draw_set_color(c_white);
draw_set_alpha(1);



//Keys Icon
draw_sprite(spr_key_icon,0, display_get_width / 9, display_get_height  / 7);

//Keys number
draw_set_color(c_black);
draw_text(display_get_width  / 9, display_get_height / 9+1, ((string(global.key))));
draw_set_color(c_white);
draw_text(display_get_width  / 9+1,display_get_height / 9,  ((string(global.key))));


//MaxHP Bar
draw_sprite(spr_bar, image_index, display_get_width/ 10, display_get_height/11);

#region //Extended MaxHP bar (35 es el minimo de pixeles)

var dist = round((global.maxhp-35)/3); //el numero que divide determina cuantos PV/HP necesitas para aumentar la barra
    dist = clamp(dist,0,35); //Maximo aumento de vida (en pixeles) (Formula: cantidad minima, generalemnte el tamaño es la mitad de la barra / cantidad maxima de pixeles)

draw_sprite(spr_bar_extend, image_index, (display_get_width/10)+dist, display_get_height / 11);

#endregion

//Current HP Bar
draw_sprite_stretched(spr_hpbar,image_index, display_get_width/10, display_get_height/25,
(global.hp/global.maxhp) * 70 + dist,32);


//HP icon
// Mas del 50% de vida / if global.hp >= global.maxhp * 0.5
draw_sprite(spr_heart,0,display_get_width/12, display_get_height / 11);


//HP Number
draw_set_color(c_black);
draw_text(display_get_width/9, display_get_height / 11+1,string_hash_to_newline((string(global.hp))+"/"+(string(global.maxhp))));
draw_set_color(c_white);
draw_text(display_get_width/9, display_get_height / 11,string_hash_to_newline((string(global.hp))+"/"+(string(global.maxhp))));


//XP Bar
var xx = 0.75;
var yy = 15;


draw_sprite(spr_level_bar,0,display_get_width/xx, display_get_height / yy);

if global.xp >= global.max_xp * 0.05 {draw_sprite(spr_level_bar,1,display_get_width/xx, display_get_height / yy);}
if global.xp >= global.max_xp * 0.1  {draw_sprite(spr_level_bar,2,display_get_width/xx, display_get_height / yy);}
if global.xp >= global.max_xp * 0.15 {draw_sprite(spr_level_bar,3,display_get_width/xx, display_get_height / yy);}
if global.xp >= global.max_xp * 0.2  {draw_sprite(spr_level_bar,4,display_get_width/xx, display_get_height / yy);}
if global.xp >= global.max_xp * 0.3  {draw_sprite(spr_level_bar,5,display_get_width/xx, display_get_height / yy);}
if global.xp >= global.max_xp * 0.4  {draw_sprite(spr_level_bar,6,display_get_width/xx, display_get_height / yy);}
if global.xp >= global.max_xp * 0.5  {draw_sprite(spr_level_bar,7,display_get_width/xx, display_get_height / yy);}
if global.xp >= global.max_xp * 0.6  {draw_sprite(spr_level_bar,8,display_get_width/xx, display_get_height / yy);}
if global.xp >= global.max_xp * 0.7  {draw_sprite(spr_level_bar,9,display_get_width/xx, display_get_height / yy);}
if global.xp >= global.max_xp * 0.8  {draw_sprite(spr_level_bar,10,display_get_width/xx, display_get_height / yy);}
if global.xp >= global.max_xp * 0.85 {draw_sprite(spr_level_bar,11,display_get_width/xx, display_get_height / yy);}
if global.xp >= global.max_xp * 0.9  {draw_sprite(spr_level_bar,12,display_get_width/xx, display_get_height / yy);}
if global.xp >= global.max_xp * 0.95 {draw_sprite(spr_level_bar,13,display_get_width/xx, display_get_height / yy);}
if global.xp >= global.max_xp * 1.0  {draw_sprite(spr_level_bar,14,display_get_width/xx, display_get_height / yy);}

//Level number
draw_set_font(Font1);

draw_set_color(c_black);
draw_text(display_get_width/xx-3, display_get_height / yy+1 -5.5,(string(global.level)));
draw_set_color(c_white);
draw_text(display_get_width/xx-3, display_get_height / yy -5.5,(string(global.level)));