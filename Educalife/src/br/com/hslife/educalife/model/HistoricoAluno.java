package br.com.hslife.educalife.model;

import java.math.*;

import javax.persistence.*;

import org.openxava.model.*;

import br.com.hslife.educalife.enumeration.*;

@Entity
@Table(name="historico_aluno")
public class HistoricoAluno extends Identifiable {

	@OneToOne
	@JoinColumn(name="id_inscricao_turma")
	private InscricaoTurma inscricaoTurma;
	
	@Column(name="nota_final")
	private BigDecimal notaFinal;
	
	@Column(name="frequencia_aula")
	private BigDecimal frequenciaAula;
	
	@Enumerated(EnumType.STRING)
	@Column(name="situacao_final_aluno")
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
