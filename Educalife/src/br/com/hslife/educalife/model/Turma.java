package br.com.hslife.educalife.model;

import java.time.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

import br.com.hslife.educalife.enumeration.*;

@Entity
@Table(name="turma")
@View(members = "geral { nomeTurma; modalidadeTurma; dataInicio; dataFim; dataInicioInscricao; dataFimInscricao; statusTurma } "
		+ "curso { curso } "
		+ "local { localAula } "
)
@Tab(properties = "nomeTurma, curso.nomeCurso, modalidadeTurma, dataInicio, dataFim, statusTurma")
public class Turma extends Identifiable {
	
	@Column(name="nome_turma", nullable = false)
	@Required
	private String nomeTurma;
	
	@ManyToOne(optional = false)
	@JoinColumn(name="id_curso", nullable = false)
	@NoCreate @NoModify
	private Curso curso;
	
	@Enumerated(EnumType.STRING)
	@Column(name="modalidade_turma", nullable = false)
	@Required
	private ModalidadeTurma modalidadeTurma;
	
	@Column(name="data_inicio", nullable = false)
	private LocalDate dataInicio;
	
	@Column(name="data_fim", nullable = false)
	private LocalDate dataFim;
	
	@Column(name="data_inicio_inscricao", nullable = false)
	private LocalDate dataInicioInscricao;
	
	@Column(name="data_fim_inscricao", nullable = false)
	private LocalDate dataFimInscricao;
	
	@Enumerated(EnumType.STRING)
	@Column(name = "status_turma", nullable = false)
	@Required
	private StatusTurma statusTurma;
	
	@ManyToOne
	@JoinColumn(name="id_localidade", nullable = true)
	@NoCreate @NoModify
	private Localidade localAula;
	
	//@OneToMany(mappedBy = "turma")
	//private Collection<Aula> aulas;

	public StatusTurma getStatusTurma() {
		return statusTurma;
	}

	public void setStatusTurma(StatusTurma statusTurma) {
		this.statusTurma = statusTurma;
	}

	public String getNomeTurma() {
		return nomeTurma;
	}

	public void setNomeTurma(String nomeTurma) {
		this.nomeTurma = nomeTurma;
	}

	public Curso getCurso() {
		return curso;
	}

	public void setCurso(Curso curso) {
		this.curso = curso;
	}

	public LocalDate getDataInicio() {
		return dataInicio;
	}

	public void setDataInicio(LocalDate dataInicio) {
		this.dataInicio = dataInicio;
	}

	public LocalDate getDataFim() {
		return dataFim;
	}

	public void setDataFim(LocalDate dataFim) {
		this.dataFim = dataFim;
	}

	public LocalDate getDataInicioInscricao() {
		return dataInicioInscricao;
	}

	public void setDataInicioInscricao(LocalDate dataInicioInscricao) {
		this.dataInicioInscricao = dataInicioInscricao;
	}

	public LocalDate getDataFimInscricao() {
		return dataFimInscricao;
	}

	public void setDataFimInscricao(LocalDate dataFimInscricao) {
		this.dataFimInscricao = dataFimInscricao;
	}

	public ModalidadeTurma getModalidadeTurma() {
		return modalidadeTurma;
	}

	public void setModalidadeTurma(ModalidadeTurma modalidadeTurma) {
		this.modalidadeTurma = modalidadeTurma;
	}

	public Localidade getLocalAula() {
		return localAula;
	}

	public void setLocalAula(Localidade localAula) {
		this.localAula = localAula;
	}
}