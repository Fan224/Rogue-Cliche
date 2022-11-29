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
		
var doors1=0;
var doors2=0;
		
		if !position_meeting(genx-17,geny-240,obj_door)
		{with instance_create_depth(genx-17,geny-240,-1,obj_door){dir="up";doors1=id;}} //Puerta de salida
		geny -= 480;
		
		if (!position_meeting(genx,geny,obj_room)) and (!place_meeting(genx,geny,obj_room))
		if !position_meeting(genx,geny,obj_room_mark)
		{
		 if !position_meeting(genx-17,geny+210,obj_door)
		 {with instance_create_depth(genx-17,geny+210,-1,obj_door){dir="down";doors2=id;}} //puerta de entrada
		
		 rooms_generated++;
         with instance_create_layer(genx,geny,layer,obj_room)
		 {if (other.rooms_generated <= other.limit-1){color=0;}else{color=1;}
		 doors[1]=doors1;
		 doors[2]=doors2;
		 }
		
		}
		
		instance_create_depth(genx,geny,1,obj_room_mark);
        tt=1;
		doors1=0;
        doors2=0;
		}
		
		//Down / abajo
		if ranroom == 1 && down == false{
		up    = true;
		down  = false;
        left  = false;
        right = false;
		
	var doors1=0;
    var doors2=0;
	
		if !position_meeting(genx-17,geny+210,obj_door)
		{with instance_create_depth(genx-17,geny+210,-1,obj_door){dir="down";doors1=id;}} 
		geny += 480;
		
		if (!position_meeting(genx,geny,obj_room))  and (!place_meeting(genx,geny,obj_room)) 
		if !position_meeting(genx,geny,obj_room_mark)
		{
			
		if !position_meeting(genx-17,geny-240,obj_door)
		{with instance_create_depth(genx-17,geny-240,-1,obj_door){dir="up";doors2=id;}} //puerta de entrada
		rooms_generated++;
        with instance_create_layer(genx,geny,layer,obj_room)
		{if (other.rooms_generated <= other.limit-1){color=0;}else{color=1;}
		doors[1]=doors1;
		doors[2]=doors2;
		}  
		}
		
		instance_create_depth(genx,geny,1,obj_room_mark);
		tt=1;
		doors1=0;
        doors2=0;
		}
		
		//Right / Der
		if ranroom == 2 && right == false{
	    left  = true;
		right = false;
		up    = false;
		down  = false;
var doors1=0;
var doors2=0;
		
		if !position_meeting(genx+268,geny-17,obj_door)
		{with instance_create_depth(genx+268,geny-17,-1,obj_door){dir="right";doors1=id;}} 
		genx += 608;
		
		if (!position_meeting(genx,geny,obj_room)) and (!place_meeting(genx,geny,obj_room)) 
		if !position_meeting(genx,geny,obj_room_mark)
		{
			
		if !position_meeting(genx-300,geny-17,obj_door)
		{with instance_create_depth(genx-300,geny-17,-1,obj_door){dir="left";doors2=id;}}
        rooms_generated++;
        with instance_create_layer(genx,geny,layer,obj_room)
		{if (other.rooms_generated <= other.limit-1){color=0;}else{color=1;}		
		doors[1]=doors1;
		doors[2]=doors2;
		} 
		}
		
		instance_create_depth(genx,geny,1,obj_room_mark)
		tt=1;
		doors1=0;
		doors2=0;
		}
		
		//Left / Izq
		if ranroom == 3 && left == false{
		right = true;
	    left  = false;
		up    = false;
		down  = false;
		
var doors1=0;
var doors2=0;

	    if !position_meeting(genx-300,geny-17,obj_door)
		{with instance_create_depth(genx-300,geny-17,-1,obj_door){dir="left";doors1=id;}} 
		genx-= 608;
		
		if (!position_meeting(genx,geny,obj_room)) and (!place_meeting(genx,geny,obj_room)) 
		if!position_meeting(genx,geny,obj_room_mark)
		{
			
		if !position_meeting(genx+268,geny-17,obj_door)
		{with instance_create_depth(genx+268,geny-17,-1,obj_door){dir="right";doors2=id;}}
		rooms_generated++;
        with instance_create_layer(genx,geny,layer,obj_room)
		{if (other.rooms_generated <= other.limit-1){color=0;}else{color=1;}
		doors[1]=doors1;
		doors[2]=doors2;
		} 
		
		}

		instance_create_depth(genx,geny,1,obj_room_mark);
		tt=1;
		doors1=0;
        doors2=0;
		}
		

	
	}	
	
		
	
}








