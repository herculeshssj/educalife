package br.com.hslife.educalife.enumeration;

public enum TipoParametro {

	TEXTO("Texto"),
	INTEIRO("Inteiro"),
	REAL("Real"),
	BOOLEANO("Booleano");
	
	private String descricao;
	
	private TipoParametro(String descricao) {
		this.descricao = descricao;
	}

	public String toString() {
		return descricao;
	}
}
