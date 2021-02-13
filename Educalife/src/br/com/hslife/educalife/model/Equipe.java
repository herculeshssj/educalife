package br.com.hslife.educalife.model;

import java.util.Collection;

import javax.persistence.*;

import org.hibernate.envers.Audited;
import org.openxava.annotations.*;
import org.openxava.model.Identifiable;

@Entity
@Table(name="equipe")
@Audited
@View(members = "sigla; nome; ativo; descricao; membrosEquipe")
@View(name = "view_in_turma", members = "sigla; nome; ativo; descricao; membrosEquipe")
public class Equipe extends Identifiable {
	
	@Column(nullable = false, length = 30)
	@Required
	private String sigla;

	@Column(nullable = false, length = 100)
	@Required
	private String nome;

	@Column(nullable = true)
	@Stereotype("MEMO")
	private String descricao;

	@Column
	private boolean ativo;

	@OneToMany(mappedBy = "equipe", orphanRemoval = true)
	@ElementCollection
	@ListProperties("pessoaFisica.nome, funcaoMembroEquipe.descricao, funcaoMembroEquipe.lideranca, afastado")
	@AsEmbedded
	Collection<MembroEquipe> membrosEquipe;

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Collection<MembroEquipe> getMembrosEquipe() {
		return membrosEquipe;
	}

	public void setMembrosEquipe(Collection<MembroEquipe> membrosEquipe) {
		this.membrosEquipe = membrosEquipe;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSigla() {
		return sigla;
	}

	public void setSigla(String sigla) {
		this.sigla = sigla;
	}

	public boolean isAtivo() {
		return ativo;
	}

	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}
}