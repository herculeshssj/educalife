package br.com.hslife.educalife.model;

import java.math.*;
import java.time.*;
import java.util.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.jpa.*;
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
	@Stereotype("MONEY")
	@Required
	private BigDecimal saldoInicial;
	
	@Column(name="saldo_final")
	@Stereotype("MONEY")
	private BigDecimal saldoFinal;
	
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
	
	@SuppressWarnings("unchecked")
	@Stereotype("MONEY")
	public BigDecimal getSaldoAtual() {
		// Calcular o saldo atual da conta
		List<BigDecimal> valorLancamentos = new LinkedList<>();
		BigDecimal saldo = this.getSaldoInicial();
		
		if (this.getId() != null) {
			valorLancamentos = XPersistence.getManager()
					.createQuery("SELECT l.valor FROM Lancamento l WHERE l.conta.id = :idConta and l.statusLancamento <> 'AGENDADO' ORDER BY l.data ASC")
					.setParameter("idConta", this.getId())
					.getResultList();
			
			for (BigDecimal v : valorLancamentos) {
				saldo = saldo.add(v);
			}
		}
		
		return saldo;
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

	public BigDecimal getSaldoInicial() {
		return saldoInicial;
	}

	public void setSaldoInicial(BigDecimal saldoInicial) {
		this.saldoInicial = saldoInicial;
	}

	public BigDecimal getSaldoFinal() {
		return saldoFinal;
	}

	public void setSaldoFinal(BigDecimal saldoFinal) {
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