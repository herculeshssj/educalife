package br.com.hslife.educalife.model;

import java.time.*;
import java.util.*;

import javax.persistence.*;

import org.hibernate.envers.*;
import org.openxava.annotations.*;
import org.openxava.model.*;

import br.com.hslife.educalife.enumeration.*;

@Entity
@Table(name="turma")
@Audited
@View(members = "geral { codigoTurma; nomeTurma; modalidadeTurma; dataInicio; dataFim; dataInicioInscricao; dataFimInscricao; statusTurma } "
		+ "curso { curso } "
		+ "local { localAula } "
		+ "equipe { equipe }"
		+ "vagas { ofertaVagas } "
		+ "aulas { aulas } "		
)
@View(name="view_in_avaliacao", members = "nomeTurma, "
		+ "modalidadeTurma, "
		+ "statusTurma"
)
@Tab(properties = "codigoTurma, nomeTurma, curso.nomeCurso, modalidadeTurma, dataInicio, dataFim, statusTurma")
public class Turma extends Identifiable {

	@Column(name="codigo_turma", length = 15, nullable = false)
	@Required
	private String codigoTurma;
	
	@Column(name="nome_turma", nullable = false)
	@Required
	private String nomeTurma;
	
	@ManyToOne(optional = false)
	@JoinColumn(name="id_curso", nullable = false)
	@ReferenceView(value = "view_in_turma")
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
	@SearchListCondition("${ministraAula} = true")
	private Localidade localAula;
	
	@ElementCollection
	@ListProperties("pessoaFisica, funcaoEquipe, ministraAula")
	private Collection<Equipe> equipe;
	
	@ElementCollection
	@ListProperties("numeroVaga, publicoAlvo")
	private Collection<OfertaVaga> ofertaVagas;
	
	@ElementCollection
	@ListProperties("dataAula, horarioInicio, horarioFim")
	@OneToMany(mappedBy = "turma", orphanRemoval = true, cascade = CascadeType.ALL)
	private Collection<Aula> aulas;

	public String getCodigoTurma() {
		return codigoTurma;
	}

	public void setCodigoTurma(String codigoTurma) {
		this.codigoTurma = codigoTurma;
	}

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

	public Collection<Equipe> getEquipe() {
		return equipe;
	}

	public void setEquipe(Collection<Equipe> equipe) {
		this.equipe = equipe;
	}

	public Collection<OfertaVaga> getOfertaVagas() {
		return ofertaVagas;
	}

	public void setOfertaVagas(Collection<OfertaVaga> ofertaVagas) {
		this.ofertaVagas = ofertaVagas;
	}

	public Collection<Aula> getAulas() {
		return aulas;
	}

	public void setAulas(Collection<Aula> aulas) {
		this.aulas = aulas;
	}
}