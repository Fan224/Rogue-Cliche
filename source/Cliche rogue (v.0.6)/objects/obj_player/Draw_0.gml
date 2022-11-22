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
time+=1;

if time > 15
for (var a=0; a < array_length (global.text); a++;)
{
draw_text(x+6,y-15,global.text[0,1]);
draw_text(x+6,y-30,global.text[1,1]);
time=0;
}




