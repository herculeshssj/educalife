package br.com.hslife.educalife.model;

import java.math.*;
import java.time.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

import br.com.hslife.educalife.enumeration.*;

@Entity
@Table(name = "lancamento")
@View(members = "conta;"
		+ "historico, numero;"
		+ "data, valor, statusLancamento;"
		+ "acao;"
		+ "observacao;"
		+ "anexo")
@Tab(properties = "conta.descricao, data, historico, valor, statusLancamento")
public class Lancamento extends Identifiable {

	@Column(nullable = false)
	private LocalDate data;
	
	@Column(nullable = false)
	private String historico;
	
	@Column(nullable = true)
	@Stereotype("MEMO")
	private String observacao;
	
	@Column(nullable = true)
	private String numero;
	
	@Column(nullable = false)
	@Stereotype("MONEY")
	private BigDecimal valor;
	
	@Column(name="status_lancamento", length=15)
	@Enumerated(EnumType.STRING)
	@Required
	private StatusLancamento statusLancamento;
	
	@ManyToOne
	@JoinColumn(name="id_conta", nullable = false)
	@DescriptionsList(descriptionProperties = "descricao")
	@NoCreate @NoModify
	private Conta conta;
	
	@Stereotype("FILE")
	@Column(length=32)
	private String anexo;
	
	@Column(name="acao_lancamento", length=25)
	@Enumerated(EnumType.STRING)
	private AcaoLancamento acao;

	public LocalDate getData() {
		return data;
	}

	public void setData(LocalDate data) {
		this.data = data;
	}

	public String getHistorico() {
		return historico;
	}

	public void setHistorico(String historico) {
		this.historico = historico;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public BigDecimal getValor() {
		return valor;
	}

	public void setValor(BigDecimal valor) {
		this.valor = valor;
	}

	public StatusLancamento getStatusLancamento() {
		return statusLancamento;
	}

	public void setStatusLancamento(StatusLancamento statusLancamento) {
		this.statusLancamento = statusLancamento;
	}

	public Conta getConta() {
		return conta;
	}

	public void setConta(Conta conta) {
		this.conta = conta;
	}

	public AcaoLancamento getAcao() {
		return acao;
	}

	public void setAcao(AcaoLancamento acao) {
		this.acao = acao;
	}

	public String getAnexo() {
		return anexo;
	}

	public void setAnexo(String anexo) {
		this.anexo = anexo;
	}
}