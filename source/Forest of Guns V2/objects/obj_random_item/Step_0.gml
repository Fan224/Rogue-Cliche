/// @description  

/// @description 
event_inherited();

//'obj_random_item' pasara a este objeto la 'ID' que haya obtenido,
//para generar el item.


//Recoge el Objeto (Normal)
if place_meeting(x,y,obj_player)
if shop_item = 0
if use = 1
{
// la ds_list items_list sirve para indicar al juego que objetos ya han Spawneado previamente.
ds_list_add(global.items_list, _item_id);

//Al tocar al jugador se ejecuta el efecto del objeto correspondiente = + - stats
scr_items_pick_up_effects();
}

//Obtienes el Objeto de la tienda, si puedes comprarlo
if place_meeting(x,y,obj_player)
if use = 1
if shop_item = 1
if global.coin >= value
{
//Compras el objeto, y resta el dinero
global.coin -= value;

ds_list_add(global.items_list, _item_id);

//Al tocar al jugador se ejecuta el efecto del objeto correspondiente = + - stats
scr_items_pick_up_effects();
}


//Temporizador para recoger un item
if use=0 {temp++};

if temp > room_speed * 1.5 {use = 1; temp=0;}




