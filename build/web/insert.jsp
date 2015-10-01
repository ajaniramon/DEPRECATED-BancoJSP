<%-- 
    Document   : insert
    Created on : 30-sep-2015, 10:09:44
    Author     : alumno
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.fpmislata.banco.business.domain.EntidadBancaria"%>
<%@page import="com.fpmislata.banco.persistence.dao.EntidadBancariaDAO"%>
<%@page import="com.fpmislata.banco.persistence.dao.impl.jdbc.EntidadBancariaDAOImplJDBC"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImplJDBC();
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    String nombre = request.getParameter("nombre");
    String codigoEntidad = request.getParameter("codigoEntidad");
    String fechaCreacion = request.getParameter("fechaCreacion");
    String direccion = request.getParameter("direccion");
    String cif = request.getParameter("cif");

    EntidadBancaria entidadBancaria = new EntidadBancaria(nombre,
            Integer.parseInt(codigoEntidad),
            simpleDateFormat.parse(fechaCreacion),
            direccion,
            cif);
    entidadBancariaDAO.insert(entidadBancaria);
%>
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
        <h1>Insertado con éxito</h1>

        <a class="button" href="index.jsp">Volver</a>
    </body>
</html>
