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
            <link rel="stylesheet" href="estilos.css">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Modificar</h1>
        
        <h3>Selecciona poer apellido</h3>
  <form method="Post" action="ModificarAutor.jsp">
  <sql:query var="q1" dataSource="jdbc/mysql">
SELECT * from autor
</sql:query>
<select name="MO">
<c:forEach var="name" items="${q1.rows}">
<option><c:out value="${name.Apellido}"/></option>
</c:forEach>
</select><br>
<input type="submit" value="Modificar" name="enviar">
</form>
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
