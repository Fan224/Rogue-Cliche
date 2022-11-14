/// @description 
draw_self();

var room_copy_entity  = layer_get_all_elements("Entidades");
var room_copy_wall    = layer_get_all_elements("Bloques");
var room_copy_objects = layer_get_all_elements("Objetos");



for (var i = 0; i < array_length(room_copy_entity); i++;)
{


var layerelement = room_copy_entity[i];
var _id = layer_instance_get_instance(layerelement);
var _obj = object_get_name(_id);
var _inst = asset_get_index(_obj);



if _obj = "obj_player" {_inst2 = object_get_name(_id);
draw_text(x+3,y-12,"ID.2:"+string(_inst2))}

if _inst != -1 {instance_create_depth(x,y,1,_inst)}
draw_text(x+3,y-7,"ID.1:"+string(_inst));
draw_text(x+3,y-16,"ID.3:"+string(_id));
}



//Sombra
draw_sprite(spr_shadow,0,x,y-2);