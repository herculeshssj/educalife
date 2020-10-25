package br.com.hslife.educalife.model;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.model.*;

@Entity
@Table(name="rubrica")
@View(members = "codigo; descricao; incide { fgts, inss, irrf }; discriminacao")
@Tab(properties = "codigo, descricao, fgts, inss, irrf")
public class Rubrica extends Identifiable {
	
	@Column(nullable = false)
	@Required
	private String codigo;
	
	@Column(nullable = false)
	@Required
	private String descricao;
	
	@Column(nullable = true, length = 500)
	@Stereotype("MEMO")
	private String discriminacao;
	
	@Column
	private boolean fgts;
	
	@Column
	private boolean inss;
	
	@Column
	private boolean irrf;

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
}