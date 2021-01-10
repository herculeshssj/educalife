package br.com.hslife.educalife.sample;

import java.math.BigInteger;
import java.time.LocalDate;

import org.openxava.jpa.XPersistence;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.com.hslife.educalife.dao.CargoDAO;
import br.com.hslife.educalife.dao.DepartamentoDAO;
import br.com.hslife.educalife.dao.PessoaFisicaDAO;
import br.com.hslife.educalife.model.Cargo;
import br.com.hslife.educalife.model.Colaborador;
import br.com.hslife.educalife.model.Departamento;
import br.com.hslife.educalife.model.PessoaFisica;
import br.com.hslife.educalife.patterns.Builder;
import br.com.hslife.educalife.util.Util;

@Component
public class SampleColaborador implements ISample {

    @Autowired
    PessoaFisicaDAO daoPessoaFisica;

    @Autowired
    CargoDAO daoCargo;

    @Autowired
    DepartamentoDAO daoDepartamento;
    
    @Override
    public void populaBase() {
        
        try {

            // Busca uma pessoa física
            BigInteger quantidadePessoas = daoPessoaFisica.countPessoaFisica();
            int indexPessoa = Util.getRandomInt(quantidadePessoas.intValue());
            PessoaFisica pessoaFisica = daoPessoaFisica.obterPessoaFisicaPorIndice(indexPessoa);

            // Busca um cargo
            BigInteger quantidadeCargos = daoCargo.countCargo();
            int indexCargo = Util.getRandomInt(quantidadeCargos.intValue());
            Cargo cargo = daoCargo.obterCargoPorIndice(indexCargo);

            // Busca um departamento
            BigInteger quantidadeDepartamentos = daoDepartamento.countDepartamento();
            int indexDepartamento = Util.getRandomInt(quantidadeDepartamentos.intValue());
            Departamento departamento = daoDepartamento.obterDepartamentoPorIndice(indexDepartamento);

            Builder<Colaborador> colaboradorBuilder = new Builder<>(new Colaborador());
            Colaborador colaborador = colaboradorBuilder
                .set("matricula", String.valueOf(Util.getRandomInt(999999) + "-" + Util.getRandomInt(9)))
                .set("cargo", cargo)
                .set("dataAdmissao", LocalDate.now())
                .set("departamento", departamento)
                .set("pessoaFisica", pessoaFisica)
                .build();

            // Salva a conta bancária
            XPersistence.getManager().persist(colaborador);
			XPersistence.commit();

		} catch (Exception e) {
			XPersistence.rollback();
			e.printStackTrace();
		}
        
    }
}
