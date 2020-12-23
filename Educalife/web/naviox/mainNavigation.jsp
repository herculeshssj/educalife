<%@include file="../xava/imports.jsp"%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="org.openxava.application.meta.MetaModule"%>
<%@page import="org.openxava.util.Users"%>
<%@page import="org.openxava.util.Is"%>
<%@page import="com.openxava.naviox.Modules"%>
<%@page import="com.openxava.naviox.util.NaviOXPreferences"%>
<%@page import="br.com.hslife.educalife.security.UsuarioAutorizacao"%>

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
        
        <% if (UsuarioAutorizacao.isAutorizado("Cadastros")) { %>
	      	<li class="dropdown">
	          <a href="#" class="dropdown-toggle sign-in" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
	          	<xava:message key="menuCadastros"/>
	          </a>
	          <ul class="dropdown-menu">
	            <% if (UsuarioAutorizacao.isAutorizado("Banco")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("Banco"))%>?init=true"><xava:message key="cadastroBanco"/></a></li>
	            <% } %>
	            
	            <% if (UsuarioAutorizacao.isAutorizado("Cargo")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("Cargo"))%>?init=true"><xava:message key="cadastroCargo"/></a></li>
	            <% } %>
	            
	            <% if (UsuarioAutorizacao.isAutorizado("Deficiencia")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("Deficiencia"))%>?init=true"><xava:message key="cadastroDeficiencia"/></a></li>
	            <% } %>
	            
	            <% if (UsuarioAutorizacao.isAutorizado("Escolaridade")) { %>            
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("Escolaridade"))%>?init=true"><xava:message key="cadastroEscolaridade"/></a></li>
	            <% } %>
	            
	            <% if (UsuarioAutorizacao.isAutorizado("EstadoCivil")) { %>
					<li><a href="<%=modules.getModuleURI(request, menuModulos.get("EstadoCivil"))%>?init=true"><xava:message key="cadastroEstadoCivil"/></a></li>
				<% } %>
				
				<% if (UsuarioAutorizacao.isAutorizado("Etnia")) { %>
					<li><a href="<%=modules.getModuleURI(request, menuModulos.get("Etnia"))%>?init=true"><xava:message key="cadastroEtnia"/></a></li>
				<% } %>
				
				<% if (UsuarioAutorizacao.isAutorizado("FormaPagamento")) { %>
					<li><a href="<%=modules.getModuleURI(request, menuModulos.get("FormaPagamento"))%>?init=true"><xava:message key="cadastroFormaPagamento"/></a></li>
				<% } %>
				
				<% if (UsuarioAutorizacao.isAutorizado("Genero")) { %>
					<li><a href="<%=modules.getModuleURI(request, menuModulos.get("Genero"))%>?init=true"><xava:message key="cadastroGenero"/></a></li>
				<% } %>
				
				<% if (UsuarioAutorizacao.isAutorizado("Pais")) { %>
					<li><a href="<%=modules.getModuleURI(request, menuModulos.get("Pais"))%>?init=true"><xava:message key="cadastroPais"/></a></li>
				<% } %>
				
				<% if (UsuarioAutorizacao.isAutorizado("TipoLogradouro")) { %>
					<li><a href="<%=modules.getModuleURI(request, menuModulos.get("TipoLogradouro"))%>?init=true"><xava:message key="cadastroTipoLogradouro"/></a></li>
				<% } %>
	          </ul>
	        </li>
        <% } %>
        
        <% if (UsuarioAutorizacao.isAutorizado("Ensino")) { %>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle sign-in" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
	          	<xava:message key="menuEnsino"/>
	          </a>
	          <ul class="dropdown-menu">
	          	
	          	<% if (UsuarioAutorizacao.isAutorizado("Curso")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("Curso"))%>?init=true"><xava:message key="ensinoCurso"/></a></li>
	            <% } %>
	            
	            <% if (UsuarioAutorizacao.isAutorizado("Turma")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("Turma"))%>?init=true"><xava:message key="ensinoTurma"/></a></li>
	            <% } %>
	            
	            <% if (UsuarioAutorizacao.isAutorizado("Avaliacao")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("Avaliacao"))%>?init=true"><xava:message key="ensinoAvaliacao"/></a></li>
	            <% } %>
	            
	            <% if (UsuarioAutorizacao.isAutorizado("InscricaoTurma")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("InscricaoTurma"))%>?init=true"><xava:message key="ensinoInscricao"/></a></li>
	            <% } %>
	            
	            <% if (UsuarioAutorizacao.isAutorizado("DiarioClasse")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("DiarioClasse"))%>?init=true"><xava:message key="ensinoDiarioClasse"/></a></li>
	            <% } %>
	            
	            <% if (UsuarioAutorizacao.isAutorizado("DiarioNotas")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("DiarioNotas"))%>?init=true"><xava:message key="ensinoDiarioNotas"/></a></li>
	            <% } %>
	            
	            <% if (UsuarioAutorizacao.isAutorizado("HistoricoAluno")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("HistoricoAluno"))%>?init=true"><xava:message key="ensinoHistoricoAluno"/></a></li>
	            <% } %>
	          </ul>
	        </li>
        <% } %>
        
        <% if (UsuarioAutorizacao.isAutorizado("Administracao")) { %>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle sign-in" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
	          	<xava:message key="menuAdministracao"/>
	          </a>
	          <ul class="dropdown-menu">
	          
	          	<% if (UsuarioAutorizacao.isAutorizado("Empresa")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("Empresa"))%>?init=true"><xava:message key="admEmpresa"/></a></li>
	            <% } %>
	            
	            <% if (UsuarioAutorizacao.isAutorizado("Unidade")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("Unidade"))%>?init=true"><xava:message key="admUnidade"/></a></li>
	            <% } %>
	            
	            <% if (UsuarioAutorizacao.isAutorizado("Departamento")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("Departamento"))%>?init=true"><xava:message key="admDepartamento"/></a></li>
	            <% } %>
	            
	            <% if (UsuarioAutorizacao.isAutorizado("Localidade")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("Localidade"))%>?init=true"><xava:message key="admLocalidade"/></a></li>
	            <% } %>
	            
	            <% if (UsuarioAutorizacao.isAutorizado("Contrato")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("Contrato"))%>?init=true"><xava:message key="admContrato"/></a></li>
	            <% } %>
	          </ul>
	        </li>
		<% } %>
		
		<% if (UsuarioAutorizacao.isAutorizado("Processos")) { %>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle sign-in" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
	          	<xava:message key="menuProcesso"/>
	          </a>
	          <ul class="dropdown-menu">
			  
				<% if (UsuarioAutorizacao.isAutorizado("Processo")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("Processo"))%>?init=true"><xava:message key="procProcesso"/></a></li>
				<% } %>
				
				<% if (UsuarioAutorizacao.isAutorizado("DocumentoProcesso")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("DocumentoProcesso"))%>?init=true"><xava:message key="procDocumentoProcesso"/></a></li>
	            <% } %>

				<% if (UsuarioAutorizacao.isAutorizado("TipoDocumento")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("TipoDocumento"))%>?init=true"><xava:message key="procTipoDocumento"/></a></li>
	            <% } %>  
				
				<% if (UsuarioAutorizacao.isAutorizado("TipoProcesso")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("TipoProcesso"))%>?init=true"><xava:message key="procTipoProcesso"/></a></li>
	            <% } %>
	            
	          </ul>
	        </li>
        <% } %>
        
        <% if (UsuarioAutorizacao.isAutorizado("Financeiro")) { %>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle sign-in" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
	          	<xava:message key="menuFinanceiro"/>
	          </a>
	          <ul class="dropdown-menu">
	          
	          	<% if (UsuarioAutorizacao.isAutorizado("CodigoContabil")) { %>
	          		<li><a href="<%=modules.getModuleURI(request, menuModulos.get("CodigoContabil"))%>?init=true"><xava:message key="finCodigoContabil"/></a></li>
	          	<% } %>
	          	
	          	<% if (UsuarioAutorizacao.isAutorizado("Conta")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("Conta"))%>?init=true"><xava:message key="finConta"/></a></li>
	            <% } %>
	            
	            <% if (UsuarioAutorizacao.isAutorizado("Lancamento")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("Lancamento"))%>?init=true"><xava:message key="finLancamento"/></a></li>
	            <% } %>
	            
	            <% if (UsuarioAutorizacao.isAutorizado("ContaPagar")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("ContaPagar"))%>?init=true"><xava:message key="finContaPagar"/></a></li>
	            <% } %>
	            
	            <% if (UsuarioAutorizacao.isAutorizado("ContaReceber")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("ContaReceber"))%>?init=true"><xava:message key="finContaReceber"/></a></li>
	            <% } %>
	          </ul>
	        </li>
        <% } %>
        
        <% if (UsuarioAutorizacao.isAutorizado("Pessoal")) { %>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle sign-in" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
	          	<xava:message key="menuPessoal"/>
	          </a>
	          <ul class="dropdown-menu">
	          
	          	<% if (UsuarioAutorizacao.isAutorizado("Colaborador")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("Colaborador"))%>?init=true"><xava:message key="pessoalColaborador"/></a></li>
	            <% } %>
	            
	            <% if (UsuarioAutorizacao.isAutorizado("FolhaPagamento")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("FolhaPagamento"))%>?init=true"><xava:message key="pessoalFolhaPagamento"/></a></li>
	            <% } %>
	            
	            <% if (UsuarioAutorizacao.isAutorizado("Rubrica")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("Rubrica"))%>?init=true"><xava:message key="pessoalRubrica"/></a></li>
	            <% } %>
	          </ul>
	        </li>
        <% } %>
        
        <% if (UsuarioAutorizacao.isAutorizado("Opcao")) { %>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle sign-in" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
	          	<xava:message key="menuOpcao"/>
	          </a>
	          <ul class="dropdown-menu">
	          
	          	<% if (UsuarioAutorizacao.isAutorizado("ParametroSistema")) { %>
	          		<li><a href="<%=modules.getModuleURI(request, menuModulos.get("ParametroSistema"))%>?init=true"><xava:message key="opcaoParametro"/></a></li>
	          	<% } %>
	          	
	          	<% if (UsuarioAutorizacao.isAutorizado("Usuario")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("Usuario"))%>?init=true"><xava:message key="opcaoUsuario"/></a></li>
	            <% } %>
	            
	            <% if (UsuarioAutorizacao.isAutorizado("PapelUsuario")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("PapelUsuario"))%>?init=true"><xava:message key="opcaoUsuarioPapel"/></a></li>
				<% } %>
				
				<% if (UsuarioAutorizacao.isAutorizado("PermissaoMenuSistema")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("PermissaoMenuSistema"))%>?init=true"><xava:message key="opcaoPermissaoMenu"/></a></li>
	            <% } %>
	            
	            <% if (UsuarioAutorizacao.isAutorizado("LogAcesso")) { %>
	            	<li><a href="<%=modules.getModuleURI(request, menuModulos.get("LogAcesso"))%>?init=true"><xava:message key="opcaoLogAcesso"/></a></li>
	            <% } %>
	          </ul>
	        </li>
        <% } %>
        
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

