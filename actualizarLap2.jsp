<%
String idLap= (String)session.getAttribute("idLap");
String numLap = request.getParameter("numLap");
String estLap= request.getParameter("estLap");
String funcLap= request.getParameter("funcLap");

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Alumno</title>
    </head>
    <body>
    <center> <h1>Actualizar alumno</h1></center>
        <hr><br>
        
       <%@page import ="java.sql.*"%>
        <%@page import ="conexion.ConectaUniversidad"%>
        
        <%
        ConectaUniversidad conexion= new  ConectaUniversidad("jdbc:oracle:thin:@127.0.0.1:1521:XE","PARTYGUARDS","ironman_1234");
       String query="update laptops SET idLap='"+idLap+"', numLap='"+numLap+"',estLap='"+estLap+"' where idLap = '"+idLap+"'";
        int c=conexion.ejecutaSentenciaCambios(query);
        if(c==1){       
        %>
        <h1>Registro de alumno Actualizado!!</h1>
        
        <%}%>
    

</body>
</html>
