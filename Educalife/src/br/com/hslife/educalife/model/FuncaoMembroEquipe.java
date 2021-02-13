package br.com.hslife.educalife.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.envers.Audited;
import org.openxava.annotations.Required;
import org.openxava.annotations.View;
import org.openxava.model.Identifiable;

@Entity
@Table(name="funcao_membro_equipe")
@Audited
@View(name = "view_in_equipe", members = "descricao, lideranca")
public class FuncaoMembroEquipe extends Identifiable{
    
    @Column(nullable = false, length = 100)
    @Required
    private String descricao;

    @Column
    private boolean lideranca;

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public boolean isLideranca() {
        return lideranca;
    }

    public void setLideranca(boolean lideranca) {
        this.lideranca = lideranca;
    }
}
