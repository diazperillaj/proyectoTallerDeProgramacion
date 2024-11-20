<%-- 
    Document   : cUsuario
    Created on : Nov 15, 2024, 11:33:26 PM
    Author     : Juan
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Destino"%>
<%
    List<Destino> destinos = (List<Destino>) request.getAttribute("destinos");
%>
<!DOCTYPE html>
<html>





    <head>
        <title>Registrar Usuario</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="resources/css/styles.css?v=1.0"/>

        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">

        <script>
            function validarFormulario() {
                var nombre = document.forms["createUser"]["usuario"].value;
                var contra = document.forms["createUser"]["contra"].value;
                var rol = document.forms["createUser"]["rol"].value;
                if (nombre === "" || contra === "" || rol === "") {
                    alert("Por favor, complete todos los campos.");
                    return false;
                }

                return true;
            }
        </script>


    </head>
    <body>

        <%
            RequestDispatcher rd = request.getRequestDispatcher("header.jsp");
            rd.include(request, response);
        %>
        <div class="main">
            <div class="principal_container">

                <div class="card text-center mb-3" style="width: 18rem;">
                    <%for (Destino d : destinos) {%>
                    <div class="card-body">
                        <h5 class="card-title"><b><%= d.getLugar()%></b></h5>
                        <p class="card-text">
                            <br>Fecha <br><strong><%= d.getFecha().toString()%></strong>
                            <br>Precio <br><strong><%= d.getPrecio()%></strong>
                        </p>
                        <form action="Comprar" method="POST">
                            <input type="hidden" name="destinoId" value="<%=d.getId()%>">
                            <button type="submit" class="btn btn-primary">Comprar</button>
                        </form>
                    </div>
                    <%}%>
                </div>

            </div>
        </div>
    </body>

</html>