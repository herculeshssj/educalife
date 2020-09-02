package br.com.hslife.educalife.model;

import java.util.*;

import javax.persistence.*;

import org.hibernate.envers.*;
import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="papel_usuario")
//@Audited
public class PapelUsuario extends Identifiable {
	
	@Column(nullable = false)
	@Required
	private String nome;
	
	@Column(nullable = false)
	@Required
	private String descricao;
	
	@Override
	public boolean equals(Object other) {
		return ((PapelUsuario)other).getId().equals(this.getId()); 
	}
	
	@Override
	public int hashCode() {
		return Objects.hashCode(this.getId());
	}

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