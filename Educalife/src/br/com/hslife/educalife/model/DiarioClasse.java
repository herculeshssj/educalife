package br.com.hslife.educalife.model;

import java.util.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

//@Entity
@Table(name="diario_classe")
@Tab(properties = "inscricaoTurma.numeroInscricao, inscricaoTurma.pessoaFisica.nome, inscricaoTurma.turma.nomeTurma")
public class DiarioClasse extends Identifiable {

	@ManyToOne
	@JoinColumn(name="id_inscricao_turma", nullable = false)
	@ReferenceView(value = "view_in_historico")
	@NoCreate @NoModify
	private InscricaoTurma inscricaoTurma;
	
	@ElementCollection
	@ListProperties("aula, aula.dataAula, compareceu")
	Collection<Frequencia> frequencia;

	public InscricaoTurma getInscricaoTurma() {
		return inscricaoTurma;
	}

	public void setInscricaoTurma(InscricaoTurma inscricaoTurma) {
		this.inscricaoTurma = inscricaoTurma;
	}

	public Collection<Frequencia> getFrequencia() {
		return frequencia;
	}

	public void setFrequencia(Collection<Frequencia> frequencia) {
		this.frequencia = frequencia;
	}
}
