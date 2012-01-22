Log log=new Log();
PFont font;
List equipos = new ArrayList();
	

public void reset(){
	log.info("parandosss desde javascript to process");
	
}
void setup(){
	font=loadFont("Courier New");
	colorMode(HSB, 100);
	background(100);
	size(400, 400);
	smooth();
	
	ReticulaRet reticulaRet = new ReticulaRet("foros.xml",200, 80, width - 220, height-90);
List<Rectangulo> rects;
	rects=new ArrayList<Rectangulo>();
	rects.add(new Rectangulo("ey1"));
	rects.add(new Rectangulo("ey2"));
	for(Rectangulo r:rects){
		println(r.nombre);
	}
	loadEquipos();	
	//println("equipos size::: "+equipos.size());
	//ServicioLoadForosXML servicioLoadForos=new ServicioLoadForosXML();
	//comentarios=servicioLoadForos.loadComentarios(equipos);
	 ret=new Rectangulo(random(100), 100,100,100);

}
void draw(){
	background(100);
	fill(10);	
	textFont(font,12);
	text("equipos:"+equipos.size(),100,100);
	
		
}





void loadEquipos(){
	equipos.add(new Equipo( 1, "bamako", "Niamakoro y Sicoro"));
	equipos.add(new Equipo( 2, "barcelona", "Casc Antic"));
	equipos.add(new Equipo( 3, "bogota", "Chapinero"));
	equipos.add(new Equipo( 4, "elalto",  "Santa Rosa"));
	equipos.add(new Equipo( 5, "evry",  "Pyramides"));
	equipos.add(new Equipo( 6, "montreuil","Bel-Pêche"));
	equipos.add(new Equipo( 7, "palma",  "Son Roca y Son Gotleu"));
	equipos.add(new Equipo( 8, "pikine", "Wakhinane"));
	equipos.add(new Equipo( 9, "rio",  "La Maré y Rio das Pedras"));
	equipos.add(new Equipo( 10, "sale", "Karyan El Oued"));
	ArrayList listaColoresEquipo = new ServicioToxiColor().iniciaColoresEquiposBis();
	for (int i = 0; i < equipos.size(); i++){
		equipos.get(i).setColor(listaColoresEquipo.get(i));
	}
		

}
