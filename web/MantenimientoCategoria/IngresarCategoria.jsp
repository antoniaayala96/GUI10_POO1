<%-- 
    Document   : IngresarCategoria
    Created on : 05-04-2014, 12:12:14 PM
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
        <h1></h1>
         <c:set var="NC" value="${param.NC}"/>
         <c:set var="NL" value="${param.NL}"/>
         <sql:update var="insertar" dataSource="jdbc/mysql">
             insert into Categoria (Nombre_Categoria,Ejemplo_Libro) values (?,?)
             <sql:param value="${NC}"/>
             <sql:param value="${NL}"/>
         </sql:update>
  <jsp:forward page="Ingresar.jsp"> 
 <jsp:param name="resultado" value="Datos Eliminados Correctamente"/> 
 </jsp:forward> 
    </body>
</html>
