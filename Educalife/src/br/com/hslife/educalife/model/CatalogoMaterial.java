package br.com.hslife.educalife.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.envers.Audited;
import org.openxava.model.Identifiable;

@Entity
@Table(name="catalogo_material")
@Audited
public class CatalogoMaterial extends Identifiable {

    @Column(name="codigo_grupo_material", nullable = false)
    private int codigoGrupoMaterial;

    @Column(name="grupo_material", nullable = false, length = 1000)
    private String grupoMaterial;

    @Column(name="codigo_classe_material", nullable = false)
    private int codigoClasseMaterial;

    @Column(name="classe_material", nullable = false, length = 1000)
    private String classeMaterial;

    @Column(name="codigo_padrao_descricao_material", nullable = false)
    private int codigoPadraoDescricaoMaterial;

    @Column(name="padrao_descricao_material", nullable = false, length = 1000)
    private String padraoDescricaoMaterial;

    @Column(name="codigo_material", nullable = false)
    private int codigoMaterial;

    @Column(name="descricao_material", nullable = false, length = 3000)
    private String descricaoMaterial;

    @Column(name="situacao_atual", nullable = false)
    private String situacaoAtual;

    @Column(name="item_sustentavel", nullable = false)
    private String itemSustentavel;
    

    public String getClasseMaterial() {
        return classeMaterial;
    }

    public void setClasseMaterial(String classeMaterial) {
        this.classeMaterial = classeMaterial;
    }

    public int getCodigoClasseMaterial() {
        return codigoClasseMaterial;
    }

    public void setCodigoClasseMaterial(int codigoClasseMaterial) {
        this.codigoClasseMaterial = codigoClasseMaterial;
    }

    public int getCodigoGrupoMaterial() {
        return codigoGrupoMaterial;
    }

    public void setCodigoGrupoMaterial(int codigoGrupoMaterial) {
        this.codigoGrupoMaterial = codigoGrupoMaterial;
    }

    public int getCodigoMaterial() {
        return codigoMaterial;
    }

    public void setCodigoMaterial(int codigoMaterial) {
        this.codigoMaterial = codigoMaterial;
    }

    public int getCodigoPadraoDescricaoMaterial() {
        return codigoPadraoDescricaoMaterial;
    }

    public void setCodigoPadraoDescricaoMaterial(int codigoPadraoDescricaoMaterial) {
        this.codigoPadraoDescricaoMaterial = codigoPadraoDescricaoMaterial;
    }

    public String getDescricaoMaterial() {
        return descricaoMaterial;
    }

    public void setDescricaoMaterial(String descricaoMaterial) {
        this.descricaoMaterial = descricaoMaterial;
    }

    public String getGrupoMaterial() {
        return grupoMaterial;
    }

    public void setGrupoMaterial(String grupoMaterial) {
        this.grupoMaterial = grupoMaterial;
    }

    public String getItemSustentavel() {
        return itemSustentavel;
    }

    public void setItemSustentavel(String itemSustentavel) {
        this.itemSustentavel = itemSustentavel;
    }

    public String getPadraoDescricaoMaterial() {
        return padraoDescricaoMaterial;
    }

    public void setPadraoDescricaoMaterial(String padraoDescricaoMaterial) {
        this.padraoDescricaoMaterial = padraoDescricaoMaterial;
    }

    public String getSituacaoAtual() {
        return situacaoAtual;
    }

    public void setSituacaoAtual(String situacaoAtual) {
        this.situacaoAtual = situacaoAtual;
    }
}
