package br.com.hslife.educalife.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.envers.Audited;
import org.openxava.annotations.NoCreate;
import org.openxava.annotations.NoModify;
import org.openxava.annotations.Required;
import org.openxava.annotations.View;
import org.openxava.model.Identifiable;

@Entity
@Table(name="permissao_menu_sistema")
@Audited
@View(members = "papelUsuario; modulo; podeConsultar, podeCriar, podeAtualizar, podeExcluir")
public class PermissaoMenuSistema extends Identifiable {
    
    @ManyToOne
    @JoinColumn(name="id_papel_usuario", nullable = false)
    @Required
    @NoCreate @NoModify
    private PapelUsuario papelUsuario;

    @Column(nullable = false)
    private String modulo;

    @Column(name="pode_criar")
    private boolean podeCriar;

    @Column(name="pode_atualizar")
    private boolean podeAtualizar;

    @Column(name="pode_excluir")
    private boolean podeExcluir;

    @Column(name="pode_consultar")
    private boolean podeConsultar;

    public boolean isPodeConsultar() {
        return podeConsultar;
    }

    public void setPodeConsultar(boolean podeConsultar) {
        this.podeConsultar = podeConsultar;
    }

    public String getModulo() {
        return modulo;
    }

    public void setModulo(String modulo) {
        this.modulo = modulo;
    }

    public PapelUsuario getPapelUsuario() {
        return papelUsuario;
    }

    public void setPapelUsuario(PapelUsuario papelUsuario) {
        this.papelUsuario = papelUsuario;
    }

    public boolean isPodeAtualizar() {
        return podeAtualizar;
    }

    public void setPodeAtualizar(boolean podeAtualizar) {
        this.podeAtualizar = podeAtualizar;
    }

    public boolean isPodeCriar() {
        return podeCriar;
    }

    public void setPodeCriar(boolean podeCriar) {
        this.podeCriar = podeCriar;
    }

    public boolean isPodeExcluir() {
        return podeExcluir;
    }

    public void setPodeExcluir(boolean podeExcluir) {
        this.podeExcluir = podeExcluir;
    }
}
