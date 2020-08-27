package br.com.hslife.educalife.enumeration;

public enum PublicoAlvo {
	
	GERAL("Público em Geral"),
	INTERNO("Público Interno"),
	EXTERNO("Público Externo");
	
	private String descricao;
	
	private PublicoAlvo(String descricao) {
		this.descricao = descricao;
	}
	
	public String getDescricao() {
		return this.descricao;
	}
 
}
