package br.com.hslife.educalife.model;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.envers.Audited;
import org.openxava.annotations.Required;
import org.openxava.annotations.Stereotype;
import org.openxava.model.Identifiable;

@Entity
@Table(name="documento_processo")
@Audited
public class DocumentoProcesso extends Identifiable {

    @ManyToOne
	@JoinColumn(name="id_processo", nullable = false)
	private Processo processo;

    @Column(name = "numero_documento", nullable = false)
    @Required
    private String numeroDocumento;

    @ManyToOne
    @JoinColumn(name="id_tipo_documento", nullable = false)
    @Required
    private TipoDocumento tipoDocumento;

    @Column(name = "data_criacao", nullable = false)
    @Required
    private LocalDate dataCriacao;

    @Column(name="autor_documento", nullable = false)
    @Required
    private String autorDocumento;

    @Column(columnDefinition = "nvarchar(max)", name="corpo_documento", nullable = true)
    @Stereotype("HTML_TEXT")
    private String corpoDocumento;
    
    @Stereotype("FILES")
	@Column(length=32, name = "anexos_documento")
    private String anexosDocumento;
    
    public Processo getProcesso() {
        return processo;
    }

    public void setProcesso(Processo processo) {
        this.processo = processo;
    }
    
    public String getAnexosDocumento() {
        return anexosDocumento;
    }

    public void setAnexosDocumento(String anexosDocumento) {
        this.anexosDocumento = anexosDocumento;
    }

    public String getAutorDocumento() {
        return autorDocumento;
    }

    public void setAutorDocumento(String autorDocumento) {
        this.autorDocumento = autorDocumento;
    }

    public String getCorpoDocumento() {
        return corpoDocumento;
    }

    public void setCorpoDocumento(String corpoDocumento) {
        this.corpoDocumento = corpoDocumento;
    }

    public LocalDate getDataCriacao() {
        return dataCriacao;
    }

    public void setDataCriacao(LocalDate dataCriacao) {
        this.dataCriacao = dataCriacao;
    }

    public String getNumeroDocumento() {
        return numeroDocumento;
    }

    public void setNumeroDocumento(String numeroDocumento) {
        this.numeroDocumento = numeroDocumento;
    }

    public TipoDocumento getTipoDocumento() {
        return tipoDocumento;
    }

    public void setTipoDocumento(TipoDocumento tipoDocumento) {
        this.tipoDocumento = tipoDocumento;
    }
}