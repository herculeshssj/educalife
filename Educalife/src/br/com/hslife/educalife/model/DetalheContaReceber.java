package br.com.hslife.educalife.model;

import java.math.*;
import java.time.*;

import javax.persistence.*;

import org.openxava.annotations.*;

import br.com.hslife.educalife.enumeration.*;

@Embeddable
public class DetalheContaReceber {

	@Column
	private LocalDate data;
	
	@Column
	private boolean faturado; // despesa foi faturada ou não
	
	@Column(nullable = false)
	private String descricao;
	
	@ManyToOne
	@JoinColumn(name="id_conta_receita")
	@DescriptionsList(descriptionProperties = "descricao")
	@NoCreate @NoModify
	private Conta contaReceita;
	
	@Column
	private BigDecimal quantidade;
	
	@Column(name="preco_unitario")
	private BigDecimal precoUnitario;
	
	@Enumerated(EnumType.STRING)
	@Column
	private Desconto desconto;
	
	@Column(name="valor_desconto")
	private BigDecimal valorDesconto;
	
	@Column
	private boolean tributavel; // incide impostos ou não
	
	@Column(name="impostos_inclusos")
	private boolean impostosInclusos; // impostos estão inclusos ou não
	
	@ManyToOne
	@JoinColumn(name="id_tabela_imposto")
	@DescriptionsList(descriptionProperties = "descricao")
	@NoCreate @NoModify
	private TabelaImposto tabelaImposto;
	
	@Stereotype("MONEY")
	@Depends("quantidade, precoUnitario")
	public BigDecimal getPrecoTotal() {
		if (getQuantidade() == null || getPrecoUnitario() == null)
			return BigDecimal.ZERO;
		
		return getQuantidade().multiply(getPrecoUnitario());
	}

	public LocalDate getData() {
		return data;
	}

	public void setData(LocalDate data) {
		this.data = data;
	}

	public boolean isFaturado() {
		return faturado;
	}

	public void setFaturado(boolean faturado) {
		this.faturado = faturado;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Conta getContaReceita() {
		return contaReceita;
	}

	public void setContaReceita(Conta contaReceita) {
		this.contaReceita = contaReceita;
	}

	public BigDecimal getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(BigDecimal quantidade) {
		this.quantidade = quantidade;
	}

	public BigDecimal getPrecoUnitario() {
		return precoUnitario;
	}

	public void setPrecoUnitario(BigDecimal precoUnitario) {
		this.precoUnitario = precoUnitario;
	}

	public Desconto getDesconto() {
		return desconto;
	}

	public void setDesconto(Desconto desconto) {
		this.desconto = desconto;
	}

	public BigDecimal getValorDesconto() {
		return valorDesconto;
	}

	public void setValorDesconto(BigDecimal valorDesconto) {
		this.valorDesconto = valorDesconto;
	}

	public boolean isTributavel() {
		return tributavel;
	}

	public void setTributavel(boolean tributavel) {
		this.tributavel = tributavel;
	}

	public boolean isImpostosInclusos() {
		return impostosInclusos;
	}

	public void setImpostosInclusos(boolean impostosInclusos) {
		this.impostosInclusos = impostosInclusos;
	}

	public TabelaImposto getTabelaImposto() {
		return tabelaImposto;
	}

	public void setTabelaImposto(TabelaImposto tabelaImposto) {
		this.tabelaImposto = tabelaImposto;
	}
}