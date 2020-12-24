package br.com.hslife.educalife.model;

import javax.persistence.*;
import javax.validation.ValidationException;

import org.hibernate.envers.*;
import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="papel_usuario")
@Audited
public class PapelUsuario extends Identifiable {
	
	@Column(nullable = false, unique = true)
	@Required
	@ReadOnly(onCreate = false)
	private String nome;
	
	@Column(nullable = false, length = 100)
	@Required
	private String descricao;

	@PreDelete
	public void antesDeExcluir() {
		// Não é possível excluir o papel admin
		if (this.nome.equalsIgnoreCase("admin"))
			throw new ValidationException("Não é possível excluir o papel 'ADMIN'!");
	}

	public String getNome() {
		if (this.nome != null)
			return nome.toUpperCase();

		return nome;
	}

	public void setNome(String nome) {
		if (nome != null)
			nome = nome.toUpperCase();

		this.nome = nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
}