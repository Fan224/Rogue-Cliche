// @description Iniciar Hablar / Conversacion

//Crear el cuador de Texto 
if (distance_to_object (obj_player) <= 30)
{
	


 if (mytextbox == noone)
 {
    //Hace que la caja y mensaje del texto esten por encima de otros objetos, para no ser tapados.
	//Al ponerlos en un layer.
	mytextbox = instance_create_layer(x,y,"text",obj_text);
	if text_option=1 {mytextbox.text = mytext;} else {mytextbox.text = mytext_2;}

	mytextbox.alpha_state = 1;
	mytextbox.creator = self;
	mytextbox.name = textname;
	mytextbox.name_color = textcolor;
	
	//global.move = 1;
 }	
 
 if (mytextbox != noone){mytextbox.alpha_state = 1;}	//Si salis y volves el texto se mantiene en pie

}
else
{

if (mytextbox != noone){mytextbox.alpha_state = 0;}

//Termina la conversacion (destruye el cuadro de obj_text)
if (mytextbox != noone)
and (mytextbox.text_alpha < 0.01)
{
alarm[0] = 1; 
instance_destroy(mytextbox);
}
	
}




