class ServicioMensajes {
	public List<ComentarioForo> organizaMensajes;
	public List<Usuario> usuarios=new ArrayList<Usuario>();

	public ServicioMensajes(String xmlFile) {
		organizaMensajes = organizaMensajes( xmlFile);
	}
	
	List<ComentarioForo> organizaMensajes( String xmlFile) {
		 comentarios = new ServicioLoadEquipos().loadXML( xmlFile);
		 for(ComentarioForo c:comentarios){
			 if(!usuarios.contains(c.usuario)){
				 usuarios.add(c.usuario);
			 }
		 }
		log.info("numero mensajes:" + comentarios.size());
		List<Usuario> usuariosParticipantes = dameUsuariosParticipantes(comentarios);
		log.info("usuarios:" + usuariosParticipantes.size());
		
		return relacionaParentChildrens(comentarios);
	}

 List<UsuarioEscale> dameUsuariosParticipantes(List<ComentarioForo> comentarios) {
		List<Usuario> usuarios = new ArrayList<Usuario>();
		for (ComentarioForo ce : comentarios) {
			Usuario usuarioEscale = ce.usuario;
			// TODO reimplementar en javascript el metodo equals...
			if (!usuarios.contains(usuarioEscale))
				usuarios.add(usuarioEscale);
		}
		return usuarios;
	}
	
	List<ComentarioForo> relacionaParentChildrens(List<ComentarioForo> comentarios) {
		List<ComentarioForo> padres = new ArrayList<ComentarioForo>();
		
		for(ComentarioForo c:comentarios){
			boolean encontrado=false;
			if(c.parent==0){
				// no tiene parent
				encontrado=true;
				padres.add(c);
				log.debug("padre encontrado: "+padres.size());

			}else if(!encontrado){
				//buscarParent
				for(ComentarioForo p:comentarios){
					if(p.id==c.parent){
						log.debug("relacionando:" + c+" padres size: "+padres.size());

						c.comentarioParent = p;
						p.children.add(c);
						encontrado=true;
						break;
					}
				}
			}
			if(encontrado){
				log.debug("celda relacionada:" + c+" padres size: "+padres.size());
				continue;

			}
		}

		return padres;
	}
	
	public List<ComentarioForo> getComentariosOrdenadosFecha(){
		//List<ComentarioForo> clona=new ArrayList<ComentarioForo>();
		//clona.addAll(comentarios);
		//Collections.sort(clona, new ComparatorFecha());
		//return clona;
		return comentarios;
	}
}