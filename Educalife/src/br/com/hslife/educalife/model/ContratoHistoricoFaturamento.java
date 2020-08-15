package br.com.hslife.educalife.model;

import java.math.*;
import java.time.*;

import javax.persistence.*;

import org.openxava.annotations.*;

@Embeddable
public class ContratoHistoricoFaturamento {
	
	@Column(name="data_fatura")
	private LocalDate dataFatura;
	
	@Column
	@Stereotype("MONEY")
	private BigDecimal valor;

	public LocalDate getDataFatura() {
		return dataFatura;
	}

	public void setDataFatura(LocalDate dataFatura) {
		this.dataFatura = dataFatura;
	}

	public BigDecimal getValor() {
		return valor;
	}

	public void setValor(BigDecimal valor) {
		this.valor = valor;
	}
}
