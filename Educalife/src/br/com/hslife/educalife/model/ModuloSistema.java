package br.com.hslife.educalife.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.envers.Audited;
import org.openxava.annotations.ReadOnly;
import org.openxava.annotations.Required;
import org.openxava.annotations.Tab;
import org.openxava.annotations.View;
import org.openxava.model.Identifiable;

@Entity
@Table(name="modulo_sistema")
@Audited
@View(members = "nome; menu")
@Tab(properties = "nome, menu")
public class ModuloSistema extends Identifiable {
    
    @Column(nullable = false, unique = true)
    @Required
    @ReadOnly(onCreate = false)
    private String nome;

    @Column(nullable = false)
    @Required
    private String menu;

    public String getModuloMenu() {
        return this.getMenu() + " - " + this.getNome();
    }

    public String getMenu() {
        return menu;
    }

    public void setMenu(String menu) {
        this.menu = menu;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}