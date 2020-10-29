package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.hibernate.envers.*;
import org.openxava.annotations.*;
import org.openxava.model.*;

import br.com.hslife.educalife.enumeration.*;

@Entity
@Table(name="codigo_contabil")
@Audited
public class CodigoContabil extends Identifiable {

	@Column(nullable = false)
	@Required
	private String codigo;
	
	@Column(nullable = false)
	@Required
	private String descricao;
	
	@Enumerated(EnumType.STRING)
	@Column(name="tipo_codigo_contabil", nullable = false)
	@Required
	private TipoCodigoContabil tipoCodigoContabil;

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

	public TipoCodigoContabil getTipoCodigoContabil() {
		return tipoCodigoContabil;
	}

	public void setTipoCodigoContabil(TipoCodigoContabil tipoCodigoContabil) {
		this.tipoCodigoContabil = tipoCodigoContabil;
	}
}