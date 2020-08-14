package br.com.hslife.educalife.enumeration;

public enum TipoContato {
	
	TELEFONE("Telefone"),
	EMAIL("E-Mail"),
	SOCIAL("Rede Social");
	
	private String descricao;
	
	private TipoContato(String descricao) {
		this.descricao = descricao;
	}
	
	public String getDescricao() {
		return this.descricao;
	}
 
}
