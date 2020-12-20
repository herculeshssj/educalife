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
@Table(name="assinatura_documento")
@Audited
public class AssinaturaDocumento extends Identifiable {
    
    @ManyToOne
    @JoinColumn(name="id_documento_processo", nullable = false)
    private DocumentoProcesso documentoProcesso;

    @Column(name="data_assinatura", nullable = false)
    private LocalDate dataAssinatura;

    @Column(name="nome_signatario", nullable = false)
    private String nomeSignatario;

    @Column(name="cargo_signatario", nullable = true)
    private String cargoSignatario;

    @Column(name="cpf_signatario", nullable = false)
    private String cpfSignatario;

    @Column(name="matricula_signatario", nullable = true)
    private String matriculaSignatario;

    @Column(name = "hash_assinatura", length = 64, nullable = false)
    private String hashAssinatura;

    @Column(name = "crc_assinatura")
    private long crcAssinatura;

    public String getCargoSignatario() {
        return cargoSignatario;
    }

    public void setCargoSignatario(String cargoSignatario) {
        this.cargoSignatario = cargoSignatario;
    }

    public String getCpfSignatario() {
        return cpfSignatario;
    }

    public void setCpfSignatario(String cpfSignatario) {
        this.cpfSignatario = cpfSignatario;
    }

    public long getCrcAssinatura() {
        return crcAssinatura;
    }

    public void setCrcAssinatura(long crcAssinatura) {
        this.crcAssinatura = crcAssinatura;
    }

    public LocalDate getDataAssinatura() {
        return dataAssinatura;
    }

    public void setDataAssinatura(LocalDate dataAssinatura) {
        this.dataAssinatura = dataAssinatura;
    }

    public DocumentoProcesso getDocumentoProcesso() {
        return documentoProcesso;
    }

    public void setDocumentoProcesso(DocumentoProcesso documentoProcesso) {
        this.documentoProcesso = documentoProcesso;
    }

    public String getHashAssinatura() {
        return hashAssinatura;
    }

    public void setHashAssinatura(String hashAssinatura) {
        this.hashAssinatura = hashAssinatura;
    }

    public String getMatriculaSignatario() {
        return matriculaSignatario;
    }

    public void setMatriculaSignatario(String matriculaSignatario) {
        this.matriculaSignatario = matriculaSignatario;
    }

    public String getNomeSignatario() {
        return nomeSignatario;
    }

    public void setNomeSignatario(String nomeSignatario) {
        this.nomeSignatario = nomeSignatario;
    }
}
