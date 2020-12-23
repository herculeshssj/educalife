package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.hibernate.envers.*;
import org.openxava.annotations.*;
import org.openxava.model.*;
import org.openxava.util.Users;

@Entity
@Table(name="cargo")
@Audited
public class Cargo extends Identifiable {

	@Column(name="codigo_cbo", nullable = false)
	@Required
	private String codigoCbo;
	
	@Column(nullable = false)
	@Required
	private String denominacao;
	
	@Column
	private boolean ativo;

	@PreCreate
	public void antesDeCriar() {
		if (Users.getCurrent() != null) 
			System.out.println("*** Método executado antes de criar a entidade ***");
	}

	@PrePersist
	public void antesDePersistir() {
		if (Users.getCurrent() != null) 
			System.out.println("*** Método executado antes de persistir a entidade ***");
	}

	@PreUpdate
	public void antesDeAtualizar() {
		if (Users.getCurrent() != null) 
			System.out.println("*** Método executado antes de atualizar a entidade ***");
	}

	@PreDelete
	public void antesDeExcluir() {
		if (Users.getCurrent() != null) 
			System.out.println("*** Método executado antes de excluir a entidade ***");
	}

	@PreRemove
	public void antesDeRemover() {
		if (Users.getCurrent() != null) 
			System.out.println("*** Método executado antes de remover a entidade ***");
	}
	
	public String getCodigoCbo() {
		return codigoCbo;
	}

	public void setCodigoCbo(String codigoCbo) {
		this.codigoCbo = codigoCbo;
	}

	public String getDenominacao() {
		return denominacao;
	}

	public void setDenominacao(String denominacao) {
		this.denominacao = denominacao;
	}

	public boolean isAtivo() {
		return ativo;
	}

	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}
}
