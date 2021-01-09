package br.com.hslife.educalife.helper;

import java.util.Optional;

import javax.validation.ValidationException;

import br.com.hslife.educalife.dao.ParametroSistemaDAO;
import br.com.hslife.educalife.model.ParametroSistema;

public class ParametroSistemaHelper {

    public String getConsultaCepRestApiUrl() {
        Optional<ParametroSistema> parametro = new ParametroSistemaDAO().findByCodigo("CONSULTA_CEP_REST_API_URL");

        if (parametro.isPresent())
            return parametro.get().getValor();
        else
            throw new ValidationException("URL da consulta de CEP não configurado!");
    }
    
}
