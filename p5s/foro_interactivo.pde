Log log=new Log();
PFont font;
ReticulaRet reticulaRet;

public void reset(){
	log.info("parandosss desde javascript to process");
	
}
void setup(){
//	font=loadFont("Courier");
//textMode(SCREEN);	
//textFont(font, 180); 
	hint(DISABLE_OPENGL_2X_SMOOTH);
	colorMode(HSB, 100);
	background(80);
	size(800, 600);
	//smooth();
	
	 reticulaRet = new ReticulaRet("foros.xml",200, 80, width - 220, height-90);

	

}
void draw(){
	background(80);
	noStroke();
	reticulaRet.display();
	fill(10);	
	//textFont(font,102);
	log.info("mensajes:"+reticulaRet.mensajes.size(),100,100);
	log.info("usuarios:"+reticulaRet.usuarios.size(),100,120);
	
		
}

	public void mouseClicked() {
			reticulaRet.raton(mouseX, mouseY);
	
	}
public void keyPressed() {
		 if(keyCode==UP){
			log.debug("UP!");
			reticulaRet.selectUP();
		}else if(keyCode==DOWN){
			reticulaRet.selectDOWN();
			log.debug("DOWN");
		}else if(keyCode==LEFT){
			reticulaRet.selectLEFT();
			log.debug("LEFT");
		}else if(keyCode==RIGHT){
			reticulaRet.selectRIGHT();
			log.debug("RIGHT");
		}else if(key=='r'){
		
			log.info("RESET!");
			reticulaRet.reset();

			
		}
	}



