package br.com.hslife.educalife.model;

import java.util.*;

import javax.persistence.*;

import org.hibernate.envers.*;
import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="unidade")
@Audited
@View(members = "geral { nomeUnidade;"
		+ "horarioFuncionamento ;"
		+ "empresa };"
		+ "endereco { endereco } ;"
		+ "contatos { contatos }")
@Tab(properties = "empresa.nomeEmpresa, nomeUnidade, horarioFuncionamento")
public class Unidade extends Identifiable {

	@Column(name="nome_unidade", nullable = false)
	@Required
	private String nomeUnidade;
	
	@Column(name="horario_funcionamento", nullable = true)
	private String horarioFuncionamento;
	
	@Embedded
	@ReferenceView(value = "endereco")
	private Endereco endereco;
	
	@ManyToMany
	@ElementCollection
	@ListProperties("tipoContato, descricao, observacao")
	private Collection<Contato> contatos;
	
	@ManyToOne
	@JoinColumn(name="id_empresa", nullable = false)
	@DescriptionsList(descriptionProperties = "pessoaJuridica.nomeFantasia")
	@NoCreate @NoModify
	private Empresa empresa;

	public String getNomeUnidade() {
		return nomeUnidade;
	}

	public void setNomeUnidade(String nomeUnidade) {
		this.nomeUnidade = nomeUnidade;
	}

	public String getHorarioFuncionamento() {
		return horarioFuncionamento;
	}

	public void setHorarioFuncionamento(String horarioFuncionamento) {
		this.horarioFuncionamento = horarioFuncionamento;
	}

	public Collection<Contato> getContatos() {
		return contatos;
	}

	public void setContatos(Collection<Contato> contatos) {
		this.contatos = contatos;
	}

	public Empresa getEmpresa() {
		return empresa;
	}

	public void setEmpresa(Empresa empresa) {
		this.empresa = empresa;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}
}