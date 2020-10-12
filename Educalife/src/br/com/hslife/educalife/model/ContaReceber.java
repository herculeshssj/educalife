package br.com.hslife.educalife.model;

import java.time.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="conta_receber")
public class ContaReceber extends Identifiable {
	
	@Column(name="numero_cobranca", nullable = false)
	@Required
	private String numeroCobranca;
	
	@Column(name="data_abertura", nullable = false)
	@Required
	private LocalDate dataAbertura;
	
	@Column(name="data_envio")
	private LocalDate dataEnvio;
	
	@ManyToOne
	@JoinColumn(name="id_conta_recebimento", nullable = false)
	@Required
	@DescriptionsList(descriptionProperties = "descricao")
	@NoCreate @NoModify
	private Conta contaRecebimento;
	
	@Column
	private boolean ativo;
	
	@ManyToOne
	@JoinColumn(name="id_cliente", nullable = false)
	private PessoaFisica cliente;
	
	@ManyToOne
	@JoinColumn(name="id_forma_pagamento")
	private FormaPagamento formaPagamento;
	
	@Column(nullable = true)
	@Stereotype("MEMO")
	private String observacao;
	
	@Stereotype("FILE")
	@Column(length=32)
	private String anexo;

	public String getNumeroCobranca() {
		return numeroCobranca;
	}

	public void setNumeroCobranca(String numeroCobranca) {
		this.numeroCobranca = numeroCobranca;
	}

	public LocalDate getDataAbertura() {
		return dataAbertura;
	}

	public void setDataAbertura(LocalDate dataAbertura) {
		this.dataAbertura = dataAbertura;
	}

	public LocalDate getDataEnvio() {
		return dataEnvio;
	}

	public void setDataEnvio(LocalDate dataEnvio) {
		this.dataEnvio = dataEnvio;
	}

	public Conta getContaRecebimento() {
		return contaRecebimento;
	}

	public void setContaRecebimento(Conta contaRecebimento) {
		this.contaRecebimento = contaRecebimento;
	}

	public boolean isAtivo() {
		return ativo;
	}

	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}

	public PessoaFisica getCliente() {
		return cliente;
	}

	public void setCliente(PessoaFisica cliente) {
		this.cliente = cliente;
	}

	public FormaPagamento getFormaPagamento() {
		return formaPagamento;
	}

	public void setFormaPagamento(FormaPagamento formaPagamento) {
		this.formaPagamento = formaPagamento;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	public String getAnexo() {
		return anexo;
	}

	public void setAnexo(String anexo) {
		this.anexo = anexo;
	}
}