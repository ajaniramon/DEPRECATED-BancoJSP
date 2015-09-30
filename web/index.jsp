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
            .button {
                display: block;
                width: 115px;
                height: 25px;
                background: #4E9CAF;
                padding: 10px;
                text-align: center;
                border-radius: 5px;
                color: white;
                font-weight: bold;
            }

        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>JSP Page</title>
    </head>
    <body>


        <table border='1'>
            <tr><td class='bold'>Nombre</td>
                <td class="bold"> ACCIONES </td>
            </tr>
            <% for (EntidadBancaria entidadBancaria : entidades) {%>
            <tr>

                <td> <a href="get.jsp?idEntidadBancaria=<%=entidadBancaria.getIdEntidadBancaria()%>">
                        <%=entidadBancaria.getNombre()%> </a></td>
                <td> <a class="button" href="delete.jsp?idEntidadBancaria=<%=entidadBancaria.getIdEntidadBancaria()%>">
                        Borrar</a> </td>
            </tr>
            <%}%>
        </table>
        <br>
        <a class="button" href="insertData.html">Insertar</a>
    </body>
</html>