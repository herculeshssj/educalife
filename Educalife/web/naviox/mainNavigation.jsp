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
<%@page import="br.com.hslife.educalife.helper.MenuHelper"%>

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
		
		<%
			for (String menu : MenuHelper.obterMenus()) {
				if (UsuarioAutorizacao.isMenuAutorizado(menu)) {
		%>
		
		<li class="dropdown">
			<a href="#" class="dropdown-toggle sign-in" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
				<xava:message key="<%=menu %>"/>
			</a>
			<ul class="dropdown-menu">
		<%
					for (String submenu : MenuHelper.obterSubmenus(menu)) {
						if (UsuarioAutorizacao.isAutorizado(submenu)) {
		%>
				<li><a href="<%=modules.getModuleURI(request, menuModulos.get(submenu))%>?init=true"><xava:message key="<%=submenu %>"/></a></li>
		<%
						}
					}
		%>
			</ul>
		</li>
		<%
				}
			}
		%>
        
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

