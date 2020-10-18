package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.openxava.model.*;

@Entity
@Table(name="tabela_imposto")
public class TabelaImposto extends Identifiable {
	
	@Column(nullable = false)
	private String descricao;

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
}
