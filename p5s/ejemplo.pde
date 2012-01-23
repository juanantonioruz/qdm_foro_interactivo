/* @pjs font="Lucida.ttf"; */
void setup() {
  size(800, 200);
  smooth(); 
  strokeWeight(10.0);
  stroke(0, 100);
 	PFont lucida=createFont("Lucida.ttf",132);
	textFont(lucida);
String[] fontList = PFont.list();
println(fontList);
}

void draw() {
  background(226);
  String t="welcome!";
  fill(0);
  println("por aca");
	text(t, 100, 100);
}
