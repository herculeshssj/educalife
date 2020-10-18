package br.com.hslife.educalife.enumeration;

public enum Desconto {

	PERCENTUAL_IGUAL("Percentual (=)"),
	PERCENTUAL_MAIORQUE("Percentual (>)"),
	PERCENTUAL_MENORQUE("Percentual (<)"),
	VALOR_IGUAL("Valor (=)"),
	VALOR_MAIORQUE("Valor (>)"),
	VALOR_MENORQUE("Valor (<)");
	
	private String descricao;
	
	private Desconto(String descricao) {
		this.descricao = descricao;
	}
	
	public String getDescricao() {
		return this.descricao;
	}
}
