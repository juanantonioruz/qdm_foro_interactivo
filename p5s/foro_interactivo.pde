Log log=new Log();
PFont font;
	

public void reset(){
	log.info("parandosss desde javascript to process");
	
	 ret=new Rectangulo(random(100), 100,100,100);
}

void setup(){
	font=loadFont("Courier New");
	colorMode(HSB, 100);
	background(100);
	size(400, 400);
	smooth();
	
	
	Rectangulo r1=new Rectangulo("r1");
	Rectangulo r2=new Rectangulo("r2");
	println(r1);
	println(r2);
	ArrayList cole=new ArrayList();
	cole.add(r2);
	cole.add(r1);
	println(cole.contains(r1));
	
	//loadEquipos();	
	//println("equipos size::: "+equipos.size());
	//ServicioLoadForosXML servicioLoadForos=new ServicioLoadForosXML();
	//comentarios=servicioLoadForos.loadComentarios(equipos);
	 ret=new Rectangulo(random(100), 100,100,100);

}
	Rectangulo ret;
void draw(){
	background(100);
	fill(10);	
	rect(ret.xo,ret.yo,ret.widtho,ret.heighto);
	
	// println("pintando");
}




