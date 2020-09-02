package br.com.hslife.educalife.log;

import java.io.*;
import java.sql.*;
import java.util.*;
import java.util.Date;

import org.apache.commons.logging.*;
import org.openxava.application.meta.*;
import org.openxava.jpa.*;
import org.openxava.util.*;

import br.com.hslife.educalife.model.*;

enum LogOperacao {
	CRIACAO, ALTERACAO, CONSULTA, EXCLUSAO;
}

public class LogAccessTrackerProvider implements IAccessTrackerProvider {

	private static Log log = LogFactory.getLog(LogAccessTrackerProvider.class);

	private static String fileName;

	@SuppressWarnings("rawtypes")
	public void consulted(String modelName, Map key) {
		log("CONSULTED: user=" + Users.getCurrent() + ", model=" + modelName + ", key=" + key, LogOperacao.CONSULTA,
				modelName, key.toString(), null);
	}

	@SuppressWarnings("rawtypes")
	public void created(String modelName, Map key) {
		log("CREATED: user=" + Users.getCurrent() + ", model=" + modelName + ", key=" + key, LogOperacao.CRIACAO,
				modelName, key.toString(), null);
	}

	@SuppressWarnings("rawtypes")
	public void modified(String modelName, Map key, Map<String, Object> oldChangedValues,
			Map<String, Object> newChangedValues) {
		StringBuffer changes = new StringBuffer();
		for (String property : oldChangedValues.keySet()) {
			if (changes.length() > 0)
				changes.append(", ");
			changes.append(Labels.getQualified(property));
			changes.append(": ");
			changes.append(Strings.toString(oldChangedValues.get(property)));
			changes.append(" --> ");
			changes.append(Strings.toString(newChangedValues.get(property)));
		}
		log("MODIFIED: user=" + Users.getCurrent() + ", model=" + modelName + ", key=" + key + ", changes=" + changes,
				LogOperacao.ALTERACAO, modelName, key.toString(), changes.toString());
	}

	@SuppressWarnings("rawtypes")
	public void removed(String modelName, Map key) {
		log("REMOVED: user=" + Users.getCurrent() + ", model=" + modelName + ", key=" + key, LogOperacao.EXCLUSAO,
				modelName, key.toString(), null);
	}

	private static void log(String line, LogOperacao action, String modelName, String key, String changes) {
		try {
			createFileIfNotExist();
			FileOutputStream f = new FileOutputStream(getFileName(), true);
			PrintStream p = new PrintStream(f);
			p.println(line);
			p.close();
			f.close();

			// Salvando o log na base
			/*
			if (!modelName.equalsIgnoreCase("LogAcesso")) {
				LogAcesso logAcesso = new LogAcesso(new Timestamp(new Date().getTime()), Users.getCurrent(),
						Users.getCurrentIP(), action.toString(), modelName, key, changes);

				XPersistence.getManager().persist(logAcesso);
			}
			*/
			
		} catch (Exception ex) {
			log.warn(XavaResources.getString("log_tracker_log_failed"), ex);
		}
	}

	private static void createFileIfNotExist() throws Exception {
		Files.createFileIfNotExist(getFileName());
	}

	@SuppressWarnings("rawtypes")
	private static String getFileName() {
		if (fileName == null) {
			Collection applicationNames = MetaApplications.getApplicationsNames();
			String app = "openxava-app";
			if (!applicationNames.isEmpty())
				app = applicationNames.iterator().next().toString().toLowerCase();
			fileName = Files.getOpenXavaBaseDir() + app + "-access.log";
		}
		return fileName;
	}
}
