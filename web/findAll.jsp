<%-- 
    Document   : index
    Created on : 30-sep-2015, 8:40:20
    Author     : alumno
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.fpmislata.banco.business.domain.EntidadBancaria"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="com.fpmislata.banco.persistence.impl.jdbc.EntidadBancariaDAOImplJDBC"%>
<%@page import="com.fpmislata.banco.persistence.EntidadBancariaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImplJDBC();
    List<EntidadBancaria> entidades = entidadBancariaDAO.findAll();
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");

%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            .bold{
                font-weight: bold;
            }

        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>JSP Page</title>
    </head>
    <body>
 

        <table border='1'>
            <tr><td class='bold'>Nombre</td>
                <td class='bold'>Código Entidad</td>
                <td class='bold'>Fecha creación</td>
                <td class='bold'>Dirección</td>
                <td class='bold'>CIF</td>
            </tr>
            <% for (EntidadBancaria entidadBancaria : entidades) {%>
            <tr>
                <td> <%=entidadBancaria.getNombre()%> </td>
                <td> <%=entidadBancaria.getCodigoEntidad()%> </td>
                <td> <%=simpleDateFormat.format(entidadBancaria.getFechaCreacion())%> </td>
                <td> <%=entidadBancaria.getDireccion()%> </td>
                <td> <%=entidadBancaria.getCif()%> </td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
