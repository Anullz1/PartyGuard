<% 
        String nombreUsuario=request.getParameter("login");
        String passwordUsuario=request.getParameter("pass");


%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido al Sistema de presatamos de equipo SITE</title>
   
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--Para sitio DRW diseño web responsivo ADAPTATIVO a cualquier navegador y dispositivo-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="style.css">
     <!-- Bootstrap core CSS -->
   <link href="css/bootstrap.min.css" rel="stylesheet">
   <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<!-- Custom styles for this template -->    
    <link href="css/navbar.css" rel="stylesheet">
 <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/main.css" rel="stylesheet">
  <script type="text/javascript" src="./demobar_files/jquery-latest.min.js"></script>
<script type="text/javascript" src="./demobar_files/jquery.min.js"></script>
<script type="text/javascript" src="./demobar_files/bootstrap.js"></script>
<link type="text/css" rel="stylesheet" href="./demobar_files/bootstrap.css">
  <script src="js/ie-emulation-modes-warning.js"></script>  
        
        
        
        
    </head>
    <body>
    <center><h1>Inicio de Sesión Exitoso</h1></center>
    <center><h2>Bienvenido Administrador</h2></center>
        <hr><br>
       
        <center>El Usuario es: <%= nombreUsuario%></center>
        <hr><hr><br>
        <center>La contraseña es  <%= passwordUsuario%></center>
        <hr><br>
        <center> Continuar <p><a href="menuAd.html" class="btn btn-primary" role="button">ir a Menu de inicio</a></center>
    </body>
    
      <script type="js/jquery-1.11.3.min"></script>
        <script src="js/bootstrap.js"></script>
        
</html>