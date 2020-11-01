package br.com.hslife.educalife.schedule;

import org.springframework.stereotype.*;

@Component("populaBaseService")
public class PopulaBase {

	public void populaBase() {
		System.out.println("Base populada com sucesso!");
	}
}
