/// @description  



//Sombra del item
draw_sprite(spr_shadow,0,x,y+16);

if sprite_index != noone{
draw_sprite_ext(spr, image_index,x ,y +item_vspd ,image_xscale, image_yscale, 0,image_blend, image_alpha);
}

//Precio del 'Item' en la tienda
if instance_exists(obj_shopkeeper)
if shop_item = 1
{
draw_set_font(font0);

draw_set_color(c_black);
draw_text(x-4, y-8, "$"+(string(value)) )

if global.coin >= value
{draw_set_color(c_yellow);}else{draw_set_color(c_white);}
draw_text(x-3, y-9, "$"+(string(value)) )
}









