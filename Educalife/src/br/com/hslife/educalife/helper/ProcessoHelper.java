package br.com.hslife.educalife.helper;

import java.math.BigInteger;
import java.time.LocalDate;

import org.openxava.jpa.XPersistence;

import br.com.hslife.educalife.model.Departamento;
import br.com.hslife.educalife.model.Empresa;

public class ProcessoHelper {
    
    public static String gerarNumeroProcesso(Departamento departamento) {
        String numeroProcessoGerado = "";

        // Busca a empresa
        Empresa empresa = XPersistence.getManager()
            .createQuery("SELECT e FROM Departamento d JOIN d.unidade u JOIN u.empresa e WHERE d.id = :idDepartamento", Empresa.class)
            .setParameter("idDepartamento", departamento.getId())
            .getSingleResult();

        // Limpa o CNPJ da empresa
        String cpnjEmpresa = empresa.getCnpjEmpresa().replace(".", "").replace("-", "").replace("/", "");

        // Busca o próximo sequencial de processo
        Integer quantProcessos = (Integer)XPersistence.getManager()
            .createNativeQuery("select count(*) from processo p "+
                "inner join departamento d on d.id = p.id_departamento "+
                "inner join unidade u on u.id = d.id_unidade "+
                "inner join empresa e on e.id = u.id_empresa "+
                "where datepart(year, data_abertura) = datepart(year, getdate()) " + 
                "and e.id = :idEmpresa")
            .setParameter("idEmpresa", empresa.getId())
            .getSingleResult();

        // Sequencial do processo
        String sequencialProcesso = String.format("%06d", quantProcessos.intValue() + 1);
        
        // Pega o ano corrente
        String anoCorrente = Integer.toString(LocalDate.now().getYear());

        // Gera o número do processo sem o dígito verificador
        numeroProcessoGerado = cpnjEmpresa.substring(0, 8) + "." + sequencialProcesso + "/" + anoCorrente + "-";

        // Gera o dígito verificador
        numeroProcessoGerado = numeroProcessoGerado + digitoVerificador(cpnjEmpresa + sequencialProcesso + anoCorrente);

        return numeroProcessoGerado;
    }

    private static String digitoVerificador(String numeroProcesso) {
        // Declaração de variáveis
        int somaNumeros = 0;
        int digitoVerificador1 = 0;
        int digitoVerificador2 = 0;

        // Soma todos os números da String
        for (int i = 0; i < numeroProcesso.length(); i++) {
            somaNumeros = somaNumeros + Integer.parseInt(numeroProcesso.substring(i, i+1));
        }

        // Divide-se o número obtido por 11 e analisa a parte inteira da divisão
        int divisao = somaNumeros / (int)11;
        if (divisao > 9) {
            digitoVerificador1 = 0;
        } else {
            digitoVerificador1 = divisao;
        }

        // Adiciona o primeiro dígito verificador ao número do processo
        numeroProcesso = numeroProcesso + String.valueOf(digitoVerificador1);

        somaNumeros = 0;
        // Soma todos os números da String
        for (int i = 0; i < numeroProcesso.length(); i++) {
            somaNumeros = somaNumeros + Integer.parseInt(numeroProcesso.substring(i, i+1));
        }

        // Divide-se o número obtido por 14 e analisa a parte inteira da divisão
        divisao = somaNumeros / (int)14;
        if (divisao > 9) {
            digitoVerificador2 = 0;
        } else {
            digitoVerificador2 = divisao;
        }

        // Retorna os dígitos verificadores gerados
        return String.valueOf(digitoVerificador1) + String.valueOf(digitoVerificador2);
    }
}
