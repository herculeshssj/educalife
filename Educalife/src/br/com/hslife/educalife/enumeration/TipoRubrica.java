package br.com.hslife.educalife.enumeration;

public enum TipoRubrica {

	RENDIMENTO("Conta Corrente"), 
	DESCONTO("Conta Poupança");
	
	private String descricao;
	
	private TipoRubrica(String descricao) {
		this.descricao = descricao;
	}
	
	public String getDescricao() {
		return this.descricao;
	}
}
