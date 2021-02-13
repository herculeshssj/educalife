package br.com.hslife.educalife.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.envers.Audited;
import org.openxava.annotations.NoCreate;
import org.openxava.annotations.NoModify;
import org.openxava.annotations.ReferenceView;
import org.openxava.annotations.Required;
import org.openxava.model.Identifiable;

@Entity
@Table(name="membro_equipe")
@Audited
public class MembroEquipe extends Identifiable {

    @ManyToOne
    @JoinColumn(name="id_equipe", nullable = false)
    private Equipe equipe;
    
    @ManyToOne
    @JoinColumn(name="id_pessoa_fisica", nullable = false)
    @Required
    @NoCreate @NoModify
    @ReferenceView(value = "view_simplificada")
    private PessoaFisica pessoaFisica;

    @ManyToOne
    @JoinColumn(name="id_funcao_membro_equipe", nullable = false)
    @Required
    @NoCreate @NoModify
    @ReferenceView(value = "view_in_equipe")
    private FuncaoMembroEquipe funcaoMembroEquipe;

    @Column
    private boolean afastado;

    public FuncaoMembroEquipe getFuncaoMembroEquipe() {
        return funcaoMembroEquipe;
    }

    public void setFuncaoMembroEquipe(FuncaoMembroEquipe funcaoMembroEquipe) {
        this.funcaoMembroEquipe = funcaoMembroEquipe;
    }

    public PessoaFisica getPessoaFisica() {
        return pessoaFisica;
    }

    public void setPessoaFisica(PessoaFisica pessoaFisica) {
        this.pessoaFisica = pessoaFisica;
    }

    public boolean isAfastado() {
        return afastado;
    }

    public void setAfastado(boolean afastado) {
        this.afastado = afastado;
    }

    public Equipe getEquipe() {
        return equipe;
    }

    public void setEquipe(Equipe equipe) {
        this.equipe = equipe;
    }
}
