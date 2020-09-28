<%@include file="../xava/imports.jsp"%>

<%@page import="java.util.Iterator"%>
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
	MetaModule module = null;
	String description = null;
	for (Iterator i = modules.getAll(request).iterator(); i.hasNext(); ) {
		MetaModule m = (MetaModule)i.next();
		if (m.getName().equals("Banco")) {
			module = (MetaModule)m;
			description = module.getDescription(request.getLocale());
			break;
		}
	}
	

 %>
      <ul class="nav navbar-nav">
      	<li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          	<xava:message key="cadastrosBasicos"/>
          </a>
          <ul class="dropdown-menu">
            <li><a href="<%=modules.getModuleURI(request, module)%>?init=true" title="<%=description%>"><xava:message key="cadastroBanco"/></a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><xava:message key="hhrr"/></a>
          <ul class="dropdown-menu">
            <li><a href='#'><xava:message key="offices"/></a></li>
            <li><a href='#'><xava:message key="employees"/></a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><xava:message key="products"/></a>
          <ul class="dropdown-menu">
            <li><a href='#'><xava:message key="productlines"/></a></li>
            <li><a href='#'><xava:message key="products"/></a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><xava:message key="orders"/></a>
          <ul class="dropdown-menu">
            <li><a href='#'><xava:message key="customers"/></a></li>
            <li><a href='#'><xava:message key="orders"/></a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><xava:message key="payments"/></a>
          <ul class="dropdown-menu">
            <li><a href='#'><xava:message key="payments"/></a></li>
          </ul>
        </li>
      </ul>
	  <%
    
	  if (Is.emptyString(NaviOXPreferences.getInstance().getAutologinUser())) {
	    String userName = Users.getCurrent();
	   %>
      <ul class="nav navbar-nav navbar-right">
 	    <li><a  href="<%=request.getContextPath()%>/naviox/signOut.jsp" class="sign-in"><xava:message key="signout"/> (<%=userName%>)</a></li>
 	    </ul>
	<%
	  }
	%> <!-- no modules -->
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

