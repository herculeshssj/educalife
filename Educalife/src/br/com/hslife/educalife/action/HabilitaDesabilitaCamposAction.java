package br.com.hslife.educalife.action;

import java.util.*;

import org.openxava.actions.*;

public class HabilitaDesabilitaCamposAction extends OnChangePropertyBaseAction {

	@SuppressWarnings("rawtypes")
	@Override
	public void execute() throws Exception {
		
		if (getNewValue() != null) {
			
			boolean value = (boolean)getNewValue();
			
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
