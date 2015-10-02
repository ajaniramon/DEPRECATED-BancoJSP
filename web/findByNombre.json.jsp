<%@page import="com.fpmislata.banco.business.domain.EntidadBancaria"%>
<%@page import="java.util.List"%>
<%@page import="com.fpmislata.banco.persistence.dao.impl.jdbc.EntidadBancariaDAOImplJDBC"%>
<%@page import="com.fpmislata.banco.persistence.dao.EntidadBancariaDAO"%>
<%@page contentType="application/json" pageEncoding="UTF-8"%>
<%
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImplJDBC();
    String parameter = request.getParameter("nombre");
    List<EntidadBancaria> entidades = entidadBancariaDAO.findByNombre(parameter);
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