package br.com.hslife.educalife.model;

import java.math.*;
import java.time.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

import br.com.hslife.educalife.enumeration.*;

@Entity
@Table(name="conta")
@View(members = "banco; "
		+ "descricao, tipoConta; "
		+ "agencia, numeroConta; "
		+ "dataAbertura, dataFechamento; "
		+ "saldoInicial, saldoFinal;"
		+ "ativo;"
		+ "empresa"
)
@Tab(properties = "descricao, tipoConta, agencia, numeroConta, saldoAtual")
public class Conta extends Identifiable {
	
	@Column(nullable=false)
	@Required
	private String descricao;
	
	@Column
	@Required
	private String agencia;
	
	@Column(name="numero_conta")
	@Required
	private String numeroConta;
	
	@Column
	private boolean ativo;
	
	@Column(name="saldo_inicial")
	@Required
	private double saldoInicial;
	
	@Column(name="saldo_final")
	private double saldoFinal;
	
	@Column(name="data_abertura")
	@Required
	private LocalDate dataAbertura;
	
	@Column(name="data_fechamento")
	private LocalDate dataFechamento;
	
	@Column(name="tipo_conta", length=15)
	@Enumerated(EnumType.STRING)
	@Required
	private TipoConta tipoConta;
	
	@ManyToOne
	@JoinColumn(name="id_banco", nullable=false)
	@ReferenceView("view_in_conta")
	@Required
	@NoCreate @NoModify
	private Banco banco;
	
	@ManyToOne
	@JoinColumn(name="id_empresa", nullable = false)
	@ReferenceView("view_in_conta")
	@Required
	@NoCreate @NoModify
	private Empresa empresa;
	
	public BigDecimal getSaldoAtual() {
		// Calcular o saldo atual da conta
		return new BigDecimal(999.00);
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getAgencia() {
		return agencia;
	}

	public void setAgencia(String agencia) {
		this.agencia = agencia;
	}

	public String getNumeroConta() {
		return numeroConta;
	}

	public void setNumeroConta(String numeroConta) {
		this.numeroConta = numeroConta;
	}

	public boolean isAtivo() {
		return ativo;
	}

	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}

	public double getSaldoInicial() {
		return saldoInicial;
	}

	public void setSaldoInicial(double saldoInicial) {
		this.saldoInicial = saldoInicial;
	}

	public double getSaldoFinal() {
		return saldoFinal;
	}

	public void setSaldoFinal(double saldoFinal) {
		this.saldoFinal = saldoFinal;
	}

	public LocalDate getDataAbertura() {
		return dataAbertura;
	}

	public void setDataAbertura(LocalDate dataAbertura) {
		this.dataAbertura = dataAbertura;
	}

	public LocalDate getDataFechamento() {
		return dataFechamento;
	}

	public void setDataFechamento(LocalDate dataFechamento) {
		this.dataFechamento = dataFechamento;
	}

	public TipoConta getTipoConta() {
		return tipoConta;
	}

	public void setTipoConta(TipoConta tipoConta) {
		this.tipoConta = tipoConta;
	}

	public Banco getBanco() {
		return banco;
	}

	public void setBanco(Banco banco) {
		this.banco = banco;
	}

	public Empresa getEmpresa() {
		return empresa;
	}

	public void setEmpresa(Empresa empresa) {
		this.empresa = empresa;
	}
}