package br.com.hslife.educalife.model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.envers.Audited;
import org.openxava.model.Identifiable;

import br.com.hslife.educalife.enumeration.StatusOcorrenciaPessoal;

@Entity
@Table(name="ocorrencia_pessoal")
@Audited
public class OcorrenciaPessoal extends Identifiable {

    @ManyToOne
    @JoinColumn(name="id_colaborador")
    private Colaborador colaborador;

    @Column
    private BigDecimal valor;

    @ManyToOne
    @JoinColumn(name="id_rubrica")
    private Rubrica rubrica;

    @ManyToOne
    @JoinColumn(name="id_processo")
    private Processo processo;

    @Enumerated(EnumType.STRING)
    @Column(name="status_ocorrencia_pessoal")
    private StatusOcorrenciaPessoal status;

    public Colaborador getColaborador() {
        return colaborador;
    }

    public void setColaborador(Colaborador colaborador) {
        this.colaborador = colaborador;
    }

    public Processo getProcesso() {
        return processo;
    }

    public void setProcesso(Processo processo) {
        this.processo = processo;
    }

    public Rubrica getRubrica() {
        return rubrica;
    }

    public void setRubrica(Rubrica rubrica) {
        this.rubrica = rubrica;
    }

    public StatusOcorrenciaPessoal getStatus() {
        return status;
    }

    public void setStatus(StatusOcorrenciaPessoal status) {
        this.status = status;
    }

    public BigDecimal getValor() {
        return valor;
    }

    public void setValor(BigDecimal valor) {
        this.valor = valor;
    }
}
