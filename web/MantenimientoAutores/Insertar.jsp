<%-- 
   
    Rf162156
 DC161113
MG162032
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Ingresar_datos</title>
  
  
  <link rel='stylesheet prefetch' href='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css'>

      <link rel="stylesheet" href="style.css">

  
</head>

<body>

  <link href='https://fonts.googleapis.com/css?family=Ubuntu:500' rel='stylesheet' type='text/css'>

<div class="login">
  <div class="login-header">
    <h1>Ingresar datos de Autor</h1>
  </div>
  <div class="login-form">
    <form method="POST" action="InsertAutor.jsp">
            <h3>Nombre: </h3>
            <input type="text" name="Nombre" placeholder="Nombre Autor" required=""><br>
            <h3>Apellido:</h3>
            <input type="text" name="Apellido" placeholder="Apellido Autor" required=""><br>
            <h3>Ciudad de Nacimiento:</h3>
            <input type="text" name="CN" placeholder="Ciudad Nacimiento" required=""><br>
            <h3>Pais de Nacimiento:</h3>
            <input type="text" name="PA" placeholder="Pais Autor" required="">
            <br>
            <input type="submit" value="Enviar" name="enviar" class="login-button"/>
    <br>
      </form>
  </div>
</div>

  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>

  

    <script  src="js/index.js"></script>




</body>

</html>



