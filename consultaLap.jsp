<%-- 
    Document   : consultaAlumno
    Created on : 27/06/2018, 04:40:24 PM
    Author     : ardil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Laptops Activas</title>
    </head>
    <body>
        <h1>Consulta de Laptops</h1>
        <%@page import="java.sql.*" %>
        <%@page import="conexion.ConectaUniversidad" %>
        <table align="center" border="2">
            <tr>
                <%
               ConectaUniversidad conexion =new ConectaUniversidad("jdbc:oracle:thin:@127.0.0.1:1521:XE","PARTYGUARDS","ironman_1234");
               String consulta="select * from laptops";
              ResultSet rs = conexion.ejecutaSentencia(consulta);
               ResultSetMetaData rsmd = rs.getMetaData();
               int col = rsmd.getColumnCount();
               
                for(int k=1;k<col;k++){ //inicia for
                   
                %>
                <td align ="center"><%= rsmd.getColumnName(k)%></td>
                    <%
                            }
                    %>
            </tr>
            <%
                while(rs.next()){
            %>
            <tr>
                <td align="center"> <%= rs.getString(1)%> </td>
                <td align="center"> <%= rs.getString(2)%> </td>
                <td align="center"> <%= rs.getString(3)%> </td>
                <td align="center"> <%= rs.getString(4)%> </td>
            </tr>
            <%
                   }
            %>
        </table>  
        
    </body>
</html>
