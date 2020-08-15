package br.com.hslife.educalife.enumeration;

public enum SituacaoContrato {
	
	NOVO("Novo"), 
	VIGENTE("Vigente"), 
	RENEGOCIADO("Renegociado"), 
	ENCERRADO("Encerrado"), 
	QUITADO("Quitado");
	
	private String descricao;
	
	private SituacaoContrato(String descricao) {
		this.descricao = descricao;
	}
	
	public String getDescricao() {
		return this.descricao;
	}
 
}
