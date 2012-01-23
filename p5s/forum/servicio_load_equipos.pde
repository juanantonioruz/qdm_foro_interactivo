class ServicioLoadEquipos {

	List<Equipo> equipos= new ArrayList<Equipo>();
	
	
	
	public List<ComentarioForo> loadXML(String xmlFile){
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
		ServicioLoadForosXML forosXMLLoad = new ServicioLoadForosXML();
		List<ComentarioForo> comentarios = forosXMLLoad.loadComentarios(equipos);
		//Collections.reverse(comentarios);
		List apoyo=new ArrayList();
		for(int j=comentarios.size()-1; j>=0; j--)
		apoyo.add(comentarios.get(j));
		return apoyo;
}
	
}