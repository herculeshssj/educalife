package br.com.hslife.educalife.model;

import java.time.*;
import java.util.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="pessoa_juridica")
@View(members = "geral { razaoSocial; "
		+ "nomeFantasia; "
		+ "cnpj; "
		+ "dataCriacao } "
		+ "endereco { endereco } ;"
		+ "contatos { contatos };"
)
@Tab(properties = "nomeFantasia, cnpj, dataCriacao")
public class PessoaJuridica extends Identifiable {
	
	@Column(name="razao_social", nullable = false)
	@Required
	private String razaoSocial;
	
	@Column(name="nome_fantasia", nullable = false)
	@Required
	private String nomeFantasia;
	
	@Column(name="cnpj", nullable = false)
	@Required
	private String cnpj;
	
	@Column(name="data_criacao", nullable = false)
	@Required
	private LocalDate dataCriacao;
	
	@Embedded
	@ReferenceView(value = "endereco")
	private Endereco endereco;
	
	@ElementCollection
	@ListProperties("tipoContato, descricao, observacao")
	private Collection<Contato> contatos;

	public String getRazaoSocial() {
		return razaoSocial;
	}

	public void setRazaoSocial(String razaoSocial) {
		this.razaoSocial = razaoSocial;
	}

	public String getNomeFantasia() {
		return nomeFantasia;
	}

	public void setNomeFantasia(String nomeFantasia) {
		this.nomeFantasia = nomeFantasia;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public LocalDate getDataCriacao() {
		return dataCriacao;
	}

	public void setDataCriacao(LocalDate dataCriacao) {
		this.dataCriacao = dataCriacao;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}

	public Collection<Contato> getContatos() {
		return contatos;
	}

	public void setContatos(Collection<Contato> contatos) {
		this.contatos = contatos;
	}	
}