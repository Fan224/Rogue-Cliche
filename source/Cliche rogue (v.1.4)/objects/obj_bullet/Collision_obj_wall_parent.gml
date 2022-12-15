/// @description 
randomize();


	repeat(4)
	{	
	 with (instance_create_layer(x,y,layer,obj_particle))
	 {
	 sprite_index = spr_particle //Setea el sprite 
	 image_angle=random(360);
	 fric = 0.8; //Menos fric mas deslizamiento
	 motion_add(other.image_angle+random_range(-85,85), random_range(-4,-11))//La mueve! 
	 }	
	 instance_destroy();
	}

	

//Borra la lista
if shoot_type=3
{ds_list_destroy(hit_list);instance_destroy();}
