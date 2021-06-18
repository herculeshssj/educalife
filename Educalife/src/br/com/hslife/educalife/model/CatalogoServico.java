package br.com.hslife.educalife.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.envers.Audited;
import org.openxava.annotations.Required;
import org.openxava.model.Identifiable;

@Entity
@Table(name = "catalogo_servico")
@Audited
public class CatalogoServico extends Identifiable {

    @Column(name="codigo_grupo_servico", nullable = false)
    @Required
    private int codigoGrupoServico;

    @Column(name="grupo_servico", nullable = false, length = 1000)
    @Required
    private String grupoServico;

    @Column(name="codigo_classe_servico", nullable = false)
    @Required
    private int codigoClasseServico;

    @Column(name = "classe_servico", nullable = false, length = 1000)
    @Required
    private String classeServico;

    @Column(name = "codigo_servico", nullable = false)
    @Required
    private int codigoServico;

    @Column(name = "descricao_servico", nullable = false, length = 3000)
    @Required
    private String descricaoServico;

    @Column(name = "situacao_atual", nullable = false)
    private String situacaoAtual;
    
    public String getClasseServico() {
        return classeServico;
    }

    public void setClasseServico(String classeServico) {
        this.classeServico = classeServico;
    }

    public int getCodigoClasseServico() {
        return codigoClasseServico;
    }

    public void setCodigoClasseServico(int codigoClasseServico) {
        this.codigoClasseServico = codigoClasseServico;
    }

    public int getCodigoGrupoServico() {
        return codigoGrupoServico;
    }

    public void setCodigoGrupoServico(int codigoGrupoServico) {
        this.codigoGrupoServico = codigoGrupoServico;
    }

    public int getCodigoServico() {
        return codigoServico;
    }

    public void setCodigoServico(int codigoServico) {
        this.codigoServico = codigoServico;
    }

    public String getDescricaoServico() {
        return descricaoServico;
    }
    
    public void setDescricaoServico(String descricaoServico) {
        this.descricaoServico = descricaoServico;
    }

    public String getGrupoServico() {
        return grupoServico;
    }

    public void setGrupoServico(String grupoServico) {
        this.grupoServico = grupoServico;
    }

    public String getSituacaoAtual() {
        return situacaoAtual;
    }
    
    public void setSituacaoAtual(String situacaoAtual) {
        this.situacaoAtual = situacaoAtual;
    }
}
