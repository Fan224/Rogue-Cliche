
function scr_room_create(){

var zone = 1;
var room_num = 2 //Te dice a que cuarto correspondè la copiada

var room_assigned = room_num;

//Room X e Y indican las coordeanadas 0,0 del cuarto creado, osea arriba a la izquierda
var room_x = x-305;
var room_y = y-240;


Savedrooms = global.saved_zones[zone];

NestedArray1 = Savedrooms[room_assigned,1];
NestedArray2 = Savedrooms[room_assigned,2];
NestedArray3 = Savedrooms[room_assigned,3];


//Entidades
for (var i = 0; i < array_length(NestedArray1); i++;)
{

var _x1     = NestedArray1[i,1];
var _y1     = NestedArray1[i,2];
var _layer1 = NestedArray1[i,3];
var _id1    = NestedArray1[i,4];


//Recrea las instancias del cuarto original
instance_create_layer(_x1+room_x,_y1+room_y,_layer1,_id1)
}

//Bloques
for (var a = 0; a < array_length(NestedArray2); a++;)
{

var _x2     = NestedArray2[a,1];
var _y2     = NestedArray2[a,2];
var _layer2 = NestedArray2[a,3];
var _id2    = NestedArray2[a,4];

//Recrea las instancias del cuarto original
instance_create_layer(_x2+room_x,_y2+room_y,_layer2,_id2)


}

//Objetos
for (var e = 0; e < array_length(NestedArray3); e++;)
{

var _x3     = NestedArray3[e,1];
var _y3     = NestedArray3[e,2];
var _layer3 = NestedArray3[e,3];
var _id3    = NestedArray3[e,4];

//Recrea las instancias del cuarto original
instance_create_layer(_x3+room_x,_y3+room_y,_layer3,_id3)

}




//Le otorga a las puertas de entrada y vuelta una de los enemigos que estan asignados a ellas 

}