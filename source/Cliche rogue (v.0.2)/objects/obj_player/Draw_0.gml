/// @description 
draw_self();

var room_copy_entity  = layer_get_all_elements("Entidades");
var room_copy_wall    = layer_get_all_elements("Bloques");
var room_copy_objects = layer_get_all_elements("Objetos");



for (var i = 0; i < array_length(room_copy_entity); i++;)
{

var layer_ = layer_instance_get_instance(room_copy_entity[i]);
//var _id = (asset_get_index(_id_true));
var _inst = object_get_name(layer_ );
}

//draw_text(x,y-7,"ID:"+string(_inst)

//Sombra
draw_sprite(spr_shadow,0,x,y-1);