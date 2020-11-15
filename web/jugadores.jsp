<%@page contentType="text/html" pageEncoding="UTF-8"
        import = "java.sql.*"
        %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Examen final</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>      
        <script>
            $(document).ready(function(){
                listarNombre();

                $("#btnListar").click(function(){                    
                    Guardarjuga();
                }) 
                
                function Guardarjuga(){
                    $.ajax({
                        url:"NewServlet",
                        dataType:"html",
                        data: $("#formjuga").serialize()+"&control=INSERT",
                        method: "POST",
                        success:function(respuestaDelServidor){
                            if (respuestaDelServidor=1){
                                 $("#msjExito").show();
                                $("#msjExito").hide(3000);
                                 document.getElementById("formcate").reset();
                                 setInterval(function(){  window.location.replace("reportecate.jsp"); }, 4000);
                                
                            }else{
                                 $("#msjError").show();
                                $("#msjError").hide(3000);
                            }
                        }
                    })                    
                }                
                function listarNombre(){
                    $.ajax({
                         url:"NewServlet",
                         dataType:"html",
                         data:"control=LISTAR",
                         method: "POST",
                         success:function(respuesta){
                             $("#nombre").html(respuesta);
                         },
                         error:function(objAjax, estado, excepcion){
                             alert("Error al mostrar en registros");
                         }
                    })
                }
            })
        </script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar navbar-dark btn-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
              <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item active">
                    <a class="nav-link" href="jugadores.jsp"><h5>Examen final</h5> <span class="sr-only">(current)</span></a>
                </li>
               <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Registro
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                       <a class="dropdown-item" href="jugadores.jsp">Jugadores</a>
                       <a class="dropdown-item" href="Categorias.jsp">Categorias</a>
                       <a class="dropdown-item" href="partidas.jsp">Partidas</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Reporte
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                       <a class="dropdown-item" href="reportecate.jsp">Inscripcion por categoria</a>
                       <a class="dropdown-item" href="reportepartidas.jsp">Inscripcion por partidas</a>
                    </div>
                </li>
              </ul>
            </div>
        </nav>
            <div class="p-3 mb-2 bg-warning">
        <div class="container-md p-3 mb-2 bg-info" style="min-height: 900px;">       
            <center><h1 class="mt-5 mb-5"> Registro de jugadores </h1></center>
            <div class="alert alert-danger" role="alert" style="display: none;" id="msjError">
               Error al ejecutar
              </div>
            <a href="Categorias.jsp" type="button" name="lista1" value="lista1" id="btnListar1" class="btn btn-success"> 
                    <i class="fas fa-"></i>
                  Registro categorias  
            </a>                 
            <a href="partidas.jsp" type="button" name="lista2" value="lista2" id="btnListar2" class="btn btn-success"> 
                    <i class="fas fa-"></i>
                    Registro partidas
            </a> 
            <br>
            <form action="NewServlet" method="POST" id="formjuga" >
                <br>
                <div class="form-group">
                    <label class="text-light" for="formGroupExampleInput">Nombre</label>
                    </div>
                  <input type="text" class="form-control" id="nombre"  name="nombre" placeholder="Ingrese un nombre" required>
                  <br> 
                  <div class="form-group">
                    <label class="text-light" for="formGroupExampleInput">Apellido</label>
                    </div>
                  <input type="text" class="form-control" id="apellido"  name="apellido" placeholder="Ingrese un apellido" required>
                  <br>
                  <div class="form-group">
                    <label class="text-light" for="formGroupExampleInput">Edad</label>
                    </div>
                  <input type="text" class="form-control" id="edad"  name="edad" placeholder="Ingresar su edad" required>
                  <br>
                  <div class="form-group">
                    <label class="text-light" for="formGroupExampleInput">Pais</label>
                    </div>
                  <input type="text" class="form-control" id="pais"  name="pais" placeholder="Pais que pertenece" required>
                  <br>
                <a href="reportecate.jsp" type="button" name="listar" value="listar" id="btnListar" class="btn btn-success"> 
                    <i class="fas fa-"></i>
                    Listar
                    </a>                 
                <a href="reportecate.jsp" type="button" value="Cancelar" id="btnCancelar" class="btn btn-danger"> 
                    Cancelar
                    </a>                 
             </form>           
        </div>
                <div>
            <%
                Connection conn = null;
                Statement st = null;
                String url = "jdbc:mysql://localhost:3306/final";
                String us = "root";
                String pass = "";
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = (Connection)DriverManager.getConnection(url,us,pass);
                    st = conn.createStatement();
                }catch(Exception ex){
                }
            %>
        </div>
            </div>
    </body>
</html>