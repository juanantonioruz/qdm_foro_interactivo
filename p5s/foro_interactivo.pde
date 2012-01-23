Log log=new Log();
PFont font;
ReticulaRet reticulaRet;

public void reset(){
	log.info("parandosss desde javascript to process");
	
}
void setup(){
	font=loadFont("Courier New");
	colorMode(HSB, 100);
	background(100);
	size(400, 400);
	smooth();
	
	 reticulaRet = new ReticulaRet("foros.xml",200, 80, width - 220, height-90);

	//loadEquipos();	
	//println("equipos size::: "+equipos.size());
	//ServicioLoadForosXML servicioLoadForos=new ServicioLoadForosXML();
	//comentarios=servicioLoadForos.loadComentarios(equipos);

}
void draw(){
	background(100);
	fill(10);	
	textFont(font,12);
	text("mensajes:"+reticulaRet.mensajes.size(),100,100);
	text("usuarios:"+reticulaRet.usuarios.size(),100,120);
	
		
}





