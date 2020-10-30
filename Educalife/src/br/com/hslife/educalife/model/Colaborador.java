package br.com.hslife.educalife.model;

import java.time.*;
import java.util.*;

import javax.persistence.*;

import org.hibernate.envers.*;
import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="colaborador")
@Audited
@View(members = "geral { matricula; "
		+ "cargo; "
		+ "dataAdmissao, dataDesligamento; "
		+ "departamento; "
		+ "pessoaFisica }; "
		+ "contracheque {"
		+ "folhaPagamentos }")
@View(name = "simples", members = "matricula; cargo; dataAdmissao, dataDesligamento; departamento")
@Tab(properties = "matricula, pessoaFisica.nome, cargo.denominacao, departamento.nomeDepartamento, departamento.unidade.nomeUnidade, dataAdmissao")
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
	@JoinColumn(name="id_departamento", nullable = false)
	@DescriptionsList(descriptionProperties = "nomeDepartamento, unidade.nomeUnidade", order = "${nomeDepartamento} asc")
	@NoCreate @NoModify
	private Departamento departamento;

	@ManyToOne
	@JoinColumn(name="id_pessoa_fisica", nullable = false)
	private PessoaFisica pessoaFisica;
	
	@OneToMany(mappedBy = "colaborador")
	@ReadOnly
	@ListProperties("mes, ano, rubrica.tipoRubrica, rubrica.codigo, rubrica.descricao, valor, observacao")
	private Collection<FolhaPagamento> folhaPagamentos;

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

	public Departamento getDepartamento() {
		return departamento;
	}

	public void setDepartamento(Departamento departamento) {
		this.departamento = departamento;
	}

	public Collection<FolhaPagamento> getFolhaPagamentos() {
		return folhaPagamentos;
	}

	public void setFolhaPagamentos(Collection<FolhaPagamento> folhaPagamentos) {
		this.folhaPagamentos = folhaPagamentos;
	}
}