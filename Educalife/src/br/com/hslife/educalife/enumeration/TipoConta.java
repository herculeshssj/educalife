package br.com.hslife.educalife.enumeration;

public enum TipoConta {

	CORRENTE("Conta Corrente"), 
	POUPANCA("Conta Poupança"), 
	CARTAO("Cartão de Crédito"), 
	INVESTIMENTO("Investimento");
	
	private String descricao;
	
	private TipoConta(String descricao) {
		this.descricao = descricao;
	}
	
	public String getDescricao() {
		return this.descricao;
	}
}
