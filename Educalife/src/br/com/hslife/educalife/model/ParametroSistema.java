package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.hibernate.envers.*;
import org.openxava.annotations.*;
import org.openxava.model.*;

import br.com.hslife.educalife.enumeration.*;

@Entity
@Table(name = "parametro_sistema")
@Audited
public class ParametroSistema extends Identifiable {
	
	@Column(nullable = false)
	@Required
	private String codigo;
	
	@Column(nullable = false)
	@Required
	private String descricao;
	
	@Column(nullable = false)
	@Required
	private String valor;
	
	@Enumerated(EnumType.STRING)
	@Column(name="tipo_parametro", nullable = false)
	@Required
	private TipoParametro tipoParametro;
	
	@Column(nullable = true)
	private String modulo;

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

	public String getValor() {
		return valor;
	}

	public void setValor(String valor) {
		this.valor = valor;
	}

	public TipoParametro getTipoParametro() {
		return tipoParametro;
	}

	public void setTipoParametro(TipoParametro tipoParametro) {
		this.tipoParametro = tipoParametro;
	}

	public String getModulo() {
		return modulo;
	}

	public void setModulo(String modulo) {
		this.modulo = modulo;
	}
}