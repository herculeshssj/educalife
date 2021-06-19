package br.com.hslife.educalife.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.envers.Audited;
import org.openxava.annotations.Required;
import org.openxava.model.Identifiable;

@Entity
@Table(name = "conta_contabil")
@Audited
public class ContaContabil extends Identifiable{
   
    @Column(nullable = false)
    @Required
    private String conta;

    @Column(name = "descricao_titulo", nullable = false, length = 3000)
    @Required
    private String descricaoTitulo;

    @Column(name = "funcao", nullable = false, length = 5000)
    @Required
    private String funcao;

    @Column(nullable = false)
    @Required
    private String status;

    @Column(name = "natureza_saldo", nullable = false)
    @Required
    private String naturezaSaldo;

    @Column(name = "obrigatorio_facultativo")
    @Required
    private String obrigatorioFacultativo;

    public String getConta() {
        return conta;
    }

    public void setConta(String conta) {
        this.conta = conta;
    }

    public String getDescricaoTitulo() {
        return descricaoTitulo;
    }

    public void setDescricaoTitulo(String descricaoTitulo) {
        this.descricaoTitulo = descricaoTitulo;
    }

    public String getFuncao() {
        return funcao;
    }

    public void setFuncao(String funcao) {
        this.funcao = funcao;
    }

    public String getNaturezaSaldo() {
        return naturezaSaldo;
    }
    
    public void setNaturezaSaldo(String naturezaSaldo) {
        this.naturezaSaldo = naturezaSaldo;
    }

    public String getObrigatorioFacultativo() {
        return obrigatorioFacultativo;
    }
    
    public void setObrigatorioFacultativo(String obrigatorioFacultativo) {
        this.obrigatorioFacultativo = obrigatorioFacultativo;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
