/// @description 
draw_self();

var room_copy_entity  = layer_get_all_elements("Entidades");
var room_copy_wall    = layer_get_all_elements("Bloques");
var room_copy_objects = layer_get_all_elements("Objetos");

for (var i = 0; i < array_length(room_copy_entity); i++;)
{
var layerelement = room_copy_entity[i];

var _inst = layer_instance_get_instance(layerelement); //Convierte el 'ID de elemento' en una 'ID de instancia'
var _obj  = object_get_name(_inst.object_index);
var _id   = asset_get_index(_obj);

}

draw_set_color(c_blue);
//Sombra
draw_sprite(spr_shadow,0,x,y+2)




