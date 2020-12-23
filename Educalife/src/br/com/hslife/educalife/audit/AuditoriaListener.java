package br.com.hslife.educalife.audit;

import java.util.*;

import org.hibernate.envers.*;
import org.openxava.util.*;

public class AuditoriaListener implements RevisionListener {

	@Override
	public void newRevision(Object userRevision) {
		AuditoriaEntity auditoria = (AuditoriaEntity) userRevision;
		auditoria.setUsuario(Users.getCurrent() == null ? "INTERNAL": Users.getCurrent());
		auditoria.setEnderecoIp(Users.getCurrentIP() == null ? "127.0.0.1" : Users.getCurrentIP());
		auditoria.setDataAlteracao(Calendar.getInstance(TimeZone.getTimeZone("UTC")).getTime());		
	}
}