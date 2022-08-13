<%-- 
    Document   : Modificar
    Created on : 05-04-2014, 12:41:43 PM
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
                 <link type="text/css" rel="stylesheet" media="screen" href="estilos.css" /> 
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Modificar Libro</h1>
       <sql:query var="q1" dataSource="jdbc/mysql">
SELECT * from categoria order by Nombre_Categoria ASC
</sql:query>
         <form action="ModificarLibro.jsp" method="POST">
            Nombre Categoria:<br>
            <select name="OP">
          <c:forEach var="name" items="${q1.rows}">
<option><c:out value="${name.Nombre_Categoria}"/></option>
</c:forEach>
            </select><br>
Libro:<br>
<input type="Text" name="NL" placeholder="Ingrese Libro"><br>
            <input type="submit" value="Modificar">
            </select>
        </form>
    <div class="datagrid">
                <table>
                    <thead> <tr><th><b>Nombre Categoria</b></th><th><b>Libro</b></th></tr></thead>
                    <tbody
                        <c:forEach var="name" items="${q1.rows}">
                            <tr><td><c:out value="${name.Nombre_Categoria}"/></td><td><c:out value="${name.Ejemplo_Libro}"/></td></tr>
                        </c:forEach>
                    </tbody>
                </table>
        </div>
    </body>
</html>
