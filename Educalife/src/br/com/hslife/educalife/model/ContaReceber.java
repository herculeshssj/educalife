package br.com.hslife.educalife.model;

import java.time.*;
import java.util.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="conta_receber")
@Tab(properties = "numeroCobranca, cliente.nome, dataAbertura, dataEnvio, dataVencimento, contaRecebimento.descricao, ativo, pago")
public class ContaReceber extends Identifiable {
	
	@Column(name="numero_cobranca", nullable = false)
	@Required
	private String numeroCobranca;
	
	@Column(name="data_abertura", nullable = false)
	@Required
	private LocalDate dataAbertura;
	
	@Column(name="data_envio")
	private LocalDate dataEnvio;
	
	@Column(name="data_vencimento")
	private LocalDate dataVencimento;
	
	@ManyToOne
	@JoinColumn(name="id_conta_recebimento", nullable = false)
	@Required
	@DescriptionsList(descriptionProperties = "descricao")
	@NoCreate @NoModify
	private Conta contaRecebimento;
	
	@ManyToOne
	@JoinColumn(name="id_forma_pagamento")
	@DescriptionsList(descriptionProperties = "descricao")
	@NoCreate @NoModify
	private FormaPagamento formaPagamento;
	
	@Column
	private boolean ativo;
	
	@Column
	private boolean pago;
	
	@Stereotype("FILE")
	@Column(length=32)
	private String anexo;
	
	@Column(nullable = true)
	@Stereotype("MEMO")
	private String observacao;
	
	@ManyToOne
	@JoinColumn(name="id_cliente", nullable = false)
	private PessoaFisica cliente;
	
	@ElementCollection
	@JoinTable(name = "detalhe_conta_receber")
	private Collection<DetalheContaReceber> detalheContaReceber;

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

	public Collection<DetalheContaReceber> getDetalheContaReceber() {
		return detalheContaReceber;
	}

	public void setDetalheContaReceber(Collection<DetalheContaReceber> detalheContaReceber) {
		this.detalheContaReceber = detalheContaReceber;
	}

	public LocalDate getDataVencimento() {
		return dataVencimento;
	}

	public void setDataVencimento(LocalDate dataVencimento) {
		this.dataVencimento = dataVencimento;
	}

	public boolean isPago() {
		return pago;
	}

	public void setPago(boolean pago) {
		this.pago = pago;
	}
}