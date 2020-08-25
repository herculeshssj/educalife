package br.com.hslife.educalife.model;

import java.time.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="colaborador")
@View(members = "matricula; cargo; dataAdmissao, dataDesligamento; equipe; pessoaFisica")
@View(name = "simples", members = "matricula; cargo; dataAdmissao, dataDesligamento; equipe; pessoaFisica")
@Tab(properties = "matricula, pessoaFisica.nome, cargo.denominacao, equipe.nomeEquipe, dataAdmissao")
public class Colaborador extends Identifiable {
	
	@Column(nullable = false)
	@Required
	private String matricula;
	
	@ManyToOne
	@JoinColumn(name="id_cargo", nullable = false)
	@Required
	@DescriptionsList(descriptionProperties = "codigoCbo, denominacao", order = "${denominacao} asc")
	@NoCreate @NoModify
	private Cargo cargo;
	
	@Column(name="data_admissao")
	@Required
	private LocalDate dataAdmissao;
	
	@Column(name="data_desligamento")
	private LocalDate dataDesligamento;
	
	@ManyToOne
	@JoinColumn(name="id_equipe", nullable = false)
	@DescriptionsList(descriptionProperties = "nomeEquipe, departamento.nomeDepartamento", order = "${nomeEquipe} asc")
	@NoCreate @NoModify
	private Equipe equipe;

	@ManyToOne
	@JoinColumn(name="id_pessoa_fisica", nullable = false)
	private PessoaFisica pessoaFisica;

	public PessoaFisica getPessoaFisica() {
		return pessoaFisica;
	}

	public void setPessoaFisica(PessoaFisica pessoaFisica) {
		this.pessoaFisica = pessoaFisica;
	}

	public String getMatricula() {
		return matricula;
	}

	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}

	public LocalDate getDataAdmissao() {
		return dataAdmissao;
	}

	public void setDataAdmissao(LocalDate dataAdmissao) {
		this.dataAdmissao = dataAdmissao;
	}

	public LocalDate getDataDesligamento() {
		return dataDesligamento;
	}

	public void setDataDesligamento(LocalDate dataDesligamento) {
		this.dataDesligamento = dataDesligamento;
	}

	public Cargo getCargo() {
		return cargo;
	}

	public void setCargo(Cargo cargo) {
		this.cargo = cargo;
	}

	public Equipe getEquipe() {
		return equipe;
	}

	public void setEquipe(Equipe equipe) {
		this.equipe = equipe;
	}
}