<%-- 
   
    Rf162156
 DC161113
MG162032
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<jsp:useBean id="cod" scope="page" class="sv.edu.udb.guia10.CodigoBean"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" media="screen" href="Estilo.css" /> 
        <link rel="stylesheet" href="estilos.css">
        <link rel="stylesheet" href="style.css">
        <title>Tabla_autor</title>
    </head>
    <body>
        <div class="login-header">
            <h1>Datos del Autor</h1>
        </div>
        <c:set var="Nombre" value="${param.Nombre}"/>
        <c:set var="Apellido" value="${param.Apellido}"/>
        <c:set var="CN" value="${param.CN}"/>
        <c:set var="PA" value="${param.PA}"/>
        <sql:update var="insertar" dataSource="jdbc/mysql">
            insert into autor (Nombre,Apellido,Ciudad_nacimiento,Pais_nacimiento) values (?,?,?,?)
            <sql:param value="${Nombre}"/>
            <sql:param value="${Apellido}"/>
            <sql:param value="${CN}"/>
            <sql:param value="${PA}"/>
        </sql:update>
        <sql:query var="q1" dataSource="jdbc/mysql">
            SELECT * from autor
        </sql:query>
         <div class="datagrid">
             <table>
                <thead><tr><th>Nombre Autor</th><th>Apellido Autor</th><th>Ciudad de Nacimiento</th><th>Pais de Nacimiento</th></tr></thead>
                <tbody>
               <c:forEach var="name" items="${q1.rows}">
                   <tr class="alt"><td><c:out value="${name.Nombre}"/></td><td><c:out value="${name.Apellido}"/></td>
                       <td><c:out value="${name.Ciudad_nacimiento}"/></td><td><c:out value="${name.Pais_nacimiento}"/></td></tr>
                   </c:forEach>
                </tbody>
            </table>
         </div>
    </body>
</html>
