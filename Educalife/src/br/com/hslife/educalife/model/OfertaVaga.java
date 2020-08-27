package br.com.hslife.educalife.model;

import javax.persistence.*;

import br.com.hslife.educalife.enumeration.*;

@Embeddable
public class OfertaVaga {

	@Column(name="numero_vaga")
	private int numeroVaga;
	
	@Enumerated(EnumType.STRING)
	@Column(name="publico_alvo")
	private PublicoAlvo publicoAlvo;

	public int getNumeroVaga() {
		return numeroVaga;
	}

	public void setNumeroVaga(int numeroVaga) {
		this.numeroVaga = numeroVaga;
	}

	public PublicoAlvo getPublicoAlvo() {
		return publicoAlvo;
	}

	public void setPublicoAlvo(PublicoAlvo publicoAlvo) {
		this.publicoAlvo = publicoAlvo;
	}
}
