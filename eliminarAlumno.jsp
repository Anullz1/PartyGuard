<%-- 
    Document   : eliminarAlumno
    Created on : 11/07/2018, 03:58:22 PM
    Author     : ardil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Alumno</title>
    </head>
    <body>
    <center><h1>Registro Eliminado Exitosamente</h1></center>
    <br>
    <%@page import="java.sql.*" %>
    <%@page import="conexion.ConectaUniversidad"%>
    <%
     int numCuenta=Integer.parseInt(request.getParameter("numCuenta"));
    ConectaUniversidad conexion=new ConectaUniversidad("jdbc:oracle:thin:@127.0.0.1:1521:XE","PARTYGUARDS","ironman_1234");  
    String deleteQuery="delete from alumnos where numCuenta ='"+numCuenta+"'";
    int c= conexion.ejecutaSentenciaCambios(deleteQuery);
    if(c==1){
    %>
    <center><h2>Se han Borrado Alumno de la B.D. Exitosamente</h2></center>
    <center><h2>Numero de Cuenta: <%= numCuenta%></h2></center>
    <% 
    }else{
    %>
    <center><h2>Error no se encontró usuario Verifica PLOX</h2>
        <%
        }
        %>
    
    </body>
</html>
