package br.com.hslife.educalife.schedule;

import org.springframework.stereotype.*;

import br.com.hslife.educalife.sample.Sample;

@Component("populaBaseService")
public class PopulaBase {

	public void populaBase() {
		Sample.populaBase();
	}
}