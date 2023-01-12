// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_spells_list(){

	
//Guarda en una Array la ID de los objetos, la cual se puede randomizar para obtener un item al azar.
//Array [type, Item ID/num]	

//Array[0, ?],  ID de los items
//Array[1, ?], sprites de items



///Activos (0nombre,1sprite,2efecto)
spell[0,0]  = "red_barrels";
spell[1,0]  = spr_spell1;
spell[2,0]  = scr_spells_active(0);
spell[0,1]  = "red_barrels";
spell[1,1]  = spr_spell1;
spell[2,1]  = scr_spells_active(0);

 //Pasa toda la lista de objetos a _item.
global.spells = spell;

}

function scr_spells_active(argument0){


if argument0 = 0
{
instance_create_layer(x,y,layer,obj_heart);
}


}

