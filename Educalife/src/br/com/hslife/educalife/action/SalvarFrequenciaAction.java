package br.com.hslife.educalife.action;

import org.openxava.actions.*;

public class SalvarFrequenciaAction extends ViewBaseAction {
	
	@Override
	public void execute() throws Exception {
		System.out.println(getView().getValues());
		System.out.println("Frequência foi salva com sucesso!");
		getView().clear();
		
		addMessage("frequencia_salva_sucesso", "Aluno 0001");
	}

}


//{frequencia=[{aula={dataAula=2020-10-28, id=4028b88174d504040174d505fb6b000d}, compareceu=false, justificativa=, abonado=false}]}