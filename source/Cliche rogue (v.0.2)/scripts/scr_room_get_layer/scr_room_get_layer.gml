function scr_room_get_layer() {

//Nùmero del cuarto copiado
//room_num = 1; <- esta en el create event del room

// Order > room_num / x / y / layer / obj_type 

//Asigna un nombre a los layers que va a copiar
var room_copy_entity  = layer_get_all_elements("Entidades");
var room_copy_wall    = layer_get_all_elements("Bloques");
var room_copy_objects = layer_get_all_elements("Objetos");



//ENTIDADES
for (var i = 0; i < array_length(room_copy_entity); i++;)
{

var _id_true = object_get_name(room_copy_entity[i]);
var _id = (asset_get_index(_id_true));
var _x = (_id.x);
var _y = (_id.y);
var _layer = (_id.layer);

//guarda en la array los datos
global.saved_rooms[i,0]=room_num;
global.saved_rooms[i,1]=_x;
global.saved_rooms[i,2]=_y;
global.saved_rooms[i,3]=_layer;
global.saved_rooms[i,4]=_id;


}


//BLOQUES / PAREDES
for (var j = 0; j < array_length(room_copy_wall); j++;)
{

var _id = object_get_name(room_copy_wall[j]);
var _id_true = (room_copy_wall[j]);
var _x = (_id.x);
var _y = (_id.y);
var _layer = (_id.layer);

//guarda en la array los datos
global.saved_rooms[j,0]=room_num;
global.saved_rooms[j,1]=_x;
global.saved_rooms[j,2]=_y;
global.saved_rooms[j,3]=_layer;
global.saved_rooms[j,4]=_id;

}


//OBJETOS
for (var a = 0; a < array_length(room_copy_objects); a++;)
{

var _id = object_get_name(room_copy_objects[a]);
var _id_true = (room_copy_objects[a]);
var _x = (_id.x);
var _y = (_id.y);
var _layer = (_id.layer);

//guarda en la array los datos
global.saved_rooms[a,0]=room_num;
global.saved_rooms[a,1]=_x;
global.saved_rooms[a,2]=_y;
global.saved_rooms[a,3]=_layer;
global.saved_rooms[a,4]=_id;
}


}




