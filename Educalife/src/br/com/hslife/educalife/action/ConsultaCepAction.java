package br.com.hslife.educalife.action;

import java.util.List;

import javax.persistence.NoResultException;
import javax.validation.ValidationException;

import org.openxava.actions.ViewBaseAction;
import org.openxava.jpa.XPersistence;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import br.com.hslife.educalife.enumeration.Uf;
import br.com.hslife.educalife.helper.ParametroSistemaHelper;
import br.com.hslife.educalife.model.TipoLogradouro;
import br.com.hslife.educalife.vo.Cep;

public class ConsultaCepAction extends ViewBaseAction {

    @Override
    public void execute() throws Exception {

        // Pega o CEP
        String cepInformado = (String)getView().getValue("endereco.cep");

        // Trata o CEP
        if (cepInformado != null && !cepInformado.trim().isEmpty()) {
            cepInformado = cepInformado.trim().replace("-", "");
        }

        ResponseEntity<List<Cep>> responseEntity = new RestTemplate()
            .exchange(new ParametroSistemaHelper().getConsultaCepRestApiUrl() + cepInformado,
                HttpMethod.GET,
                null,
                new ParameterizedTypeReference<List<Cep>>(){});

        List<Cep> ceps = responseEntity.getBody();

        Cep cep = null;
        for (Cep c : ceps) {
            cep = c;
            break; // Sai o loop
        }
        
        // Preenche os campos do formulário
        if (cep != null) {

            // Busca o tipo de logradouro
            TipoLogradouro tipoLogradouro = null;
            try {
                tipoLogradouro = XPersistence.getManager()
                    .createQuery("SELECT t FROM TipoLogradouro t WHERE UPPER(t.descricao) = :tipoLogradouro", TipoLogradouro.class)
                    .setParameter("tipoLogradouro", cep.getTipoLogradouro().toUpperCase())
                    .getSingleResult();
            } catch (NoResultException nre) {
                throw new ValidationException("Tipo de logradouro não cadastrado: " + cep.getTipoLogradouro());
            } catch (Exception e) {
                e.printStackTrace();
                throw new ValidationException(e);
            }

            getView().setValue("endereco.tipoLogradouro.codigo", tipoLogradouro.getCodigo());
            getView().setValue("endereco.tipoLogradouro.descricao", tipoLogradouro.getDescricao());
            getView().setValue("endereco.logradouro", cep.getLogradouro());
            getView().setValue("endereco.bairro", cep.getBairro());
            getView().setValue("endereco.cidade", cep.getCidade());
            getView().setValue("endereco.uf", Uf.valueOf(cep.getUf()));
        } else {
            throw new ValidationException("CEP não encontrado!");
        }
        
    }
}
