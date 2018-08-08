<%-- 
    Document   : agregaAlumno
    Created on : 11/07/2018, 02:39:15 PM
    Author     : ardil
--%>
<% 
       String idAdmi =request.getParameter("idAdmi");
       String nomAlu=request.getParameter("nomAlu");
       String salAdmi=request.getParameter("salAdmi");
       String entAdmi=request.getParameter("entAdmi");
       String numAlu=request.getParameter("numAlu");
       String idLap=request.getParameter("idLap");


%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Alumno</title>
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
        <nav role="navigation" class="navbar navbar-default navbar-inverse">

        <div class="navbar-header">
            <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle collapsed" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="" class="navbar-brand">Menu</a>
        </div>

        <div id="navbarCollapse" class="navbar-collapse collapse" aria-expanded="false" style="height: 1px;">
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.html">Inicio</a></li>
                <li><a href="http://www.tecvalledechalco.edu.mx/">Página Oficial</a></li>
                <li><a href="https://www.facebook.com/ElTUVCH/">Facebook</a></li>
                <li><a href="http://www.tecvalledechalco.edu.mx/servicios_escolares.php">Contacto</a></li>
            </ul>

        </div>

    </nav>
    
    </head>
    <body>
    <center><h1>Registro agregado de forma exitosa</h1></center>
    <hr><br>
    <%@page import="java.sql.*" %>
    <%@page import="conexion.ConectaUniversidad" %>
    <%
    int numCuenta=Integer.parseInt(request.getParameter("idLap"));
    ConectaUniversidad conexion=new ConectaUniversidad("jdbc:oracle:thin:@127.0.0.1:1521:XE","PARTYGUARDS","ironman_1234");
    String query="insert into administradores values ('"+idAdmi+"','"+numAlu+"','"+salAdmi+"','"+entAdmi+",'"+numAlu+"','"+idLap+"'')";//referencia a los variables objetos creados arriba
    int c=conexion.ejecutaSentenciaCambios(query);
        if(c==1){
    %>
    <h2>Salida de Laptops</h2>
    <h3>ID de Admistrador que presta: <%=idAdmi%></h3>
     <h3>Nombre Alumno que requiere el equipo de cómputo: <%=numAlu%></h3>
     <h3>horario de salida de la Laptop: <%=salAdmi%></h3>
     <h3>Horario de entrada de la Laptop <%=entAdmi%></h3>
     <h3>Matrica de Alumno <%=numAlu%></h3>
     <h3>ID de Laptop: <%=idLap%></h3>
     <%
         }
        %>
        
         <script type="js/jquery-1.11.3.min"></script>        
 <script src="js/bootstrap.js"></script>
        
</body>
</html>
