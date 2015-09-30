<%-- 
    Document   : delete
    Created on : 30-sep-2015, 9:17:29
    Author     : alumno
--%>

<%@page import="com.fpmislata.banco.persistence.EntidadBancariaDAO"%>
<%@page import="com.fpmislata.banco.persistence.impl.jdbc.EntidadBancariaDAOImplJDBC"%>
<%@page import="com.fpmislata.banco.business.domain.EntidadBancaria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImplJDBC();
    String idEntidadBancaria = request.getParameter("idEntidadBancaria");
    System.out.println(idEntidadBancaria);
    boolean deleted = entidadBancariaDAO.delete(Integer.parseInt(idEntidadBancaria));
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%=deleted %>
        <% if (deleted) { %>
        <h1>Borrado</h1>
        <% } else { %>
        <h1>No borrado</h1>
        <% }%>
    </body>
</html>
