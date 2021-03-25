package br.com.hslife.educalife.sample;

import java.util.Optional;

import org.openxava.jpa.XPersistence;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.com.hslife.educalife.dao.UsuarioDAO;
import br.com.hslife.educalife.model.PapelUsuario;
import br.com.hslife.educalife.model.Usuario;
import br.com.hslife.educalife.patterns.Builder;

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

    @Autowired
    SampleColaborador sampleColaborador;

    @Autowired
    UsuarioDAO usuarioDAO;
    
    /*
        Invoca todos os métodos que populam a base
    */
    public void populaBase() {
        verificaPresencaUsuarioAdmin();
        //SampleCargo.populaCargo();
        samplePessoaFisica.populaBase();
        samplePessoaJuridica.populaBase();
        sampleContaBanco.populaBase();
        sampleDocumentoIdentidade.populaBase();
        sampleUsuario.populaBase();
        sampleColaborador.populaBase();
    }

    private void verificaPresencaUsuarioAdmin() {
        // Verifica se o usuário admin está cadastrado na base.
        // Caso contrário, realiza o cadastro dele com suas
        // devidas permissões.
        Optional<Usuario> usuarioOptional = usuarioDAO.buscarPorLogin("admin");
        if (!usuarioOptional.isPresent()) {
            // Cadastra o usuário admin
            try {
                Builder<Usuario> usuarioBuilder = new Builder<Usuario>(new Usuario());
                Usuario usuario = usuarioBuilder
                    .set("login", "admin")
                    .set("senha", "admin")
                    .set("ativo", Boolean.TRUE)                
                    .build();

                // Salva o usuário
                XPersistence.getManager().persist(usuario);
                XPersistence.commit();
            } catch (Exception e) {
                XPersistence.rollback();
			    e.printStackTrace();
            }
        }
    }
}
