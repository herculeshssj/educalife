package br.com.hslife.educalife.enumeration;

public enum StatusLancamento {

	AGENDADO("Agendado"),
	REGISTRADO("Registrado"),
	CONFIRMADO("Confirmado"),
	QUITADO("Quitado");
	
	private String descricao;
	
	private StatusLancamento(String descricao) {
		this.descricao = descricao;
	}
	
	public String getDescricao() {
		return this.descricao;
	}
}
