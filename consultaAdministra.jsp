<%-- 
    Document   : consultaAlumno
    Created on : 27/06/2018, 04:38:47 PM
    Author     : front343
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de alumnos Inscritos</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="images/arrow.png">
        <link rel="stylesheet" type="text/css" href="uni.css">
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
        <h1>Consulta de Alumnos TUVCH </h1>
        <%@page import = "java.sql.*" %> 
        <%@page import = "conexion.ConectaUniversidad"%> 
        
        <table align="center" border="2">
            <tr>
                <%
      ConectaUniversidad conexion = new ConectaUniversidad("jdbc:oracle:thin:@127.0.0.1:1521:XE","PARTYGUARDS","ironman_1234");
                   String consulta = "select * from administradores";
                   ResultSet rs = conexion.ejecutaSentencia(consulta);
                   ResultSetMetaData rsmd = rs.getMetaData();
                   int col = rsmd.getColumnCount();
                   
                      for (int k=1;k<col;k++){//inicia for
                %>    
                <td align = "center"><%= rsmd.getColumnName(k) %> </td>
                <%
                      }
                %>
            </tr>
            
            <%
                   while(rs.next()){
            %>     
            <tr>
                <td align = "center"><%= rs.getString(1)%>   </td>
                <td align = "center"><%= rs.getString(2)%>   </td>
                <td align = "center"><%= rs.getString(3)%>   </td>
                <td align = "center"><%= rs.getString(4)%>   </td>
                <td align = "center"><%= rs.getString(5)%>   </td>
                <td align = "center"><%= rs.getString(6)%>   </td>
            </tr>
            <%
                   }
            %>
            
        </table>
        

        <script type="js/jquery-1.11.3.min"></script>        
        <script src="js/bootstrap.js"></script>
    </body>
</html>




