package br.com.hslife.educalife.sample;

import java.math.BigInteger;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.openxava.jpa.XPersistence;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.com.hslife.educalife.dao.PessoaJuridicaDAO;
import br.com.hslife.educalife.enumeration.TipoContato;
import br.com.hslife.educalife.enumeration.Uf;
import br.com.hslife.educalife.model.Contato;
import br.com.hslife.educalife.model.Departamento;
import br.com.hslife.educalife.model.Empresa;
import br.com.hslife.educalife.model.Endereco;
import br.com.hslife.educalife.model.PessoaJuridica;
import br.com.hslife.educalife.model.TipoLogradouro;
import br.com.hslife.educalife.model.Unidade;
import br.com.hslife.educalife.patterns.Builder;
import br.com.hslife.educalife.util.Util;

@Component
public class SampleEmpresaUnidadeDepartamento implements ISample {

    @Autowired
    PessoaJuridicaDAO daoPessoaJuridica;
    
    @Override
    public void populaBase() {
        try {

            // Busca uma pessoa jurídica
            BigInteger quantidadePessoas = daoPessoaJuridica.countPessoaJuridica();
            int indexPessoa = Util.getRandomInt(quantidadePessoas.intValue());
            PessoaJuridica pessoaJuridica = daoPessoaJuridica.obterPessoaJuridicaPorIndice(indexPessoa);

            // Contrato social
            StringBuilder contratoSocial = new StringBuilder()
                .append("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit, sapien et eleifend convallis, turpis quam bibendum neque, at rutrum eros lorem et risus. Aenean posuere enim eget quam sodales faucibus. Aliquam sagittis nibh tempus ligula facilisis iaculis. Fusce porta felis vitae gravida hendrerit. Fusce quis velit feugiat, eleifend ipsum ac, mollis justo. Phasellus ornare vestibulum neque, eget cursus ante dictum vel. Cras venenatis nisl in nibh finibus, vel lacinia ante viverra.")
                .append("<br/><br/>")
                .append("Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas cursus ipsum nisi, sit amet porttitor tellus posuere vel. Vestibulum lobortis cursus dolor tincidunt sagittis. Ut orci sem, porta sed lacinia id, varius ut tortor. Duis non ante et nunc egestas tristique non ut metus. Nulla facilisi. Phasellus et sem in risus laoreet maximus sed ac sem. Cras et quam ultricies, hendrerit lectus lacinia, fermentum magna. Phasellus dui odio, efficitur convallis tellus quis, luctus luctus ipsum. Nunc sit amet aliquam arcu. Praesent a pharetra nisi. Suspendisse at tristique sapien. Nunc at diam elementum, varius ligula vel, accumsan tellus. Nunc accumsan sapien ultrices nunc efficitur, nec porttitor lorem auctor. Maecenas ut ipsum laoreet, dapibus mauris tempus, vestibulum quam.")
                .append("<br/><br/>")
                .append("Aliquam erat volutpat. Donec non tincidunt magna. Integer molestie suscipit ligula, sed cursus urna scelerisque nec. Sed sed massa vel quam vehicula ullamcorper sed in quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin fermentum, nulla non porttitor finibus, tortor massa faucibus lorem, vitae porttitor neque libero sit amet purus. Sed et porta nulla. In urna sapien, finibus pharetra urna in, mollis dignissim metus.")
                .append("<br/><br/>")
                .append("Vestibulum in sollicitudin nibh. Nunc vitae metus id lorem elementum placerat non vitae sem. Morbi consectetur posuere pellentesque. Phasellus bibendum libero sit amet efficitur malesuada. Donec in nisl turpis. Nam condimentum gravida elit, vitae condimentum nisi. Curabitur luctus, neque a dapibus semper, orci est laoreet nisi, at fringilla ex ex non diam.")
                .append("<br/><br/>")
                .append("Suspendisse vehicula urna vitae mi dapibus, id hendrerit justo pretium. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aliquam laoreet nisi accumsan arcu mollis tempor. Nullam eu gravida mi, at fermentum tellus. Praesent orci lectus, congue eu pharetra sit amet, dignissim eget ante. Ut arcu neque, viverra a convallis ut, ornare vel lorem. Fusce pretium metus risus, ultrices euismod justo laoreet eget. Mauris commodo sem felis, in lobortis sem aliquam at. Nullam ac tristique magna, id euismod ante. Donec posuere felis vel eros posuere accumsan. Nullam congue pulvinar leo. Vivamus posuere laoreet velit, nec efficitur mauris molestie ut. Ut faucibus at tellus eget eleifend. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque efficitur nisl sollicitudin euismod tempor.")
                .append("<br/><br/>");

            // Constrói a instância da empresa
            Builder<Empresa> empresaBuilder = new Builder<>(new Empresa());
            Empresa empresa = empresaBuilder
                .set("pessoaJuridica", pessoaJuridica)
                .set("dataCriacao", LocalDate.now())
                .set("contratoSocial", contratoSocial.toString())
                .build();

            // Salva a empresa
            XPersistence.getManager().persist(empresa);


            /***  Popula a entidade Endereço para atribuir a Unidade ***/

            // Estado
            Uf[] estados = Uf.values();
            int indexEstado = Util.getRandomInt(27);

            // TipoLogradouro
            List<TipoLogradouro> tiposLogradouros = XPersistence.getManager()
                .createQuery("SELECT t FROM TipoLogradouro t", TipoLogradouro.class)
                .getResultList();

            int indexLogradouro = Util.getRandomInt(tiposLogradouros.size());
            TipoLogradouro tipoLogradouro = tiposLogradouros.get(indexLogradouro);

            // Endereço
            Builder<Endereco> enderecoBuilder = new Builder<>(new Endereco());
            Endereco endereco = enderecoBuilder
                .set("logradouro", Util.getRandomString())
                .set("bairro", Util.getRandomString().substring(0,8))
                .set("cidade", Util.getRandomString().substring(0,8))
                .set("cep", String.valueOf(Util.getRandomInt(99999999)))
                .set("numero", String.valueOf(Util.getRandomInt(9999)))
                .set("uf", estados[indexEstado])
                .set("tipoLogradouro", tipoLogradouro)
                .build();

            /*** Contato ***/
            String telefone = new StringBuilder()
                .append("(")
                .append(String.valueOf(Util.getRandomInt(999)))
                .append(") ")
                .append(String.valueOf(Util.getRandomInt(999)))
                .append("-")
                .append(String.valueOf(Util.getRandomInt(999)))
                .append("-")
                .append(String.valueOf(Util.getRandomInt(999)))
                .toString();
            Contato contato = new Contato();
            contato.setDescricao(telefone);
            contato.setTipoContato(TipoContato.TELEFONE);

            // Salva o contato
            XPersistence.getManager().persist(contato);
            
            // Atribui em um collection
            Collection<Contato> contatos = new ArrayList<>();
            contatos.add(contato);

            // Constrói a instância da unidade matriz
            Builder<Unidade> unidadeBuilder = new Builder<>(new Unidade());
            Unidade unidade = unidadeBuilder
                .set("nomeUnidade", "Unidade " + Util.getRandomString().substring(0,8) + " da " + empresa.getNomeEmpresa())
                .set("horarioFuncionamento", "Seg à Sex de 9h às 17h")
                .set("endereco", endereco)
                .set("contatos", contatos)
                .set("empresa", empresa)
                .build();

            // Salva a unidade
            XPersistence.getManager().persist(unidade);


            // Constrói as instâncias dos departamentos da unidade
            String[] listaDepartamentos = new String[]{"Coordenação-Geral","Administrativo","Finanças","Pessoal","Ensino","Extensão","Pesquisa e Desenvolvimento","TI"};

            Departamento departamento = null;
            Builder<Departamento> departamentoBuilder = null;
            for (String nomeDepartamento : listaDepartamentos) {
                departamentoBuilder = new Builder<>(new Departamento());
                departamento = departamentoBuilder
                    .set("nomeDepartamento", nomeDepartamento)
                    .set("unidade", unidade)
                    .build();

                // Salva o departamento
                XPersistence.getManager().persist(departamento);
            }

            // Salva todas as alterações
			XPersistence.commit();

        } catch (Exception e) {
            XPersistence.rollback();
            e.printStackTrace();
        }
        
    }
}
