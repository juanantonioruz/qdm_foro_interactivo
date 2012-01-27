	RectangleConTexto rectangleConTexto;
Log log=new Log();
ServicioLoadEquiposXML load=new ServicioLoadEquiposXML();
void setup() {
	size($(window).width(), $(window).height());
  smooth(); 
  		String mensaje = "lista de equipos lista de equiposlista de equiposlista de equiposlista de equiposlista de equipos";
		int anchoRectangle = 100;
		int altoRectangle = 100;
		float posXRectangle = 100;
		float posYRectangle = 100;
		
		List<Equipo> equipos=load.procesaXML("equipos_jeunes.xml");
		for(Equipo e:equipos){
		mensaje+=e.nombre+" ";
		}
	 rectangleConTexto = new RectangleConTexto( mensaje, posXRectangle, posYRectangle,anchoRectangle, altoRectangle);
	 
}

void draw() {
 	
		  background(255);
		
		fill(0);
		rectangleConTexto.display(true);
}
	int incremento = 5;

	public void keyPressed() {
		if (keyCode == BACKSPACE) {
		

		} else if (keyCode == UP) {
			log.debug("UP!");
			rectangleConTexto.ampliaAncho(incremento);
			rectangleConTexto.ampliaAlto(incremento);
		} else if (keyCode == DOWN) {
			log.debug("DOWN");
			rectangleConTexto.reduceAncho(incremento);
			rectangleConTexto.reduceAlto(incremento);

		} else if (keyCode == LEFT) {
			log.debug("LEFT");
		} else if (keyCode == RIGHT) {
			log.debug("RIGHT");

		}
	}
