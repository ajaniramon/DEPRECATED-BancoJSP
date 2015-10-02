<%-- 
    Document   : index
    Created on : 30-sep-2015, 8:40:20
    Author     : alumno
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.fpmislata.banco.business.domain.EntidadBancaria"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="com.fpmislata.banco.persistence.dao.impl.jdbc.EntidadBancariaDAOImplJDBC"%>
<%@page import="com.fpmislata.banco.persistence.dao.EntidadBancariaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImplJDBC();
    List<EntidadBancaria> entidades = entidadBancariaDAO.findAll();
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    int contador = 0;
%>
[
<%  
    // Mejor usar el for viejo porque queda mas limpio por el ocntador.
    for(EntidadBancaria entidadBancaria: entidades) {
    contador++;%>
{

    "idEntidadBancaria":<%=entidadBancaria.getIdEntidadBancaria()%>,
    "nombre":"<%=entidadBancaria.getNombre()%>",
    "codigoEntidad":<%=entidadBancaria.getCodigoEntidad()%>,
    "fechaCreacion":"<%=entidadBancaria.getFechaCreacion()%>",
    "direccion":"<%=entidadBancaria.getDireccion()%>",
    "cif":"<%=entidadBancaria.getCif()%>"
}
<% if((contador) < entidades.size()){ %>
    ,
<% } %>

<% } %>
]