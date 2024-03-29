function scr_room_get_layer() {

//'Nùmero del cuarto copiado'
//room_num <- esta en el create event del room

// Orden de guardado de datos > room_num / x / y / layer / ID 

//Asigna un nombre a los layers a copiar
var room_copy_entity  = layer_get_all_elements("Entidades");
var room_copy_wall    = layer_get_all_elements("Bloques");
var room_copy_objects = layer_get_all_elements("Objetos");


// ENTIDADES
for (var i = 0; i < array_length(room_copy_entity); i++;)
{
//Datos a copiar de las instancias
var layerelement = room_copy_entity[i];
var _inst  = layer_instance_get_instance(layerelement); //Convierte el 'ID de elemento' en una 'ID de instancia'
var _obj   = object_get_name(_inst.object_index);
var _id    = asset_get_index(_obj);
var _x     = _inst.x
var _y     = _inst.y;

//guarda en la array los datos de cada instancia copiada
rooms_data[i,0]=room_num;
rooms_data[i,1]=_x;
rooms_data[i,2]=_y;
rooms_data[i,3]="Entidades";
rooms_data[i,4]=_id;
}


// BLOQUES / 'Walls'
for (var o = 0; o < array_length(room_copy_wall); o++;)
{
//Datos a copiar de las instancias
var layerelement = room_copy_wall[o];
var _inst = layer_instance_get_instance(layerelement); //Convierte el 'ID de elemento' en una 'ID de instancia'
var _obj = object_get_name(_inst.object_index);
var _id = asset_get_index(_obj);
var _x = _inst.x
var _y = _inst.y;

//guarda en la array los datos de cada instancia copiada
rooms_data2[o,0]=room_num;
rooms_data2[o,1]=_x;
rooms_data2[o,2]=_y;
rooms_data2[o,3]="Bloques";
rooms_data2[o,4]=_id;
}


// OBJETOS
for (var a = 0; a < array_length(room_copy_objects); a++;)
{
//Datos a copiar de las instancias
var layerelement = room_copy_objects[a];
var _inst = layer_instance_get_instance(layerelement); //Convierte el 'ID de elemento' en una 'ID de instancia'
var _obj = object_get_name(_inst.object_index);
var _id = asset_get_index(_obj);
var _x = _inst.x
var _y = _inst.y;

//guarda en la array los datos de cada instancia copiada
rooms_data3[a,0]=room_num;
rooms_data3[a,1]=_x;
rooms_data3[a,2]=_y;
rooms_data3[a,3]="Objetos";
rooms_data3[a,4]=_id;
}

//Guarda los datos del cuarto
saved_rooms[room_num,1] = rooms_data; //Entity
saved_rooms[room_num,2] = rooms_data2; //Walls
saved_rooms[room_num,3] = rooms_data3; //Objects
global.saved_zones[Zone] = saved_rooms;
room_goto_next();
}
