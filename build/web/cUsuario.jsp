<%-- 
    Document   : cUsuario
    Created on : Nov 15, 2024, 11:33:26 PM
    Author     : Juan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        
        <div>
            <div class="registroEmpresas" >

                <h1>Crear Usuario</h1>
                <form name="createUser" action="CrearUsuario" method="POST" onsubmit="return validarFormulario()">
                    <div class="input-group mb-3">
                        <label class="input-group-text" for="inputGroupSelect01">Rol</label>
                        <select name="rol" class="form-select" id="inputGroupSelect01">
                            <option value="Usuario" selected>Usuario</option>
                            <option value="Administrador">Administrador</option>
                            <option value="Pendiente">Pendiente</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Usuario</label>
                        <input type="text" name="usuario" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Contraseña</label>
                        <input type="password" name="contra" class="form-control" id="exampleInputPassword1">
                    </div>
                    <button type="submit" class="btn btn-primary">Crear usuario</button>
                </form>
                <button onclick="window.location.href = 'Usuarios';" type="submit" id="viewUsersBtn" class="btn btn-primary">Ver Usuarios</button>

            </div>
        </div>
    </body>
</html>

