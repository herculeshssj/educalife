package br.com.hslife.educalife.action;

import java.util.Map;

import org.openxava.actions.ViewBaseAction;
import org.openxava.validators.ValidationException;

import br.com.hslife.educalife.helper.ProcessoHelper;

public class GerarNumeroDocumentoProcessoAction extends ViewBaseAction {
    
    @Override
    @SuppressWarnings("rawtypes")
    public void execute() throws Exception {

        // Pega o tipo de documento
        Map tipoDocumento = (Map)getView().getValue("tipoDocumento");
        String numeroDocumento = "";

        // Verifica se o tipo de documento foi selecionado
        if (tipoDocumento.containsKey("id")) {
            // Passa o ID do tipo de documento para gerar o número
            numeroDocumento = ProcessoHelper.gerarNumeroDocumento((String)tipoDocumento.get("id"));
        } else {
            throw new ValidationException("Não foi selecionado um tipo de documento!");
        }
        
        getView().setValue("numeroDocumento", numeroDocumento);
    }
}
