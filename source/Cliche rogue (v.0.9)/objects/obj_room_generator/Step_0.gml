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
		
		if !position_meeting(genx-17,geny-240,obj_door)
		{with instance_create_depth(genx-17,geny-240,-1,obj_door){dir="up";}} //Puerta de salida
		geny -= 480;
		
		if (!position_meeting(genx,geny,obj_room)) and (!place_meeting(genx,geny,obj_room))
		if !position_meeting(genx,geny,obj_room_mark)
		{
		rooms_generated++;
        with instance_create_depth(genx,geny,1,obj_room)
		{if (other.rooms_generated <= other.limit-1){color=0;}else{color=1;}} 
		
		if !position_meeting(genx-17,geny+210,obj_door)
		{with instance_create_depth(genx-17,geny+210,-1,obj_door){dir="down";}} //puerta de entrada
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
	
		if !position_meeting(genx-17,geny+210,obj_door)
		{with instance_create_depth(genx-17,geny+210,-1,obj_door){dir="down";}} 
		geny += 480;
		
		if (!position_meeting(genx,geny,obj_room))  and (!place_meeting(genx,geny,obj_room)) 
		if !position_meeting(genx,geny,obj_room_mark)
		{
		rooms_generated++;
	    with instance_create_depth(genx,geny,1,obj_room){if (other.rooms_generated <= other.limit-1){color=0;}else{color=1;}}  

		if !position_meeting(genx-17,geny-240,obj_door)
		{
		with instance_create_depth(genx-17,geny-240,-1,obj_door){dir="up";}} //puerta de entrada
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
		
		if !position_meeting(genx+268,geny-17,obj_door)
		{with instance_create_depth(genx+268,geny-17,-1,obj_door){dir="right";}} 
		genx += 608;
		
		if (!position_meeting(genx,geny,obj_room)) and (!place_meeting(genx,geny,obj_room)) 
		if !position_meeting(genx,geny,obj_room_mark)
		{
        rooms_generated++;
        with instance_create_depth(genx,geny,1,obj_room){if (other.rooms_generated <= other.limit-1){color=0;}else{color=1;}} 

		if !position_meeting(genx-300,geny-17,obj_door)
		{
		with instance_create_depth(genx-300,geny-17,-1,obj_door){dir="left";}} 
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
		
	    if !position_meeting(genx-300,geny-17,obj_door)
		{with instance_create_depth(genx-300,geny-17,-1,obj_door){dir="left";}} 
		genx-= 608;
		
		if (!position_meeting(genx,geny,obj_room)) and (!place_meeting(genx,geny,obj_room)) 
		if !position_meeting(genx,geny,obj_room_mark)
		{
		rooms_generated++;
        with instance_create_depth(genx,geny,1,obj_room){if (other.rooms_generated <= other.limit-1){color=0;}else{color=1;}} 

		if !position_meeting(genx+268,geny-17,obj_door)
		{
		with instance_create_depth(genx+268,geny-17,-1,obj_door){dir="right";}} 
		}
		
		instance_create_depth(genx,geny,1,obj_room_mark);
		tt=1;
		}
		

	
	}	
	
		
	
}








