package br.com.hslife.educalife.model;

import java.math.*;
import java.time.*;

import javax.persistence.*;

import org.openxava.annotations.*;

@Embeddable
public class DetalheContaPagar {
	
	@Column
	private LocalDate data;
	
	@Column
	private boolean faturado; // despesa foi faturada ou não
	
	@Column(nullable = false)
	private String descricao;
	
	@ManyToOne
	@JoinColumn(name="id_conta_despesa")
	@DescriptionsList(descriptionProperties = "descricao")
	@NoCreate @NoModify
	private Conta contaDespesa;
	
	@Column
	private BigDecimal quantidade;
	
	@Column(name="preco_unitario")
	private BigDecimal precoUnitario;
	
	@Column
	private boolean tributavel; // incide impostos ou não
	
	@Column(name="impostos_inclusos")
	private boolean impostosInclusos; // impostos estão inclusos ou não
	
	@ManyToOne
	@JoinColumn(name="id_tabela_imposto")
	@DescriptionsList(descriptionProperties = "descricao")
	@NoCreate @NoModify
	private TabelaImposto tabelaImposto;
	
	@Column
	private boolean cobravel; // pode ser cobrado ou não

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

	public Conta getContaDespesa() {
		return contaDespesa;
	}

	public void setContaDespesa(Conta contaDespesa) {
		this.contaDespesa = contaDespesa;
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

	public boolean isCobravel() {
		return cobravel;
	}

	public void setCobravel(boolean cobravel) {
		this.cobravel = cobravel;
	}
}