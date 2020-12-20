package br.com.hslife.educalife.model;

import java.time.LocalDate;
import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.envers.Audited;
import org.openxava.annotations.Action;
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
    "numeroDocumento; autorDocumento; dataDocumento } " +
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

    @Column(name = "data_criacao", nullable = false)
    private LocalDate dataCriacao;
    
    @Column(name = "data_documento", nullable = false)
    @Required
    private LocalDate dataDocumento;

    @Column(name="autor_documento", nullable = false)
    @Required
    private String autorDocumento;

    @Column(columnDefinition = "nvarchar(max)", name="corpo_documento", nullable = true)
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
        this.dataCriacao = LocalDate.now();
        this.numeroDocumento = ProcessoHelper.gerarNumeroDocumento(this.getTipoDocumento().getId());
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