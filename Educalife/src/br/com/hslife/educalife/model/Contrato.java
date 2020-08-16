package br.com.hslife.educalife.model;

import java.math.*;
import java.time.*;
import java.util.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

import br.com.hslife.educalife.enumeration.*;

//@Entity
@Table(name="contrato")
@View(members = "geral { numeroContrato; "
		+ "situacaoContrato; "
		+ "dataCadastro; "
		+ "dataInicioVigencia; "
		+ "dataFimVigencia; "
		+ "diaFaturamento; "
		+ "valorContrato; "
		+ "quantidadeParcelas; "
		+ "valorParcela;"
		+ "observacao } ; "
		+ "aluno { inscricaoTurma } ;"
		+ "faturamento { historicoFaturamento } "
)
@Tab(properties = "numeroContrato, situacaoContrato, dataCadastro, "
		+ "dataInicioVigencia, dataFimVigencia, diaFaturamento, valorContrato, "
		+ "quantidadeParcelas, valorParcela, inscricaoTurma.aluno.nome")
public class Contrato extends Identifiable {

	@Column(name = "numero_contrato")
	@Required
	private int numeroContrato;
	
	@Enumerated(EnumType.STRING)
	@Column(name="situacao_contrato", nullable = false)
	@Required
	private SituacaoContrato situacaoContrato;
	
	@Column(name="data_cadastro", nullable = false)
	private LocalDate dataCadastro;
	
	@Column(name="data_inicio_vigencia", nullable = false)
	private LocalDate dataInicioVigencia;
	
	@Column(name="data_fim_vigencia", nullable = false)
	private LocalDate dataFimVigencia;
	
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
	
	@Column
	@Stereotype("MEMO")
	private String observacao;
	
	@OneToOne(optional = false)
	@JoinColumn(name="id_inscricao_turma", nullable = false)
	private InscricaoTurma inscricaoTurma;
	
	@ElementCollection
	@ListProperties("dataFatura, valor")
	private Collection<ContratoHistoricoFaturamento> historicoFaturamento;

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

	public LocalDate getDataCadastro() {
		return dataCadastro;
	}

	public void setDataCadastro(LocalDate dataCadastro) {
		this.dataCadastro = dataCadastro;
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

	public InscricaoTurma getInscricaoTurma() {
		return inscricaoTurma;
	}

	public void setInscricaoTurma(InscricaoTurma inscricaoTurma) {
		this.inscricaoTurma = inscricaoTurma;
	}

	public Collection<ContratoHistoricoFaturamento> getHistoricoFaturamento() {
		return historicoFaturamento;
	}

	public void setHistoricoFaturamento(Collection<ContratoHistoricoFaturamento> historicoFaturamento) {
		this.historicoFaturamento = historicoFaturamento;
	}
}
