<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="jugadores.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>      
    </head>
    <body>
        <div class="container-md" style="min-height: 900px;">       
            <center><h1 class="mt-5 mb-5"> Reporte de partidas </h1></center>
            <div class="container">
            <div class="row">
              <div class="col">
                  <form class="form-inline">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
                  </form>
              </div>
                <div class="col-md-auto ">
               <a href="jugadores.jsp" class="btn btn-success mr-0" > <i class="fas fa-plus">  </i> Nuevo </a>
              </div>
            </div>
          </div>
            <br>
            <%
            ResultSet rs=null;
            String listar = "SELECT * from inscripcion2";
            rs=st.executeQuery(listar);
        %>
            <div class="p-3 mb-2 text-white">
            <table class="table table-hover mt-5">
                <thead class="overflow-auto thead-dark"" >
                <tr>
                  <th scope="col">Nombre</th>
                  <th scope="col">Partidas</th>
                </tr>
              </thead>
              <% 
                while(rs.next()){
            %>
                <tbody id="tabla">
                    <tr class="table-secondary">
                        <td><%= rs.getString(1)%></td>
                        <td><%= rs.getString(2)%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
            </div>
        </div>      
    </body>
</html>