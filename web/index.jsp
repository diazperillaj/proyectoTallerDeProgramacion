<%-- 
    Document   : index
    Created on : Nov 15, 2024, 11:32:46 PM
    Author     : Juan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Iniciar Sesion</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="resources/css/styles.css?v=1.0"/>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">

        <script>
            function validarFormulario() {
                var nombre = document.forms["Login"]["usuario"].value;
                var contra = document.forms["Login"]["contra"].value;

                if (nombre === "" || contra === "") {
                    alert("Por favor, complete todos los campos.");
                    return false;
                }

                return true;
            }
        </script>

    </head>



    <body>

        <div class="main-body">
            <div class="login-panel">
                <h1>Iniciar Sesion</h1>
                <form name="Login" action="Ingresar" method="POST" onsubmit="return validarFormulario()">
                    <div class="mb-3">
                        <label class="form-label">Usuario</label>
                        <input type="text" name="usuario" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Contraseña</label>
                        <input type="password" name="contra" class="form-control" id="exampleInputPassword1">
                    </div>
                    <button type="submit" class="btn btn-primary">Ingresar</button>
                </form>
            </div>
        </div>
    </body>
</html>

