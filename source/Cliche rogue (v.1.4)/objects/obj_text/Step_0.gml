/// @description Pasa el texto a la siguiente 'Página'


//Indica el alpha (transparencia) del texto
text_alpha = clamp(text_alpha,0,1);
alpha_t+=1;
if alpha_state = 1 if alpha_t >= 3 {text_alpha+=0.05; alpha_t = 0;};
if alpha_state = 0 if alpha_t >= 3 {text_alpha-=0.05; alpha_t = 0;};


//Al presionar (Espacio) avanza o termina el texto dependiendo de las circunstancias
if (keyboard_check_pressed(vk_space)) {
	

//Avanza el texto / Si los caracteres actualmente mostrados son 
//-menores que el texto total, lo pone al maximo al instante.
if char < string_length(text[page])  
{
char = string_length(text[page]); //Pone el texto al maximo de caracteres
}
else

//Incrementa las 'paginas' para ir al Proximo 'dialogo' si ya estas al final del 'Texto', 
//solo si hay paginas faltantes por leer.
if (page +1 < array_length_1d(text))
{

 if char >= string_length(text[page]){
 page +=1;
 char = 0;
 }

}
else //Si no hay màs paginas que mostrar ejecuta esto
{
	
  //Si ya no detecta más 'paginas' en el 'texto', y los 'caracteres' llegaron al maximo, termina el 'dialogo'.
  if char  >= string_length(text[page])
  {
  global.move = 0; //Te volves a mover
  creator.alarm[0] = 1; 
  instance_destroy();
  }
 
 
 
}




}





