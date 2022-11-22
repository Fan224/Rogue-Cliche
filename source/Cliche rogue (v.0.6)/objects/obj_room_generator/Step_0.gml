randomize();

if (gen==true){
	
x=genx;
y=geny;
		

ranroom = irandom(3);
		
if tt==1 {t+=1; 
if t>1 {t=0; tt=0;}}	
if (rooms_generated >= limit)
{
gen = false;	
}
	

		
	if tt == 0
	{
		//UP / si arriba es falso puede generar un cuarto
		if ranroom == 0 && up == false{
		down  = true;
		up    = false;
        left  = false;
        right = false;
		
		if !position_meeting(genx,geny-120,obj_door_up){instance_create_depth(genx,geny-120,-1,obj_door_up);} 
		geny -= 480;
		
		if (!position_meeting(genx,geny,obj_room)) and (!place_meeting(genx,geny,obj_room))
		if !position_meeting(genx,geny,obj_room_mark)
		{
		rooms_generated++;
        with instance_create_depth(genx,geny,1,obj_room){if (other.rooms_generated <= other.limit-1){color=2;}else{color=1;}} 
		if !position_meeting(genx,geny+120,obj_door_down){instance_create_depth(genx,geny+120,-1,obj_door_down);} 
		instance_create_depth(genx+random_range(-50,50),geny+random_range(-50,50),1,obj_heart);
		}
				instance_create_depth(genx,geny,1,obj_room_mark);
          tt=1;
		}
		
		//Down / abajo
		if ranroom == 1 && down == false{
		up    = true;
		down  = false;
        left  = false;
        right = false;
	
		if !position_meeting(genx,geny+120,obj_door_down){instance_create_depth(genx,geny+120,-1,obj_door_down);} 
		geny += 480;
		
		if (!position_meeting(genx,geny,obj_room))  and (!place_meeting(genx,geny,obj_room)) 
		if !position_meeting(genx,geny,obj_room_mark)
		{
		rooms_generated++;
	    with instance_create_depth(genx,geny,1,obj_room){if (other.rooms_generated <= other.limit-1){color=2;}else{color=1;}}  
		instance_create_depth(genx+random_range(-50,50),geny+random_range(-50,50),1,obj_heart);
		if !position_meeting(genx,geny-120,obj_door_up){instance_create_depth(genx,geny-120,-1,obj_door_up);} 
		}
		
		instance_create_depth(genx,geny,1,obj_room_mark);
		tt=1;
		}
		
		//Right / Der
		if ranroom == 2 && right == false{
	    left  = true;
		right = false;
		up    = false;
		down  = false;
		
		if !position_meeting(genx+170,geny,obj_door_right){instance_create_depth(genx+170,geny,-1,obj_door_right);} 
		genx += 610;
		
		if (!position_meeting(genx,geny,obj_room)) and (!place_meeting(genx,geny,obj_room)) 
		if !position_meeting(genx,geny,obj_room_mark)
		{
        rooms_generated++;
        with instance_create_depth(genx,geny,1,obj_room){if (other.rooms_generated <= other.limit-1){color=2;}else{color=1;}} 
		instance_create_depth(genx+random_range(-50,50),geny+random_range(-50,50),1,obj_heart);
		if !position_meeting(genx-170,geny,obj_door_left){instance_create_depth(genx-170,geny,-1,obj_door_left);} 
		}
		
		instance_create_depth(genx,geny,1,obj_room_mark)
		tt=1;
		}
		
		//Left / Izq
		if ranroom == 3 && left == false{
		right = true;
	    left  = false;
		up    = false;
		down  = false;
		
	    if !position_meeting(genx-170,geny,obj_door_left){instance_create_depth(genx-170,geny,-1,obj_door_left);} 
		genx-= 610;
		
		if (!position_meeting(genx,geny,obj_room)) and (!place_meeting(genx,geny,obj_room)) 
		if !position_meeting(genx,geny,obj_room_mark)
		{
		rooms_generated++;
        with instance_create_depth(genx,geny,1,obj_room){if (other.rooms_generated <= other.limit-1){color=2;}else{color=1;}} 
		instance_create_depth(genx+random_range(-50,50),geny+random_range(-50,50),1,obj_heart);
		if !position_meeting(genx+170,geny,obj_door_right){instance_create_depth(genx+170,geny,-1,obj_door_right);} 
		}
		
		instance_create_depth(genx,geny,1,obj_room_mark);
		tt=1;
		}
		

	
	}	
	
		
	
}








