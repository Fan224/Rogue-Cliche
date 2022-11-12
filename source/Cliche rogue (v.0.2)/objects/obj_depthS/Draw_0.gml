//Cambiar tamaño del Grid
var grid = ds_depth;
var ins_num = instance_number(obj_parent_depth); //Ins_num = Numero de objetos / instancias
ds_grid_resize(grid,2,ins_num);

//Asing a cada objeto encontrado de 'obj_parent_depth' una posicion Y y se obtiene su ID
var  yy = 0; with (obj_parent_depth){
	grid [# 0,yy] = id;
	grid [# 1,yy] = y;

	yy++;
}

//Checkea la grid en un orden descendente ya que va desde el valor màs bajo (ej:Y0) > al màs alto(ej:Y150))
ds_grid_sort(grid,1,true);

//Draw instances
var inst;
yy = 0; repeat(ins_num){
	 
	//Sacar ID del Grid
	inst = grid[# 0,yy];
	//Hacer que el objeto se Dibuje asi mismo
	with (inst)
	{
     event_perform(ev_draw,0);	
	}
	
yy++;
}