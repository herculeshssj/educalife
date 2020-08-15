package br.com.hslife.educalife.model;

import java.time.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

import br.com.hslife.educalife.enumeration.*;

@Entity
@Table(name="inscricao_turma")
public class InscricaoTurma extends Identifiable {
	
	@ManyToOne(optional = false)
	@JoinColumn(name="id_aluno", nullable = false)
	private PessoaFisica aluno;
	
	@ManyToOne(optional = false)
	@JoinColumn(name="id_turma", nullable = false)
	private Turma turma;
	
	@Column(name="data_inscricao", nullable = false)
	@Required
	private LocalDate dataInscricao;
	
	@Column(name="motivo_inscricao", nullable = false)
	@Required
	private String motivoInscricao;
	
	@Enumerated(EnumType.STRING)
	@Column(name="status_inscricao", nullable = false)
	@Required
	private StatusInscricao statusInscricao;

	public PessoaFisica getAluno() {
		return aluno;
	}

	public void setAluno(PessoaFisica aluno) {
		this.aluno = aluno;
	}

	public Turma getTurma() {
		return turma;
	}

	public void setTurma(Turma turma) {
		this.turma = turma;
	}

	public LocalDate getDataInscricao() {
		return dataInscricao;
	}

	public void setDataInscricao(LocalDate dataInscricao) {
		this.dataInscricao = dataInscricao;
	}

	public String getMotivoInscricao() {
		return motivoInscricao;
	}

	public void setMotivoInscricao(String motivoInscricao) {
		this.motivoInscricao = motivoInscricao;
	}

	public StatusInscricao getStatusInscricao() {
		return statusInscricao;
	}

	public void setStatusInscricao(StatusInscricao statusInscricao) {
		this.statusInscricao = statusInscricao;
	}
}