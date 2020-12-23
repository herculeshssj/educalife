package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.hibernate.envers.*;
import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="papel_usuario")
@Audited
public class PapelUsuario extends Identifiable {
	
	@Column(nullable = false)
	@Required
	private String nome;
	
	@Column(nullable = false, length = 100)
	@Required
	private String descricao;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
}