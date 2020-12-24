package br.com.hslife.educalife.model;

import java.util.*;

import javax.persistence.*;
import javax.validation.ValidationException;

import org.hibernate.envers.*;
import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="usuario")
@Audited
@Tab(properties = "login, pessoaFisica.nome, pessoaFisica.cpf, ativo")
public class Usuario extends Identifiable {
	
	@Column(nullable = false, unique = true)
	@Required
	@ReadOnly(onCreate = false)
	private String login;
	
	@Column(nullable = false, length = 64)
	@Required
	@Stereotype("PASSWORD")
	private String senha;
	
	@Column(nullable = false)
	private boolean ativo;

	@OneToOne
	@JoinColumn(name="id_pessoa_fisica", nullable = true)
	@ReferenceView(value = "view_simplificada")
	@NoCreate @NoModify
	private PessoaFisica pessoaFisica;
	
	@ManyToMany
	@ElementCollection
	@ListProperties("nome, descricao")
	@NoModify
	private Collection<PapelUsuario> permissao;

	@PreDelete
	public void antesDeExcluir() {
		// Não é possível excluir o usuário admin
		if (this.login.equalsIgnoreCase("admin"))
			throw new ValidationException("Não é possível excluir o usuário 'admin'!");
	}

	public PessoaFisica getPessoaFisica() {
		return pessoaFisica;
	}

	public void setPessoaFisica(PessoaFisica pessoaFisica) {
		this.pessoaFisica = pessoaFisica;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public boolean isAtivo() {
		return ativo;
	}

	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}

	public Collection<PapelUsuario> getPermissao() {
		return permissao;
	}

	public void setPermissao(Collection<PapelUsuario> permissao) {
		this.permissao = permissao;
	}
}
