package br.com.hslife.educalife.sample;

import java.io.IOException;
import java.io.InputStream;
import java.util.Optional;
import java.util.Properties;

import org.openxava.jpa.XPersistence;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.com.hslife.educalife.dao.MenuDAO;
import br.com.hslife.educalife.dao.UsuarioDAO;
import br.com.hslife.educalife.model.ModuloSistema;
import br.com.hslife.educalife.model.Usuario;
import br.com.hslife.educalife.patterns.Builder;

@Component
public class Sample {

    @Autowired
    SampleProcesso sampleProcesso;

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
    SampleEmpresaUnidadeDepartamento sampleEmpresaUnidadeDepartamento;

    @Autowired
    UsuarioDAO usuarioDAO;
    
    /*
        Invoca todos os métodos que populam a base
    */
    public void populaBase() {
        verificaPresencaUsuarioAdmin();
        verificaPresencaMenuSistema();
        //SampleCargo.populaCargo();
        //samplePessoaFisica.populaBase();
        //samplePessoaJuridica.populaBase();
        //sampleContaBanco.populaBase();
        //sampleDocumentoIdentidade.populaBase();
        //sampleUsuario.populaBase();
        //sampleEmpresaUnidadeDepartamento.populaBase();
        //sampleColaborador.populaBase();
        sampleProcesso.populaBase();
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

    /*
        Verificar a presença do cadastro dos menus do sistema.
        Caso a tabela esteja vazia, será efetuado o cadastro dos
        menus.
    */
    private void verificaPresencaMenuSistema() {

        // Verifica se existem menus cadastrados
        if (MenuDAO.buscarMenus().isEmpty()) {
            try (InputStream inputStream = this.getClass().getClassLoader().getResourceAsStream("menu.properties")) {

                Properties props = new Properties();
                props.load(inputStream);

                for (Object key : props.keySet()) {
                    ModuloSistema modulo = new ModuloSistema();
                    modulo.setNome((String)key);
                    modulo.setMenu((String)props.get(key));

                    XPersistence.getManager().persist(modulo);
                }

                XPersistence.commit();

            } catch (IOException ex) {
                ex.printStackTrace();
            } catch (Exception e) {
                XPersistence.rollback();
                e.printStackTrace();
            }
        }
       
    }
}
