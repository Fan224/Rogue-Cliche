
function scr_room_create(){

var room_num = 1; //Te dice a que cuarto o zona correspondè la copiada

var room_assigned = room_num;

var room_x = x;
var room_y = y;


NestedArray1 = global.saved_rooms[room_assigned,1];
NestedArray2 = global.saved_rooms[room_assigned,2];
NestedArray3 = global.saved_rooms[room_assigned,3];


for (var i = 0; i < array_length(NestedArray1); i++;)
{

var _x1     = NestedArray1[i,1];
var _y1    = NestedArray1[i,2];
var _layer1 = NestedArray1[i,3];
var _id1    = NestedArray1[i,4];

//Recrea las instancias del cuarto original
instance_create_layer(_x1,_y1,_layer1,_id1);
}

for (var a = 0; a < array_length(NestedArray2); a++;)
{

var _x2     = NestedArray2[a,1];
var _y2     = NestedArray2[a,2];
var _layer2 = NestedArray2[a,3];
var _id2    = NestedArray2[a,4];

//Recrea las instancias del cuarto original
instance_create_layer(_x2,_y2,_layer2,_id2);
}


for (var e = 0; e < array_length(NestedArray3); e++;)
{

var _x3     = NestedArray3[e,1];
var _y3     = NestedArray3[e,2];
var _layer3 = NestedArray3[e,3];
var _id3    = NestedArray3[e,4];

//Recrea las instancias del cuarto original
instance_create_layer(_x3,_y3,_layer3,_id3);
}





}