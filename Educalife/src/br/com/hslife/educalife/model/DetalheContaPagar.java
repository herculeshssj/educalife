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
	private Conta contaDespesa; // SEE remover se não for utilizar
	
	@Column
	private BigDecimal quantidade;
	
	@Column(name="preco_unitario")
	@Stereotype("MONEY")
	private BigDecimal precoUnitario;
	
	@Column
	// SEE remover se não for utilizar
	private boolean tributavel; // incide impostos ou não
	
	@Column(name="impostos_inclusos")
	// SEE remover se não for utilizar
	private boolean impostosInclusos; // impostos estão inclusos ou não
	
	@ManyToOne
	@JoinColumn(name="id_tabela_imposto")
	@DescriptionsList(descriptionProperties = "descricao")
	@NoCreate @NoModify
	// SEE remover se não for utilizar
	private TabelaImposto tabelaImposto;
	
	@Column
	// SEE remover se não for utilizar
	private boolean cobravel; // pode ser cobrado ou não
	
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