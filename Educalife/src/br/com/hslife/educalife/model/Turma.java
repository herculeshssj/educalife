package br.com.hslife.educalife.model;

import java.time.*;
import java.util.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

import br.com.hslife.educalife.enumeration.*;

@Entity
@Table(name="turma")
@View(members = "geral { nomeTurma; "
		+ "numeroVagasInterno, numeroVagasExterno; "
		+ "localAula; "
		+ "dataInicio, dataFim; "
		+ "dataInicioInscricao, dataFimInscricao; "
		+ "statusTurma }; "
		+ "curso { curso }; "
		+ "aulas { aulas }"
)
public class Turma extends Identifiable {
	
	@Column(name="nome_turma", nullable = false)
	@Required
	private String nomeTurma;
	
	@ManyToOne(optional = false)
	@JoinColumn(name="id_curso", nullable = false)
	private Curso curso;
	
	@Column(name="numero_vagas_interno")
	private int numeroVagasInterno;
	
	@Column(name="numero_vagas_externo")
	private int numeroVagasExterno;
	
	@Column(name="local_aula")
	private String localAula;
	
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
	
	@OneToMany(mappedBy = "turma")
	private Collection<Aula> aulas;

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

	public int getNumeroVagasInterno() {
		return numeroVagasInterno;
	}

	public void setNumeroVagasInterno(int numeroVagasInterno) {
		this.numeroVagasInterno = numeroVagasInterno;
	}

	public int getNumeroVagasExterno() {
		return numeroVagasExterno;
	}

	public void setNumeroVagasExterno(int numeroVagasExterno) {
		this.numeroVagasExterno = numeroVagasExterno;
	}

	public String getLocalAula() {
		return localAula;
	}

	public void setLocalAula(String localAula) {
		this.localAula = localAula;
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

	public Collection<Aula> getAulas() {
		return aulas;
	}

	public void setAulas(Collection<Aula> aulas) {
		this.aulas = aulas;
	}

}