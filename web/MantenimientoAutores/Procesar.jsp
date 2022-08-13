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
        <title>JSP Page</title>
    </head>
    <body>
  <c:set var="O" value="${param.Oculto}"/>
 <c:set var="Nombre" value="${param.Nombre}"/>
<c:set var="Apellido" value="${param.Apellido}"/>
<c:set var="CN" value="${param.CN}"/>
<c:set var="PN" value="${param.PN}"/>
<sql:update var="insertar" dataSource="jdbc/mysql">
Update autor set Nombre='<c:out value="${Nombre}"/>',Apellido='<c:out value="${Apellido}"/>',Ciudad_nacimiento='<c:out value="${CN}"/>',Pais_nacimiento='<c:out value="${PN}"/>' where Apellido='<c:out value="${O}"/>'
</sql:update>
    <jsp:forward page="Modificar.jsp"> 
 <jsp:param name="resultado" value="Datos Eliminados Correctamente"/> 
 </jsp:forward> 
    </body>
</html>
