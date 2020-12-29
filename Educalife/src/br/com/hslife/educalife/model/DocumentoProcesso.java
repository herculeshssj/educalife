package br.com.hslife.educalife.model;

import java.time.LocalDate;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.envers.Audited;
import org.openxava.annotations.NoCreate;
import org.openxava.annotations.NoModify;
import org.openxava.annotations.PreCreate;
import org.openxava.annotations.ReadOnly;
import org.openxava.annotations.ReferenceView;
import org.openxava.annotations.Required;
import org.openxava.annotations.Stereotype;
import org.openxava.annotations.View;
import org.openxava.model.Identifiable;

import br.com.hslife.educalife.helper.ProcessoHelper;

@Entity
@Table(name="documento_processo")
@Audited
@View(members = "geral { tipoDocumento; " +
    "numeroDocumento; autorDocumento; cpfCnpjAutorDocumento; dataDocumento; dataInclusaoProcesso } " +
    "conteudo { corpoDocumento } " +
    "anexos { anexosDocumento } " +
    "assinaturas { assinaturasDocumento } ")
public class DocumentoProcesso extends Identifiable {

    @ManyToOne
	@JoinColumn(name="id_processo", nullable = false)
	private Processo processo;

    @Column(name = "numero_documento", nullable = false)
    @ReadOnly
    //@Action("GerarNumeroDocumento.gerarNumero")
    private String numeroDocumento;

    @ManyToOne
    @JoinColumn(name="id_tipo_documento", nullable = false)
    @Required
    @NoCreate @NoModify
    @ReferenceView("view_in_documento_processo")
    private TipoDocumento tipoDocumento;
    
    @Column(name = "data_documento", nullable = false)
    @Required
    private LocalDate dataDocumento;

    @Column(name="autor_documento", nullable = true)
    private String autorDocumento;

    @Column(name="cpf_cnpj_autor_documento", nullable = true)
    private String cpfCnpjAutorDocumento;

    @Column(name="data_inclusao_processo", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    @Stereotype("DATETIME")
    @ReadOnly
    private Date dataInclusaoProcesso;

    @Column(columnDefinition = "text", name="corpo_documento", nullable = true)
    @Stereotype("HTML_TEXT")
    private String corpoDocumento;
    
    @Stereotype("FILES")
	@Column(length=32, name = "anexos_documento")
    private String anexosDocumento;

    @ElementCollection
    @OneToMany(mappedBy = "documentoProcesso", orphanRemoval = true, cascade = CascadeType.ALL)
    Collection<AssinaturaDocumento> assinaturasDocumento;
    
    @PreCreate
    public void executarAntesDeCriar() {
        this.dataInclusaoProcesso = Calendar.getInstance().getTime();
        this.numeroDocumento = ProcessoHelper.gerarNumeroDocumento(this.getTipoDocumento().getId());
    }

    public Date getDataInclusaoProcesso() {
        return dataInclusaoProcesso;
    }

    public void setDataInclusaoProcesso(Date dataInclusaoProcesso) {
        this.dataInclusaoProcesso = dataInclusaoProcesso;
    }

    public String getCpfCnpjAutorDocumento() {
        return cpfCnpjAutorDocumento;
    }

    public void setCpfCnpjAutorDocumento(String cpfCnpjAutorDocumento) {
        this.cpfCnpjAutorDocumento = cpfCnpjAutorDocumento;
    }
    
    public Collection<AssinaturaDocumento> getAssinaturasDocumento() {
        return assinaturasDocumento;
    }

    public void setAssinaturasDocumento(Collection<AssinaturaDocumento> assinaturasDocumento) {
        this.assinaturasDocumento = assinaturasDocumento;
    }

    public LocalDate getDataDocumento() {
        return dataDocumento;
    }

    public void setDataDocumento(LocalDate dataDocumento) {
        this.dataDocumento = dataDocumento;
    }

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