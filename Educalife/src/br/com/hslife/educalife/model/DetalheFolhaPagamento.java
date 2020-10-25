package br.com.hslife.educalife.model;

import java.math.*;

import javax.persistence.*;

import org.openxava.annotations.*;

@Embeddable
public class DetalheFolhaPagamento {

	@ManyToOne
	@JoinColumn(name="id_rubrica", nullable = false)
	@Required
	private Rubrica rubrica;
	
	@Stereotype("MONEY")
	@Required
	private BigDecimal valor;
	
	@Column(nullable = true)
	private String observacao;

	public BigDecimal getValor() {
		return valor;
	}

	public void setValor(BigDecimal valor) {
		this.valor = valor;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	public Rubrica getRubrica() {
		return rubrica;
	}

	public void setRubrica(Rubrica rubrica) {
		this.rubrica = rubrica;
	}
}