package br.com.hslife.educalife.helper;

import java.time.LocalDate;
import java.util.zip.CRC32;

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
        CRC32 crc = new CRC32();
        crc.update(numeroProcessoGerado.getBytes());
        numeroProcessoGerado = numeroProcessoGerado + String.valueOf(crc.getValue()).substring(7, 9);
        
        return numeroProcessoGerado;
    }
}
