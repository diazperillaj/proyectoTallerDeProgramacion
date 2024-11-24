<%-- 
    Document   : cEmpresa
    Created on : Nov 15, 2024, 11:33:13 PM
    Author     : Juan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Ingresar Empresa</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="resources/css/styles.css?v=1.0"/>

        <script>
            function validarFormulario() {
                var nombre = document.forms["registroEmpresa"]["nombre"].value;
                var nit = document.forms["registroEmpresa"]["nit"].value;
                var telefono = document.forms["registroEmpresa"]["telefono"].value;
                var correo = document.forms["registroEmpresa"]["correo"].value;
                var webSite = document.forms["registroEmpresa"]["webSite"].value;
                var direccion = document.forms["registroEmpresa"]["direccion"].value;
                var postal = document.forms["registroEmpresa"]["postal"].value;

                if (nombre === "" || nit === "" || telefono === "" || correo === "" || webSite === "" || direccion === "" || postal === "") {
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
        
        <div class="registroEmpresas">
            <h1 class="registroEmpresasTitulo">Registro de empresas</h1>
            <form name="registroEmpresa" action="CrearEmpresa" method="POST" onsubmit="return validarFormulario()">

                <div class="input-group mb-3">
                    <span class="input-group-text">Nombre</span>
                    <input name="nombre" type="text" class="form-control">
                    <span class="input-group-text">NIT</span>
                    <input name="nit" type="text" class="form-control">
                </div>

                <div class="input-group mb-3">
                    <span class="input-group-text" id="basic-addon1">+57</span>
                    <input name="telefono" type="text" class="form-control" placeholder="Teléfono" aria-describedby="basic-addon1">
                </div>

                <div class="input-group mb-3">
                    <span class="input-group-text" id="basic-addon1">Correo</span>
                    <input name="correo" type="text" class="form-control" placeholder="usuario@ejemplo.com" aria-describedby="basic-addon1">
                </div>

                <div class="input-group mb-3">
                    <span class="input-group-text" id="basic-addon1">Página web</span>
                    <input name="webSite" type="text" class="form-control" placeholder="www.mipaginaweb.com" aria-describedby="basic-addon1">
                </div>

                <div class="input-group mb-3">
                    <span class="input-group-text">Dirección</span>
                    <input name="direccion" type="text" class="form-control">
                    <span class="input-group-text">Código postal</span>
                    <input name="postal" type="text" class="form-control">
                </div>
                <button type="submit" class="btn btn-primary ingresar-btn">Ingresar</button>
            </form>
            <button onclick="window.location.href = 'Empresas';" type="submit" id="viewUsersBtn" class="btn btn-primary">Ver Empresas</button>
        </div>
    </body>
</html>

