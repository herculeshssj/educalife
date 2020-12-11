package br.com.hslife.educalife.test;

import org.junit.*;

import br.com.hslife.educalife.model.*;
import br.com.hslife.educalife.patterns.*;

public class GenericBuilder {

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void test() {
		// Sugestão
        // https://docs.oracle.com/javase/tutorial/reflect/member/methodInvocation.html
        // https://knpcode.com/java/invoke-getters-and-setters-using-java-reflection/
        
        try {

            Builder<Anotacao> anotacaoBuilder = new Builder<>(new Anotacao());

            Anotacao anotacao = anotacaoBuilder.set("anotacao", "Conteúdo de exemplo").build();
    
            System.out.println("Classe Anotação");
            System.out.println(anotacao);
            System.out.println(anotacao.getAnotacao());
            
            System.out.println("Classe Cargo");
            Builder<Cargo> cargoBuilder = new Builder<>(new Cargo());
            Cargo cargo = cargoBuilder
            		.set("codigoCbo", "12345")
            		.set("denominacao", "Cargo de teste")
            		.set("ativo", true)
            		.build();
            System.out.println(cargo.getCodigoCbo());
            System.out.println(cargo.getDenominacao());
            System.out.println(cargo.isAtivo());

        } catch (Exception e) {
            e.printStackTrace();
        }
	}

}
