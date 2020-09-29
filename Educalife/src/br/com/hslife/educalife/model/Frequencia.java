package br.com.hslife.educalife.model;

import javax.persistence.*;

@Embeddable
public class Frequencia {
	
	@ManyToOne
	@JoinColumn(name="id_aula")
	private Aula aula;
	
	@Column
	private boolean compareceu;
	
	@Column
	private boolean abonado;
	
	@Column
	private String justificativa;

	public Aula getAula() {
		return aula;
	}

	public void setAula(Aula aula) {
		this.aula = aula;
	}

	public boolean isCompareceu() {
		return compareceu;
	}

	public void setCompareceu(boolean compareceu) {
		this.compareceu = compareceu;
	}

	public boolean isAbonado() {
		return abonado;
	}

	public void setAbonado(boolean abonado) {
		this.abonado = abonado;
	}

	public String getJustificativa() {
		return justificativa;
	}

	public void setJustificativa(String justificativa) {
		this.justificativa = justificativa;
	}
}