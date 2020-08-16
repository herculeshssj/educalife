package br.com.hslife.educalife.model;

import java.time.*;
import java.util.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

import br.com.hslife.educalife.enumeration.*;

//@Entity
@Table(name="inscricao_turma")
@View(members = "geral { aluno; "
		+ "turma; "
		+ "dataInscricao; "
		+ "motivoInscricao; "
		+ "statusInscricao }; "
		+ "frequencia { frequenciaAula } ;"
)
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
	@Stereotype("MEMO")
	private String motivoInscricao;
	
	@Enumerated(EnumType.STRING)
	@Column(name="status_inscricao", nullable = false)
	@Required
	private StatusInscricao statusInscricao;
	
	@OneToMany(mappedBy = "inscricaoTurma")
	private Collection<Frequencia> frequenciaAula;

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

	public Collection<Frequencia> getFrequenciaAula() {
		return frequenciaAula;
	}

	public void setFrequenciaAula(Collection<Frequencia> frequenciaAula) {
		this.frequenciaAula = frequenciaAula;
	}
}