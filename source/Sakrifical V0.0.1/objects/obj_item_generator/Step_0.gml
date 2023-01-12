/// @description  

//@description Random item selector
randomize();

//Selecciona un item de la lista de Id's
//Random1 = Tipo de item, Random2 = Items de la array.

random1 = irandom(1);

//Elige uno del 0 hasta el maximo de items
var random_num = (array_length(_item[random1])-1 ); 
random2 = irandom_range( 0, random_num);


//Sprite del item
if random1 = 0 {spr_num = 2} else {spr_num = 3}

//Pre-objeto (random item seleccionado)
item_prev = _item[random1,random2];


//Busca en la Ds_list 'items_list' si el objeto ya ha sido recogido, si es asì no lo genera.

search = ds_list_find_index(global.items_list, item_prev); //Busca el 'Item_ID' en la lista, si lo encuentra devuelve su pos.
duplicate = ds_list_find_value(global.items_list, search); //Devuelve el 'valor' dentro de la pos dada por 'Search'. 


// - Si no es un objeto duplicado, lo Genera -
if duplicate != item_prev
{
var item_result = item_prev;
var spr_result  = _item[spr_num,random2];

//item generation variables
with (instance_create_layer(x,y, layer, obj_items))
{	
_item_id = item_result;
spr      = spr_result;
}

instance_destroy();
}








