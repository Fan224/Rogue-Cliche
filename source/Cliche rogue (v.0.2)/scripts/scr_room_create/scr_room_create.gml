// Script assets have changed for v2.3.0 see

function scr_room_create(){

var room_num = 1; //Te dice a que cuarto o zona correspondè la copiada

var room_asigned = room_num;

var room_x = x;
var room_y = y;


//Recrea el cuarto elegido
for (var i = 0; i < array_length(global.saved_rooms); i++;)
{

if global.saved_rooms[i,0] == room_asigned
{
instance_create_layer(
global.saved_rooms[i,1],
global.saved_rooms[i,2],
global.saved_rooms[i,3],
global.saved_rooms[i,4]);
}


}
}