package br.com.hslife.educalife.enumeration;

public enum TipoIdentidade { 
	RG("RG"), 
	TITULO_ELEITOR("Título de Eleitor"), 
	PIS_PASEP("PIS/PASEP"), 
	CARTEIRA_TRABALHO("Carteira de Trabalho"), 
	CERTIDAO_NASCIMENTO("Certidão de Nascimento"),
	CNH("CNH"), 
	DOC_MILITAR("Certificado de Reservista"), 
	PASSAPORTE("Passaporte");
	
	private String descricao;
	
	private TipoIdentidade(String descricao) {
		this.descricao = descricao;
	}

	public String toString() {
		return descricao;
	}
}
