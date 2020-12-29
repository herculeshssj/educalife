package br.com.hslife.educalife.sample;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Sample {

    @Autowired
    SamplePessoaFisica samplePessoaFisica;

    @Autowired
    SamplePessoaJuridica samplePessoaJuridica;

    @Autowired
    SampleContaBanco sampleContaBanco;

    @Autowired
    SampleDocumentoIdentidade sampleDocumentoIdentidade;

    @Autowired
    SampleUsuario sampleUsuario;
    
    /*
        Invoca todos os métodos que populam a base
    */
    public void populaBase() {
        //SampleCargo.populaCargo();
        samplePessoaFisica.populaBase();
        samplePessoaJuridica.populaBase();
        sampleContaBanco.populaBase();
        sampleDocumentoIdentidade.populaBase();
        sampleUsuario.populaBase();
    }
}
