package br.com.hslife.educalife.model;

import java.math.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

@Embeddable
public class DetalheFolhaPagamento extends Identifiable {

	@ManyToOne
	@JoinColumn(name="id_codigo_contabil", nullable = false)
	@Required
	private CodigoContabil codigoContabil;
	
	@Stereotype("MONEY")
	@Required
	private BigDecimal valor;
	
	@Column(nullable = true)
	private String observacao;

	public CodigoContabil getCodigoContabil() {
		return codigoContabil;
	}

	public void setCodigoContabil(CodigoContabil codigoContabil) {
		this.codigoContabil = codigoContabil;
	}

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
}