package br.com.hslife.educalife.model;

import java.math.*;
import java.util.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="folha_pagamento")
@View(members = "mes, ano; colaborador; detalheFolhaPagamento; remuneracao; desconto; liquido")
@Tab(properties = "mes, ano, colaborador.matricula, remuneracao, desconto, liquido")
public class FolhaPagamento extends Identifiable {

	@Column(nullable = false)
	@Required
	private int mes;
	
	@Column(nullable = false)
	@Required
	private int ano;
	
	@ManyToOne
	@JoinColumn(name="id_colaborador", nullable = false)
	@Required
	@ReferenceView(value = "simples")
	@NoCreate @NoModify
	private Colaborador colaborador;
	
	@ElementCollection
	@JoinTable(name="detalhe_folha_pagamento")
	@ListProperties("rubrica.codigo, rubrica.descricao, valor, observacao")
	private Collection<DetalheFolhaPagamento> detalheFolhaPagamento;
	
	@Stereotype("MONEY")
	public BigDecimal getRemuneracao() {
		return BigDecimal.ZERO;
	}
	
	@Stereotype("MONEY")
	public BigDecimal getDesconto() {
		return BigDecimal.ZERO;
	}
	
	@Stereotype("MONEY")
	public BigDecimal getLiquido() {
		return BigDecimal.ZERO;
	}

	public int getMes() {
		return mes;
	}

	public void setMes(int mes) {
		this.mes = mes;
	}

	public int getAno() {
		return ano;
	}

	public void setAno(int ano) {
		this.ano = ano;
	}

	public Colaborador getColaborador() {
		return colaborador;
	}

	public void setColaborador(Colaborador colaborador) {
		this.colaborador = colaborador;
	}

	public Collection<DetalheFolhaPagamento> getDetalheFolhaPagamento() {
		return detalheFolhaPagamento;
	}

	public void setDetalheFolhaPagamento(Collection<DetalheFolhaPagamento> detalheFolhaPagamento) {
		this.detalheFolhaPagamento = detalheFolhaPagamento;
	}
}
