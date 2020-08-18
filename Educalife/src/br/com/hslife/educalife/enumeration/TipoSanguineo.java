package br.com.hslife.educalife.enumeration;

public enum TipoSanguineo { 
	A_POSITIVO("A+"),
	A_NEGATIVO("A-"),
	B_POSITIVO("B+"),
	B_NEGATIVO("B-"),
	AB_POSITIVO("AB+"),
	AB_NEGATIVO("AB-"),
	O_POSITIVO("O+"),
	O_NEGATIVO("O-");
	
	private String descricao;
	
	private TipoSanguineo(String descricao) {
		this.descricao = descricao;
	}

	public String toString() {
		return descricao;
	}
}
