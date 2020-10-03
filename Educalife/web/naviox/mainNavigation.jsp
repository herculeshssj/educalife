<%@include file="../xava/imports.jsp"%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="org.openxava.application.meta.MetaModule"%>
<%@page import="org.openxava.util.Users"%>
<%@page import="org.openxava.util.Is"%>
<%@page import="com.openxava.naviox.Modules"%>
<%@page import="com.openxava.naviox.util.NaviOXPreferences"%>

<jsp:useBean id="modules" class="com.openxava.naviox.Modules" scope="session"/>
<!-- 
<div role="navigation" class="navbar navbar-inverse navbar-fixed-top">
 -->
  <div class="container-fluid">
    <!-- Toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-navbar-collapse" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="main-navbar-collapse">
 <% 
if (modules.hasModules(request)) {
	
	Map<String, MetaModule> menuModulos = new HashMap<>();
	for (Iterator i = modules.getAll(request).iterator(); i.hasNext(); ) {
		MetaModule m = (MetaModule)i.next();
		menuModulos.put(m.getName(), m);
	}

 %>
      <ul class="nav navbar-nav">
      	<li>
          <a href="<%=request.getContextPath()%>/m/FirstSteps" class="sign-in" role="button" aria-haspopup="true" aria-expanded="false">
          	<xava:message key="menuInicio"/>
          </a>
        </li>
      	<li class="dropdown">
          <a href="#" class="dropdown-toggle sign-in" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          	<xava:message key="menuCadastros"/>
          </a>
          <ul class="dropdown-menu">
            <li><a href="<%=modules.getModuleURI(request, menuModulos.get("Banco"))%>?init=true"><xava:message key="cadastroBanco"/></a></li>
            <li><a href="<%=modules.getModuleURI(request, menuModulos.get("Cargo"))%>?init=true"><xava:message key="cadastroCargo"/></a></li>
            <li><a href="<%=modules.getModuleURI(request, menuModulos.get("Deficiencia"))%>?init=true"><xava:message key="cadastroDeficiencia"/></a></li>            
            <li><a href="<%=modules.getModuleURI(request, menuModulos.get("Escolaridade"))%>?init=true"><xava:message key="cadastroEscolaridade"/></a></li>
			<li><a href="<%=modules.getModuleURI(request, menuModulos.get("EstadoCivil"))%>?init=true"><xava:message key="cadastroEstadoCivil"/></a></li>
			<li><a href="<%=modules.getModuleURI(request, menuModulos.get("Etnia"))%>?init=true"><xava:message key="cadastroEtnia"/></a></li>
			<li><a href="<%=modules.getModuleURI(request, menuModulos.get("Genero"))%>?init=true"><xava:message key="cadastroGenero"/></a></li>
			<li><a href="<%=modules.getModuleURI(request, menuModulos.get("Pais"))%>?init=true"><xava:message key="cadastroPais"/></a></li>
			<li><a href="<%=modules.getModuleURI(request, menuModulos.get("TipoLogradouro"))%>?init=true"><xava:message key="cadastroTipoLogradouro"/></a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle sign-in" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          	<xava:message key="menuEnsino"/>
          </a>
          <ul class="dropdown-menu">
            <li><a href="<%=modules.getModuleURI(request, menuModulos.get("Curso"))%>?init=true"><xava:message key="ensinoCurso"/></a></li>
            <li><a href="<%=modules.getModuleURI(request, menuModulos.get("Turma"))%>?init=true"><xava:message key="ensinoTurma"/></a></li>
            <li><a href="<%=modules.getModuleURI(request, menuModulos.get("Avaliacao"))%>?init=true"><xava:message key="ensinoAvaliacao"/></a></li>
            <li><a href="<%=modules.getModuleURI(request, menuModulos.get("InscricaoTurma"))%>?init=true"><xava:message key="ensinoInscricao"/></a></li>
            <li><a href="<%=modules.getModuleURI(request, menuModulos.get("DiarioClasse"))%>?init=true"><xava:message key="ensinoDiarioClasse"/></a></li>
            <li><a href="<%=modules.getModuleURI(request, menuModulos.get("DiarioNotas"))%>?init=true"><xava:message key="ensinoDiarioNotas"/></a></li>
            <li><a href="<%=modules.getModuleURI(request, menuModulos.get("HistoricoAluno"))%>?init=true"><xava:message key="ensinoHistoricoAluno"/></a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle sign-in" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          	<xava:message key="menuAdministracao"/>
          </a>
          <ul class="dropdown-menu">
            <li><a href="<%=modules.getModuleURI(request, menuModulos.get("Empresa"))%>?init=true"><xava:message key="admEmpresa"/></a></li>
            <li><a href="<%=modules.getModuleURI(request, menuModulos.get("Unidade"))%>?init=true"><xava:message key="admUnidade"/></a></li>
            <li><a href="<%=modules.getModuleURI(request, menuModulos.get("Departamento"))%>?init=true"><xava:message key="admDepartamento"/></a></li>
            <li><a href="<%=modules.getModuleURI(request, menuModulos.get("Localidade"))%>?init=true"><xava:message key="admLocalidade"/></a></li>
            <li><a href="<%=modules.getModuleURI(request, menuModulos.get("Contrato"))%>?init=true"><xava:message key="admContrato"/></a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle sign-in" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          	<xava:message key="menuPessoal"/>
          </a>
          <ul class="dropdown-menu">
            <li><a href="<%=modules.getModuleURI(request, menuModulos.get("Colaborador"))%>?init=true"><xava:message key="pessoalColaborador"/></a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle sign-in" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          	<xava:message key="menuOpcao"/>
          </a>
          <ul class="dropdown-menu">
            <li><a href="<%=modules.getModuleURI(request, menuModulos.get("Usuario"))%>?init=true"><xava:message key="opcaoUsuario"/></a></li>
            <li><a href="<%=modules.getModuleURI(request, menuModulos.get("PapelUsuario"))%>?init=true"><xava:message key="opcaoUsuarioPapel"/></a></li>
            <li><a href="<%=modules.getModuleURI(request, menuModulos.get("LogAcesso"))%>?init=true"><xava:message key="opcaoLogAcesso"/></a></li>
          </ul>
        </li>
      </ul>
	   <!-- no modules -->
<% } else { 
     if (Is.emptyString(NaviOXPreferences.getInstance().getAutologinUser())) {
		  %>
      <ul class="nav navbar-nav navbar-right">
        <li>
				  <a href="<%=request.getContextPath()%>/m/SignIn" >
				      <xava:message key="signin"/>
				  </a>
				</li>
		  </ul>
		  <%
		   }
  } %>
   </div> <!--  end div .navbar-collapse -->
 </div> <!--  end div .ncontainer-fluid -->
 <!--
</div>   end div main navbar -->

