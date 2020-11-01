package br.com.hslife.educalife.action;

import java.util.*;

import org.openxava.actions.*;
import org.openxava.jpa.*;

import br.com.hslife.educalife.model.*;

public class HabilitarDesabilitarCamposAction extends ViewBaseAction {

	@SuppressWarnings("rawtypes")
	@Override
	public void execute() throws Exception {
		
		// Busca a conta
		Conta conta = XPersistence.getManager().find(Conta.class, getView().getValue("id"));
		
		if (conta != null) {
			
			boolean value = conta.isAtivo();
			
			if (value) {
				Map viewValues = getView().getAllValues();
				getView().setViewName("cadastro_habilitado");
				getView().setValues(viewValues);
			} else {
				Map viewValues = getView().getAllValues();
				getView().setViewName("cadastro_desabilitado");
				getView().setValues(viewValues);
			}
			
		}		
	}
}
