<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	
	<jsp:include page="plantillas/Cabecera.jsp"></jsp:include>
		
		<%if(request.getParameter("experiencia")==null)
			response.sendRedirect("NuevoEmpleado.jsp");
			
			%>
		
		<ul>
  			<li>Nombre: <%=request.getParameter("nombre") %> </li>
  			<li>Apellidos: <%=request.getParameter("apellidos") %> </li>
  			<li>CodProvincia: <%=request.getParameter("provincia") %> </li>
  			<li>Conocimientos: 
  				<% 
  				String[] conocimientos = request.getParameterValues("conocimientos[]"); 
  				
  				if(conocimientos==null || conocimientos.length==0){%>
  				
  				No hay lista de conocimientos </li>
  				<%} else { %>
  					<ul>
  					<% for (String c: conocimientos){
  						out.println("<li>"+c+"</li>");
  					}
  						%>
  						
  					</ul>
  				</li>
  				<% }%>
  				
  		
  			<li>Fecha nacimiento: <%=request.getParameter("fechaNacimiento") %> </li>
  			<li>Experiencia: <%=request.getParameter("experiencia") %> </li>
  			
		</ul>

	
	
	
	<jsp:include page="plantillas/Pie.jsp"></jsp:include>