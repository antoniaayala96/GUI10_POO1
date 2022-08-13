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
          <link rel="stylesheet" href="style.css"> 
        <title>JSP Page</title>
    </head>
    <body>
        <div class="login">
       <div class="login-header">
            <h1>Ingresar datos de Autor</h1>
      </div>
        <c:set var="Nombre" value="${param.MO}"/>
        <sql:query var="q1" dataSource="jdbc/mysql">
             SELECT * from autor where Apellido='<c:out value="${Nombre}"/>'
        </sql:query>
             
              <div class="login-form">
    <form action="Procesar.jsp" method="POST">
        
        <c:forEach var="name" items="${q1.rows}">
            <h3>Nombre: </h3>
            <input type="text" value='${name.Nombre}' name="Nombre" required=""><br>
            <h3>Apellido: </h3>
            <input type="text" value='${name.Apellido}' name="Apellido" required=""><br>
            <h3>Ciudad de Nacimiento: </h3>
            <input type="text" value='${name.Ciudad_nacimiento}' name='CN' required=""><br>
            <h3>Pais de nacimiento: </h3>
            <input type="text" value='${name.Pais_nacimiento}' name="PN" required=""><br>
              <input type="text" hidden="hidden" name="Oculto" value="<c:out value="${Nombre}"/>" />
              <input type="submit" value='Modificar'><br>
        </c:forEach>
              
    </form>
              </div>
        </div>
    </body>
</html>
