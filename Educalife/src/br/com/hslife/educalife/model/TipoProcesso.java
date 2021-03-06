package br.com.hslife.educalife.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.envers.Audited;
import org.openxava.annotations.Required;
import org.openxava.annotations.View;
import org.openxava.model.Identifiable;

@Entity
@Table(name="tipo_processo")
@Audited
@View(
    name = "view_in_processo",
    members = "codigo, descricao"
)
public class TipoProcesso extends Identifiable {
    
    @Column(nullable = false, length = 50)
    @Required
    private String codigo;

    @Column(nullable = false, length = 100)
    @Required
    private String descricao;

    @Column
    private boolean ativo;

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public boolean isAtivo() {
        return ativo;
    }

    public void setAtivo(boolean ativo) {
        this.ativo = ativo;
    }
}
