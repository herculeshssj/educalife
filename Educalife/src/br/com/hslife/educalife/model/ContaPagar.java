package br.com.hslife.educalife.model;

import java.time.*;
import java.util.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="conta_pagar")
@Tab(properties = "numeroCobranca, fornecedor.razaoSocial, dataAbertura, dataEnvio, dataVencimento, contaPagamento.descricao, ativo, pago")
public class ContaPagar extends Identifiable {

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
	@JoinColumn(name="id_conta_pagamento", nullable = false)
	@Required
	@DescriptionsList(descriptionProperties = "descricao")
	@NoCreate @NoModify
	private Conta contaPagamento;
	
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
	@JoinColumn(name="id_fornecedor", nullable = false)
	private PessoaJuridica fornecedor;
	
	@ElementCollection
	@JoinTable(name = "detalhe_conta_pagar")
	private Collection<DetalheContaPagar> detalheContaPagar;

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

	public Conta getContaPagamento() {
		return contaPagamento;
	}

	public void setContaPagamento(Conta contaPagamento) {
		this.contaPagamento = contaPagamento;
	}

	public boolean isAtivo() {
		return ativo;
	}

	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}

	public PessoaJuridica getFornecedor() {
		return fornecedor;
	}

	public void setFornecedor(PessoaJuridica fornecedor) {
		this.fornecedor = fornecedor;
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

	public Collection<DetalheContaPagar> getDetalheContaPagar() {
		return detalheContaPagar;
	}

	public void setDetalheContaPagar(Collection<DetalheContaPagar> detalheContaPagar) {
		this.detalheContaPagar = detalheContaPagar;
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