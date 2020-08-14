package br.com.hslife.educalife.model;

import javax.persistence.*;

import br.com.hslife.educalife.enumeration.*;

@Embeddable
public class Contato {

	@Enumerated(EnumType.STRING)
	@Column(name="tipo_contato")
	private TipoContato tipoContato;
	
	@Column(name="descricao")
	private String descricao;
	
	@Column(name="observacao")
	private String observacao;

	public TipoContato getTipoContato() {
		return tipoContato;
	}

	public void setTipoContato(TipoContato tipoContato) {
		this.tipoContato = tipoContato;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}
}
