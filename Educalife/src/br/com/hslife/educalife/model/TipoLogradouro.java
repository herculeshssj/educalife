package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.hibernate.envers.*;
import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name = "tipo_logradouro")
@Audited
public class TipoLogradouro extends Identifiable {
	
	@Required
	@Column(name="codigo", nullable = false, unique = true)
	private String codigo;
	
	@Required
	@Column(name="descricao", nullable = false, unique = true)
	private String descricao;

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
}
