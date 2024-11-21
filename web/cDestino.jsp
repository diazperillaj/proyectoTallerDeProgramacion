<%-- 
    Document   : cDestino
    Created on : Nov 20, 2024, 9:28:53 PM
    Author     : Juan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear Destino</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="resources/css/styles.css?v=1.0"/>
    </head>
    <body>
        <% 
            RequestDispatcher rd = request.getRequestDispatcher("header.jsp");
            rd.include(request, response);
        %>
        <div class="main_destinos_container">
            <div class="destinos_container">
                <h1>Crear Destino</h1>
                <form action="CrearDestino" method="POST">
                    <label for="destino">Destino:</label>
                    <input type="text" id="destino" name="destino" placeholder="Ingrese el destino" required>

                    <label for="precio">Precio:</label>
                    <input type="number" id="precio" name="precio" placeholder="Ingrese el precio" min="0" required>

                    <label for="fecha">Fecha:</label>
                    <input type="datetime-local" id="fecha" name="fecha" required>

                    <button type="submit">Guardar Destino</button>
                </form>
            </div>
        </div>
    </body>
</html>
