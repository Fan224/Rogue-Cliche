function scr_room_get_layer() {


var room_num = 1;

// Order > room_num / x / y / layer / obj_type 

	
var room_copy_entity  = layer_get_all_elements("Entidades");
var room_copy_wall    = layer_get_all_elements("Bloques");
var room_copy_objects = layer_get_all_elements("Objetos");


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

for (var j = 0; j < array_length(room_copy_wall); j++;)
{

var _id = object_get_name(room_copy_entity[i]);
var _id_true = (room_copy_entity[i]);
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

for (var a = 0; a < array_length(room_copy_objects); a++;)
{

var _id = object_get_name(room_copy_entity[i]);
var _id_true = (room_copy_entity[i]);
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




