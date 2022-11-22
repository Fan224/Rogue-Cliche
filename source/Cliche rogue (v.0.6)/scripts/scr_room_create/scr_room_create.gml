
function scr_room_create(){

var room_num = 1; //Te dice a que cuarto o zona correspondè la copiada

var room_assigned = room_num;

var room_x = x;
var room_y = y;


NestedArray = global.saved_rooms[room_assigned];

for (var i = 0; i < array_length(NestedArray[0]); i++;)
{

var _x     = NestedArray[i,1];
var _y     = NestedArray[i,2];
var _layer = NestedArray[i,3];
var _id    = NestedArray[i,4];

//Recrea las instancias del cuarto original
instance_create_layer(_x,_y,_layer,_id);
instance_create_layer(_x,_y,_layer,obj_npc);
}







}