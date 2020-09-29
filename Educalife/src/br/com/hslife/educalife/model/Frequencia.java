package br.com.hslife.educalife.model;

import javax.persistence.*;

@Embeddable
public class Frequencia {
	
	@ManyToOne
	@JoinColumn(name="id_aula")
	private Aula aula;
	
	@Column
	private boolean compareceu;

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
}