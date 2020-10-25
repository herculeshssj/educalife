package br.com.hslife.educalife.enumeration;

public enum TipoCodigoContabil {

	RECEITA("Receita"), 
	DESPESA("Despesa");
	
	private String descricao;
	
	private TipoCodigoContabil(String descricao) {
		this.descricao = descricao;
	}
	
	public String getDescricao() {
		return this.descricao;
	}
}
