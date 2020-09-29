package br.com.hslife.educalife.model;

import java.math.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

import br.com.hslife.educalife.enumeration.*;

@Entity
@Table(name="historico_aluno")
@View(members = "notaFinal, frequenciaAula, situacaoFinalAluno; inscricaoTurma"
)
@Tab(properties = "inscricaoTurma.numeroInscricao, inscricaoTurma.pessoaFisica.nome, inscricaoTurma.turma.nomeTurma, notaFinal, frequenciaAula, situacaoFinalAluno")
public class HistoricoAluno extends Identifiable {

	@OneToOne
	@JoinColumn(name="id_inscricao_turma", nullable = false, unique = true)
	@ReferenceView(value = "view_in_historico")
	@Required
	@NoCreate @NoModify
	private InscricaoTurma inscricaoTurma;
	
	@Column(name="nota_final", nullable = false)
	@Required
	private BigDecimal notaFinal;
	
	@Column(name="frequencia_aula", nullable = false)
	@Required
	private BigDecimal frequenciaAula;
	
	@Enumerated(EnumType.STRING)
	@Column(name="situacao_final_aluno", nullable = false)
	@Required
	private SituacaoFinalAluno situacaoFinalAluno;

	public InscricaoTurma getInscricaoTurma() {
		return inscricaoTurma;
	}

	public void setInscricaoTurma(InscricaoTurma inscricaoTurma) {
		this.inscricaoTurma = inscricaoTurma;
	}

	public BigDecimal getNotaFinal() {
		return notaFinal;
	}

	public void setNotaFinal(BigDecimal notaFinal) {
		this.notaFinal = notaFinal;
	}

	public BigDecimal getFrequenciaAula() {
		return frequenciaAula;
	}

	public void setFrequenciaAula(BigDecimal frequenciaAula) {
		this.frequenciaAula = frequenciaAula;
	}

	public SituacaoFinalAluno getSituacaoFinalAluno() {
		return situacaoFinalAluno;
	}

	public void setSituacaoFinalAluno(SituacaoFinalAluno situacaoFinalAluno) {
		this.situacaoFinalAluno = situacaoFinalAluno;
	}
}
