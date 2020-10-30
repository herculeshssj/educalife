package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.hibernate.envers.*;
import org.openxava.annotations.*;
import org.openxava.model.*;

import br.com.hslife.educalife.enumeration.*;

@Entity
@Table(name="rubrica")
@Audited
@View(members = "codigo; descricao; tipoRubrica; ativo; incide { fgts, inss, irrf }; discriminacao")
@View(name = "simples", members = "codigo, descricao, tipoRubrica, ativo")
@Tab(properties = "codigo, tipoRubrica, descricao, fgts, inss, irrf, ativo")
public class Rubrica extends Identifiable {
	
	@Column(nullable = false)
	@Required
	private String codigo;
	
	@Column(nullable = false, length = 100)
	@Required
	private String descricao;
	
	@Enumerated(EnumType.STRING)
	@Column(name="tipo_rubrica", nullable = false)
	private TipoRubrica tipoRubrica;
	
	@Column(nullable = true, length = 1000)
	@Stereotype("MEMO")
	private String discriminacao;
	
	@Column
	private boolean ativo;
	
	@Column
	private boolean fgts;
	
	@Column
	private boolean inss;
	
	@Column
	private boolean irrf;
	
	public Rubrica() {
		this.ativo = true;
	}

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

	public String getDiscriminacao() {
		return discriminacao;
	}

	public void setDiscriminacao(String discriminacao) {
		this.discriminacao = discriminacao;
	}

	public boolean isFgts() {
		return fgts;
	}

	public void setFgts(boolean fgts) {
		this.fgts = fgts;
	}

	public boolean isInss() {
		return inss;
	}

	public void setInss(boolean inss) {
		this.inss = inss;
	}

	public boolean isIrrf() {
		return irrf;
	}

	public void setIrrf(boolean irrf) {
		this.irrf = irrf;
	}

	public boolean isAtivo() {
		return ativo;
	}

	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}

	public TipoRubrica getTipoRubrica() {
		return tipoRubrica;
	}

	public void setTipoRubrica(TipoRubrica tipoRubrica) {
		this.tipoRubrica = tipoRubrica;
	}
}