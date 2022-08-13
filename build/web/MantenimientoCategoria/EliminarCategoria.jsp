<%-- 
    Document   : EliminarCategoria
    Created on : 05-04-2014, 12:25:50 PM
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<jsp:useBean id="cod" scope="page" class="sv.edu.udb.guia10.CodigoBean"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="nombre" value="${param.OP}"/>
<sql:update var="eliminar" dataSource="jdbc/mysql">
delete from categoria where Nombre_Categoria='<c:out value="${nombre}"/>'
</sql:update>
       <jsp:forward page="Eliminar.jsp"> 
 <jsp:param name="resultado" value="Datos Eliminados Correctamente"/> 
 </jsp:forward> 
    </body>
</html>
