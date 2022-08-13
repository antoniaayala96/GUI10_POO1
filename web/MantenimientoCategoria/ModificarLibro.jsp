<%-- 
    Document   : ModificarLibro
    Created on : 05-04-2014, 12:44:20 PM
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
        <h1>Hello World!</h1>
          <c:set var="OP" value="${param.OP}"/>
         <c:set var="NL" value="${param.NL}"/>
         <sql:update var="insertar" dataSource="jdbc/mysql">
             Update Categoria set Ejemplo_Libro='<c:out value="${NL}"/>' where Nombre_Categoria='<c:out value="${OP}"/>'
         </sql:update>
  <jsp:forward page="Modificar.jsp"> 
 <jsp:param name="resultado" value="Datos Eliminados Correctamente"/> 
 </jsp:forward>
    </body>
</html>
