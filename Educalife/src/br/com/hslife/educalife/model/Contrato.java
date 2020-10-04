package br.com.hslife.educalife.model;

import java.math.*;
import java.time.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

import br.com.hslife.educalife.enumeration.*;

@Entity
@Table(name="contrato")
@View(members = "geral { numeroContrato, "
		+ "situacaoContrato; "
		+ "contratante; "
		+ "dataInicioVigencia, "
		+ "dataFimVigencia, "
		+ "dataRenovacao;"
		+ "valorContrato, "
		+ "valorParcela,"
		+ "quantidadeParcelas, "
		+ "diaFaturamento; "
		+ "observacao } ; "
		+ "texto { textoContrato }; "
		+ "anexos { anexos } "
)
@Tab(properties = "numeroContrato, situacaoContrato, "
		+ "dataInicioVigencia, dataFimVigencia, diaFaturamento, valorContrato, "
		+ "quantidadeParcelas, valorParcela")
public class Contrato extends Identifiable {

	@Column(name = "numero_contrato")
	@Required
	private int numeroContrato;
	
	@Enumerated(EnumType.STRING)
	@Column(name="situacao_contrato", nullable = false)
//	@ReadOnly
	private SituacaoContrato situacaoContrato;
	
	@Column(name="data_inicio_vigencia", nullable = false)
	@Required
	private LocalDate dataInicioVigencia;
	
	@Column(name="data_fim_vigencia", nullable = false)
	private LocalDate dataFimVigencia;
	
	@Column(name="data_renovacao", nullable = true)
//	@ReadOnly
	private LocalDate dataRenovacao;
	
	@Column(name="dia_faturamento")
	private int diaFaturamento;
	
	@Column(name="valor_contrato")
	@Stereotype("MONEY")
	private BigDecimal valorContrato;
	
	@Column(name="quantidade_parcelas")
	private int quantidadeParcelas;
	
	@Column(name="valor_parcela")
	@Stereotype("MONEY")
	private BigDecimal valorParcela;
	
	@Column(length = 1000)
	@Stereotype("MEMO")
	private String observacao;
	
	@Column(columnDefinition = "nvarchar(max)", name="texto_contrato", nullable = true)
	@Stereotype("HTML_TEXT")
	private String textoContrato;
	
	@Stereotype("FILES")
	@Column(length=32)
	private String anexos;
	
	@ManyToOne
	@JoinColumn(name="id_contratante", nullable = true)
	@ReferenceView(value = "view_in_contrato")
	@NoCreate @NoModify
	private PessoaFisica contratante;

	public int getNumeroContrato() {
		return numeroContrato;
	}

	public void setNumeroContrato(int numeroContrato) {
		this.numeroContrato = numeroContrato;
	}

	public SituacaoContrato getSituacaoContrato() {
		return situacaoContrato;
	}

	public void setSituacaoContrato(SituacaoContrato situacaoContrato) {
		this.situacaoContrato = situacaoContrato;
	}

	public LocalDate getDataInicioVigencia() {
		return dataInicioVigencia;
	}

	public void setDataInicioVigencia(LocalDate dataInicioVigencia) {
		this.dataInicioVigencia = dataInicioVigencia;
	}

	public LocalDate getDataFimVigencia() {
		return dataFimVigencia;
	}

	public void setDataFimVigencia(LocalDate dataFimVigencia) {
		this.dataFimVigencia = dataFimVigencia;
	}

	public int getDiaFaturamento() {
		return diaFaturamento;
	}

	public void setDiaFaturamento(int diaFaturamento) {
		this.diaFaturamento = diaFaturamento;
	}

	public BigDecimal getValorContrato() {
		return valorContrato;
	}

	public void setValorContrato(BigDecimal valorContrato) {
		this.valorContrato = valorContrato;
	}

	public int getQuantidadeParcelas() {
		return quantidadeParcelas;
	}

	public void setQuantidadeParcelas(int quantidadeParcelas) {
		this.quantidadeParcelas = quantidadeParcelas;
	}

	public BigDecimal getValorParcela() {
		return valorParcela;
	}

	public void setValorParcela(BigDecimal valorParcela) {
		this.valorParcela = valorParcela;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	public String getTextoContrato() {
		return textoContrato;
	}

	public void setTextoContrato(String textoContrato) {
		this.textoContrato = textoContrato;
	}

	public String getAnexos() {
		return anexos;
	}

	public void setAnexos(String anexos) {
		this.anexos = anexos;
	}

	public PessoaFisica getContratante() {
		return contratante;
	}

	public void setContratante(PessoaFisica contratante) {
		this.contratante = contratante;
	}

	public LocalDate getDataRenovacao() {
		return dataRenovacao;
	}

	public void setDataRenovacao(LocalDate dataRenovacao) {
		this.dataRenovacao = dataRenovacao;
	}
}