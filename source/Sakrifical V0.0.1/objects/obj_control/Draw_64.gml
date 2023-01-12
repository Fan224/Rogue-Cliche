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


//Spellbook draw
if book=1{
draw_sprite(spr_spellbook,0,display_get_width/1.5, display_get_height /3);

//Spell Slots
for (var i=0; i < array_length(global.spell_slot); i++;){
if global.spell_slot[i] = 0 {draw_sprite(spr_spell_slot,0,display_get_width/1.5, display_get_height /3)}
else{draw_sprite(global.spells[0,0],0,display_get_width/1.5, display_get_height /3);}
 }

}


//Current Gun draw

//Gun bar
draw_sprite(spr_gun_bar,0,display_get_width/0.75, display_get_height / 1.5);

if global.gun[global.gun_select,7] !=0 
{
//Gun Name Draw
draw_set_alpha(draw_alp);
draw_text(display_get_width/0.80, display_get_height / 1.8,string(global.gun[global.gun_select,7]));
draw_set_alpha(1);
}

//Gun draw
draw_sprite(global.gun[global.gun_select,1],0,display_get_width/0.77, display_get_height /1.5);



//Keys Icon
draw_sprite(spr_key_icon,0, display_get_width / 13, display_get_height  / 5.5);

//Keys number
draw_set_color(c_black);
draw_text(display_get_width  / 8.5, display_get_height / 5.9+1, ((string(global.key))));
draw_set_color(c_white);
draw_text(display_get_width  / 8.5+1,display_get_height / 5.9,  ((string(global.key))));


//Coins Icon
draw_sprite(spr_coin_icon,0, display_get_width / 5, display_get_height  / 5.5);

//Coins number
draw_set_color(c_black);
draw_text(display_get_width  / 5, display_get_height / 5.9+1, ((string(global.money))));
draw_set_color(c_white);
draw_text(display_get_width  / 5+1,display_get_height / 5.9,  ((string(global.money))));


 #region Hp Draw
 
//MaxHP Bar
draw_sprite(spr_bar, image_index, display_get_width/ 7.5, display_get_height/11);

#region //Extended MaxHP bar (35 es el minimo de pixeles)

var dist = round((global.maxhp-35)/3); //el numero que divide determina cuantos PV/HP necesitas para aumentar la barra
    dist = clamp(dist,0,35); //Maximo aumento de vida (en pixeles) (Formula: cantidad minima, generalemnte el tamaño es la mitad de la barra / cantidad maxima de pixeles)

draw_sprite(spr_bar_extend, image_index, (display_get_width/7.5)+dist, display_get_height / 11);
#endregion

//Current HP Bar
draw_sprite_stretched(spr_hpbar,image_index, display_get_width/7.5, display_get_height/25,
(global.hp/global.maxhp) * 70 + dist,32);


//HP icon
// Mas del 50% de vida / if global.hp >= global.maxhp * 0.5
draw_sprite(spr_heart,0,display_get_width/13.8, display_get_height / 12);

//HP Number
draw_set_color(c_black);
draw_text(display_get_width/5.4, display_get_height / 14+1,string_hash_to_newline((string(global.hp))+"/"+(string(global.maxhp))));
draw_set_color(c_white);
draw_text(display_get_width/5.4+1, display_get_height / 14,string_hash_to_newline((string(global.hp))+"/"+(string(global.maxhp))));
#endregion

