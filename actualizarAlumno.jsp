<%
String numCuenta=request.getParameter("numCuenta");
int numeroCuenta=Integer.parseInt(numCuenta);
session.setAttribute("num", numCuenta);
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Busqueda de Alumnos </title>
        <link href="css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="styles.css">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript">
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}
function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
</script>
</head>
<body onLoad="MM_preloadImages('imasges/ibero.jpg')">
<nav class="navbar navbar-default">
  <div class="container-fluid"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#defaultNavbar1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
      <a class="navbar-brand" href="#">Brand</a></div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="defaultNavbar1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Link<span class="sr-only">(current)</span></a></li>
        <li><a href="#">Link</a></li>
        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Link</a></li>
        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
      </ul>
    </div>
    
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
</nav>
    </head>
    <body>
    <center> <h1> Actualizar Datos de Alumno </h1> </center>
    <%@page import ="java.sql.*"%>
    <%@page import ="conexion.ConectaUniversidad"%>
    <% 
    ConectaUniversidad conexion= new ConectaUniversidad("jdbc:oracle:thin:@127.0.0.1:1521:XE","PARTYGUARDS","ironman_1234");
    String consulta="select * from alumnos where idAlumn = '"+numCuenta+"'";
 ResultSet rs= conexion.ejecutaSentencia(consulta);
 if(rs.next()){
 
    %>
    <center><h2> Ingresa Datos </h2></center>
    <table width="280" heigth="200" border="2" align="center">
        <form method="post" action="actualizarAlumno2.jsp">
        
            <div class="container">
      <div class="input-group input-group-lg"><span class="input-group-addon">Nombre</span>
        <input type="text" name="nombre" value="<%= rs.getString(2)%>" class="form-control" placeholder="Ingresa Nombre">
      </div>   
      <div class="input-group input-group-lg"><span class="input-group-addon">Apellido Paterno</span>
        <input type="text" name="ap1" value="<%= rs.getString(3)%>" class="form-control" placeholder="Ingresa Apellido">
      </div>  
      <div class="input-group input-group-lg"><span class="input-group-addon">Apellido Materno</span>
        <input type="text" name="ap2" value="<%= rs.getString(4)%>" class="form-control" placeholder="Ingresa Materno">
      </div>  <hr><br>
      
            <center><input type="submit"class="btn btn-primary" name="Submit" value="Actualizar"></center><hr><br>
              <center><input type="reset" class="btn btn-danger"name="Submit2" value="Borrar"></center>

        </form>

    </table>
            
            <% } else{%>
            <h2> No existe un alumno con el numero de cuenta ingresado </h2>
            
            <%}
            %>
            
                    <script type="js/jquery-1.11.3.min"></script>
        <script src="js/bootstrap.js"></script>
    </body>
</html>
