
<%@page import="com.fpmislata.banco.business.domain.EntidadBancaria"%>
<%@page import="com.fpmislata.banco.persistence.dao.impl.jdbc.EntidadBancariaDAOImplJDBC"%>
<%@page import="com.fpmislata.banco.persistence.dao.EntidadBancariaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImplJDBC();
    String idEntidadBancaria = request.getParameter("idEntidadBancaria");
    EntidadBancaria entidadBancaria = entidadBancariaDAO.get(Integer.parseInt(idEntidadBancaria));

%>
{"idEntidadBancaria":"<%=entidadBancaria.getIdEntidadBancaria()%>",
"nombre":"<%=entidadBancaria.getNombre()%>",
"codigoEntidad":"<%=entidadBancaria.getCodigoEntidad()%>",
"fechaCreacion":"<%=entidadBancaria.getFechaCreacion()%>",
"direccion":"<%=entidadBancaria.getDireccion()%>",
"cif":"<%=entidadBancaria.getCif()%>"
}