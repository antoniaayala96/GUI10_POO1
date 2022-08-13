<%-- 
    Document   : Ingresar
    Created on : 26-abr-2018, 19:37:58
    Author     : Guardado
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<jsp:useBean id="cod" scope="page" class="sv.edu.udb.guia10.CodigoBean"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="style.css">
           <link rel="stylesheet" href="estilos.css">
        <title>JSP Page</title>
    </head>
    <body>
            <div class="login">
                <div class="login-header">
                <h1>Ingresar datos de Categoria</h1>
              </div>
             <div class="login-form">   
                <form action="IngresarCategoria.jsp" method="POST">
                    <h3>Nombre Categoria</h3>
                    <input type="Text" name="NC" placeholder="Ingrese Categoria" required=""><br>
                    <h3>Nombre Libro</h3>
                    <input type="Text" name="NL" placeholder="Ingrese Libro" required=""><br>
                    <input type="submit" value="Ingresar" class="login-button">
                </form>
             </div>
<sql:query var="q1" dataSource="jdbc/mysql">
SELECT * from categoria order by Nombre_Categoria ASC
</sql:query>
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
            </div>
    </body>
</html>
