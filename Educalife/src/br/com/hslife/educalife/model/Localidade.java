package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.hibernate.envers.*;
import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name = "localidade")	
@Audited
public class Localidade extends Identifiable {

	@Column(nullable = false)
	@Required
	private String codigo;
	
	@Column(nullable = false)
	@Required
	private String descricao;
	
	@Column
	private boolean ativo;
	
	@ManyToOne
	@JoinColumn(name="id_unidade", nullable = false)
	@NoCreate @NoModify
	private Unidade unidade;
	
	@Column
	@Stereotype("MEMO")
	private String observacao;
	
	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Unidade getUnidade() {
		return unidade;
	}

	public void setUnidade(Unidade unidade) {
		this.unidade = unidade;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	public boolean isAtivo() {
		return ativo;
	}

	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}
}