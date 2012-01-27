class ServicioLoadEquiposXML {

	ArrayList procesaXML(String xmlFile){
		ArrayList equipos=new ArrayList();
	
		XMLElement xml = new XMLElement(this, "p5s/"+xmlFile);
		int numSites = xml.getChildCount();
		XMLElement[] kids = xml.getChildren();
		//println("numero de elementos en " + kids.length);
			for (XMLElement el : kids) {
				String nombre = el.getChild("nombre").getContent();
				int id = int(el.getChild("id").getContent());		
				Equipo equipo=new Equipo(id, nombre, nombre);
				equipos.add(equipo);
			}
		return equipos;
	}

 
}
