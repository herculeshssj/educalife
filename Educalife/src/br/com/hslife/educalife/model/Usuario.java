package br.com.hslife.educalife.model;

import java.util.*;

import javax.persistence.*;

import org.hibernate.envers.*;
import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="usuario")
@Audited
@Tab(properties = "login, ativo")
public class Usuario extends Identifiable {
	
	@Column(nullable = false)
	@Required
	private String login;
	
	@Column(nullable = false, length = 64)
	@Required
	@Stereotype("PASSWORD")
	private String senha;
	
	@Column(nullable = false)
	private boolean ativo;
	
	@ElementCollection
	@ListProperties("papelUsuario, papelUsuario.nome, papelUsuario.descricao")
	private Collection<Permissao> permissao;

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

	public Collection<Permissao> getPermissao() {
		return permissao;
	}

	public void setPermissao(Collection<Permissao> permissao) {
		this.permissao = permissao;
	}
}
