package br.com.hslife.educalife.model;

import java.util.*;

import javax.persistence.*;

import org.hibernate.envers.*;
import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="pessoa_juridica")
@Audited
@View(members = "geral { razaoSocial; "
		+ "nomeFantasia; "
		+ "cnpj; } "
		+ "endereco { endereco } ;"
		+ "contatos { contatos };"
)
@Tab(properties = "nomeFantasia, cnpj")
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
	
	@Embedded
	@ReferenceView(value = "endereco")
	private Endereco endereco;
	
	@ManyToMany
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