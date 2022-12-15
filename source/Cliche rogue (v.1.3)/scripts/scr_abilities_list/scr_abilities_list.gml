// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_abilities_list(){

	
//Guarda en una Array la ID de los objetos, la cual se puede randomizar para obtener un item al azar.
//Array [type, Item ID/num]	

//Array[0, ?],  ID de los items
//Array[1, ?], sprites de items





///Pasivos

items[0,0]  = "red_barrels";
items[1,0]  = spr_skill_(red_barrels);

 //Pasa toda la lista de objetos a _item.
_item = items;

}