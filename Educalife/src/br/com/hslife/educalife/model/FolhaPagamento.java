package br.com.hslife.educalife.model;

import java.math.*;

import javax.persistence.*;

import org.hibernate.envers.*;
import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="folha_pagamento")
@Audited
@View(members = "mes, ano; valor; observacao; rubrica; colaborador")
@Tab(properties = "mes, ano, colaborador.matricula, rubrica.codigo, valor")
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
	
	@ManyToOne
	@JoinColumn(name="id_rubrica", nullable = false)
	@Required
	@ReferenceView(value="simples")
	@NoCreate @NoModify
	private Rubrica rubrica;
	
	@Stereotype("MONEY")
	@Required
	private BigDecimal valor;
	
	@Column(nullable = true)
	private String observacao;

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

	public Rubrica getRubrica() {
		return rubrica;
	}

	public void setRubrica(Rubrica rubrica) {
		this.rubrica = rubrica;
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
