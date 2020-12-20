package br.com.hslife.educalife.model;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.envers.Audited;
import org.openxava.model.Identifiable;

@Entity
@Table(name="tramitacao_processo")
@Audited
public class TramitacaoProcesso extends Identifiable {

    @ManyToOne
	@JoinColumn(name="id_processo", nullable = false)
	private Processo processo;
    
    @ManyToOne
    @JoinColumn(name="id_departamento_origem", nullable = false)
    Departamento departamentoOrigem;

    @ManyToOne
    @JoinColumn(name="id_departamento_destino", nullable = false)
    Departamento departamentoDestino;

    @Column(name="data_tramitacao", nullable = false)
    LocalDate dataTramitacao;

    @Column(nullable = true)
    String observacao;

    public Processo getProcesso() {
        return processo;
    }

    public void setProcesso(Processo processo) {
        this.processo = processo;
    }

    public LocalDate getDataTramitacao() {
        return dataTramitacao;
    }

    public void setDataTramitacao(LocalDate dataTramitacao) {
        this.dataTramitacao = dataTramitacao;
    }

    public Departamento getDepartamentoDestino() {
        return departamentoDestino;
    }

    public void setDepartamentoDestino(Departamento departamentoDestino) {
        this.departamentoDestino = departamentoDestino;
    }

    public Departamento getDepartamentoOrigem() {
        return departamentoOrigem;
    }

    public void setDepartamentoOrigem(Departamento departamentoOrigem) {
        this.departamentoOrigem = departamentoOrigem;
    }

    public String getObservacao() {
        return observacao;
    }

    public void setObservacao(String observacao) {
        this.observacao = observacao;
    }
}
