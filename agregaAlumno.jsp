<%-- 
    Document   : agregaAlumno
    Created on : 11/07/2018, 02:39:15 PM
    Author     : ardil
--%>
<% 
       String numeroCuenta = request.getParameter("numCuenta");
       String nombreAlu=request.getParameter("nombreAlu");
       String apePaterno=request.getParameter("apellidoPat");
       String apeMaterno=request.getParameter("apellidoMat");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Alumno</title>
    </head>
    <body>
    <center><h1>Alumno Agregado Correctamente!</h1></center>
    <hr><br>
    <%@page import="java.sql.*" %>
    <%@page import="conexion.ConectaUniversidad" %>
    <%
    int numCuenta=Integer.parseInt(request.getParameter("numCuenta"));
    ConectaUniversidad conexion=new ConectaUniversidad("jdbc:oracle:thin:@127.0.0.1:1521:XE","PARTYGUARDS","ironman_1234");
    String query="insert into ALUMNOS values ('"+numCuenta+"','"+nombreAlu+"','"+apePaterno+"','"+apeMaterno+"')";//referencia a los variables objetos creados arriba
    int c=conexion.ejecutaSentenciaCambios(query);
        if(c==1){
    %>
    <h2>Datos de Nuevo alumno</h2>
    <h3>Numero de cuenta: <%=numCuenta%></h3>
     <h3>Nombre Alumno: <%=nombreAlu%></h3>
     <h3>Apellido Paterno: <%=apePaterno%></h3>
     <h3>Apellido Materno: <%=apeMaterno%></h3>
     <%
         }
        %>
</body>
</html>
