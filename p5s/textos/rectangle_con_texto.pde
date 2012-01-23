class RectangleConTexto {
		private  String mensaje;

		private  float posXRectangle;

		private  float posYRectangle;

		private float anchoRectangle;

		private float altoRectangle;
		int margen = 10;

		int margenAlto = margen;
		int margenAncho = margen;
		float posYLetter;
		float posXLetter;

		public RectangleConTexto( String mensaje, float posXRectangle, float posYRectangle, int anchoRectangle,
				int altoRectangle) {
			this.mensaje = mensaje;
			this.posXRectangle = posXRectangle;
			this.posYRectangle = posYRectangle;
			this.anchoRectangle = anchoRectangle;
			this.altoRectangle = altoRectangle;
			posYLetter = posYRectangle;
			posXLetter = posXRectangle;
		}

		public RectangleConTexto(String texto) {
			mensaje = texto;
		}

		public void reduceAlto(int incremento) {
			altoRectangle -= incremento;
			
		}

		public void reduceAncho(int incremento) {
			anchoRectangle -= incremento;
			
		}

		public void ampliaAlto(int incremento) {
			altoRectangle += incremento;
			
		}

		public void ampliaAncho(int incremento) {
			anchoRectangle += incremento;
			
		}

		public void display(boolean contorno){
			if(contorno)
			rect(posXRectangle, posYRectangle, anchoRectangle, altoRectangle);
			float limite=altoRectangle;
			if(anchoRectangle<altoRectangle) limite=anchoRectangle;
			float size = map(limite, 0, 150, 7, 15);
			//textSize(size);
			//	textMode(SCREEN);
			
			float transparenciaDown = map(altoRectangle, 0, 150, 50, 100);
			log.debug(mensaje);
			text(mensaje, posXRectangle, posYRectangle, anchoRectangle, altoRectangle);
			if(size==1 ){
			for (int i = 0; i < mensaje.length(); i++) {
				char charAt = mensaje.charAt(i);
				float textWidtho = textWidth(charAt);
				fill(0, transparenciaDown);
				text(charAt, posXLetter + margenAncho-1, posYLetter + textAscent() + margenAlto-1);
				if ((posXLetter + textWidtho + margenAncho * 2) < (anchoRectangle + posXRectangle)) {
					posXLetter += textWidtho;
				} else {
					resetX();
					float incrementoAltura = textAscent() * 2;
					if ((posYLetter + margenAlto * 3 + incrementoAltura) < (altoRectangle + posYRectangle)) {
						posYLetter += incrementoAltura;
					} else {
						break;
					}
				}

				if (i == mensaje.length() - 1) {
					resetBoth();
				}
			}
			}
			resetBoth();
		}
		private void resetBoth() {
			resetX();
			resetY();
		}

		private void resetX() {
			posXLetter = posXRectangle;
		}

		private void resetY() {
			posYLetter = posYRectangle;
		}

		public void setMedidas(float _x, float _y, float widtho, float heighto) {
			posXRectangle = _x;
			posYRectangle = _y;
			anchoRectangle = widtho;
			altoRectangle = heighto;
			
		}
	}

