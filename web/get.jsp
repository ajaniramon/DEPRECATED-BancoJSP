<%-- 
    Document   : get
    Created on : 30-sep-2015, 9:30:13
    Author     : alumno
--%>

<%@page import="com.fpmislata.banco.business.domain.EntidadBancaria"%>
<%@page import="com.fpmislata.banco.persistence.impl.jdbc.EntidadBancariaDAOImplJDBC"%>
<%@page import="com.fpmislata.banco.persistence.EntidadBancariaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImplJDBC();
    String idEntidadBancaria = request.getParameter("idEntidadBancaria");
    EntidadBancaria entidadBancaria = entidadBancariaDAO.get(Integer.parseInt(idEntidadBancaria));

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GET</title>
    </head>
    <body>
        <table border="1">
            <tr>
                <td>Nombre</td>
                <td>Código Entidad</td>
                <td>Fecha creación</td>
                <td>Dirección</td>
                <td>CIF</td>
            </tr>            
            <tr> 
                <td><%=entidadBancaria.getNombre()%></td>
                <td><%=entidadBancaria.getCodigoEntidad()%></td>
                <td><%=entidadBancaria.getFechaCreacion()%></td>
                <td><%=entidadBancaria.getDireccion()%></td>
                <td><%=entidadBancaria.getCif()%></td>
            </tr>

        </table>
    </body>
</html>
