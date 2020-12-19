package br.com.hslife.educalife.model;

import java.time.LocalDate;
import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.envers.Audited;
import org.openxava.annotations.NoCreate;
import org.openxava.annotations.NoModify;
import org.openxava.annotations.PreCreate;
import org.openxava.annotations.ReadOnly;
import org.openxava.annotations.ReferenceView;
import org.openxava.annotations.Required;
import org.openxava.annotations.Tab;
import org.openxava.annotations.View;
import org.openxava.model.Identifiable;

import br.com.hslife.educalife.enumeration.StatusProcesso;
import br.com.hslife.educalife.helper.ProcessoHelper;

@Entity
@Table(name="processo")
@Audited
@View(
    members = "geral { numeroProcesso; "
        + "dataAbertura; "
        + "interessado; "
        + "statusProcesso, publico; "
        + "tipoProcesso; "
        + "departamento } "
        + "documentos { documentosProcesso }"
)
@Tab(properties = "tipoProcesso.descricao, " +
    "numeroProcesso, dataAbertura, departamento.nomeEUnidade, " + 
    " interessado, publico, statusProcesso")
public class Processo extends Identifiable{

    @ManyToOne
    @JoinColumn(name="id_tipo_processo", nullable = false)
    @Required
    @NoCreate @NoModify
    @ReferenceView(value = "view_in_processo")
    private TipoProcesso tipoProcesso;
    
    @Column(name="numero_processo", nullable = false, unique = true)
    @ReadOnly
    private String numeroProcesso;

    @Column(name="data_abertura", nullable = false)
    @ReadOnly
    private LocalDate dataAbertura;

    @ManyToOne
    @JoinColumn(name="id_departamento", nullable = false)
    @Required
    @NoCreate @NoModify
    @ReferenceView(value = "view_in_processo")
    private Departamento departamento;

    @Column(nullable = true)
    private String interessado;

    @Column
    private boolean publico;

    @Enumerated(EnumType.STRING)
    @Column(name="status_processo", nullable = false)
    @Required
    private StatusProcesso statusProcesso;

    @ElementCollection
	@OneToMany(mappedBy = "processo", orphanRemoval = true, cascade = CascadeType.ALL)
	private Collection<DocumentoProcesso> documentosProcesso;

    @PreCreate
    public void executarAntesDeCriar() {
        this.dataAbertura = LocalDate.now();
        this.numeroProcesso = ProcessoHelper.gerarNumeroProcesso(this.departamento);
    }

    public Collection<DocumentoProcesso> getDocumentosProcesso() {
        return documentosProcesso;
    }

    public void setDocumentosProcesso(Collection<DocumentoProcesso> documentosProcesso) {
        this.documentosProcesso = documentosProcesso;
    }

    public LocalDate getDataAbertura() {
        return dataAbertura;
    }

    public void setDataAbertura(LocalDate dataAbertura) {
        this.dataAbertura = dataAbertura;
    }

    public Departamento getDepartamento() {
        return departamento;
    }

    public void setDepartamento(Departamento departamento) {
        this.departamento = departamento;
    }

    public String getInteressado() {
        return interessado;
    }

    public void setInteressado(String interessado) {
        this.interessado = interessado;
    }

    public String getNumeroProcesso() {
        return numeroProcesso;
    }

    public void setNumeroProcesso(String numeroProcesso) {
        this.numeroProcesso = numeroProcesso;
    }

    public StatusProcesso getStatusProcesso() {
        return statusProcesso;
    }

    public void setStatusProcesso(StatusProcesso statusProcesso) {
        this.statusProcesso = statusProcesso;
    }

    public TipoProcesso getTipoProcesso() {
        return tipoProcesso;
    }

    public void setTipoProcesso(TipoProcesso tipoProcesso) {
        this.tipoProcesso = tipoProcesso;
    }

    public boolean isPublico() {
        return publico;
    }

    public void setPublico(boolean publico) {
        this.publico = publico;
    }
}
