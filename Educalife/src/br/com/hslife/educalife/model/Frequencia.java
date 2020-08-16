package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.openxava.model.*;

@Entity
@Table(name="frequencia")
public class Frequencia extends Identifiable {

	@ManyToOne
	@JoinColumn(name="id_inscricao_turma")
	private InscricaoTurma inscricaoTurma;
	
	@ManyToOne
	@JoinColumn(name="id_aula")
	private Aula aula;
	
	@Column
	private boolean compareceu;

	public InscricaoTurma getInscricaoTurma() {
		return inscricaoTurma;
	}

	public void setInscricaoTurma(InscricaoTurma inscricaoTurma) {
		this.inscricaoTurma = inscricaoTurma;
	}

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