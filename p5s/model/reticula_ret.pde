class ReticulaRet {
	float x1;
	float y1;
	float ancho;
	float alto;
	public List<ComentarioForo> mensajes;
	public List<Usuario> usuarios;
	public List<ComentarioForo> comentariosOrdenadosFecha;
	
	public ReticulaRet(String xml, float x1, float y1, float ancho, float alto){
		this.x1 = x1;
		this.y1 = y1;
		this.ancho = ancho;
		this.alto = alto;
		loadComentariosXML(xml);
	}
	
	private void loadComentariosXML(String xml) {
		ServicioMensajes servicioMensajes = new ServicioMensajes(xml);
		usuarios = servicioMensajes.usuarios;
		mensajes = servicioMensajes.organizaMensajes;
		log.info("mensajessize:" + mensajes.size());
		log.info("usuarios:" + usuarios.size());
		comentariosOrdenadosFecha = servicioMensajes.getComentariosOrdenadosFecha();
	}

}
