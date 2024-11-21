<%-- 
    Document   : cUsuario
    Created on : Nov 15, 2024, 11:33:26 PM
    Author     : Juan
--%>


<%@page import="java.util.List"%>
<%@page import="model.Empresa"%>
<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Destino"%>
<%
    Destino destino = (Destino) request.getAttribute("destino");
    List<Usuario> usuarios = (List<Usuario>) request.getAttribute("usuarios");
    List<Empresa> empresas = (List<Empresa>) request.getAttribute("empresas");
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


        <div class="main_confirmar_compra">
            <div class="confirmation-container">
                <form action="ConfirmarTicket" method="POST">
                    <h1>Confirmación de Compra</h1>
                    <p><strong>Destino:</strong> <%=destino.getLugar()%></p>
                    <p><strong>Fecha:</strong> <%=destino.getFecha()%></p>
                    <p class="price"><strong>Precio:</strong> $<%=destino.getPrecio()%></p>

                    <label for="usuario">Seleccionar Usuario:</label>
                    <select id="usuario" name="usuario">
                        <%for (Usuario u : usuarios) {%>
                        <option value="<%=u.getId()%>"><%=u.getUsuario()%></option>
                        <%}%>
                    </select>

                    <label for="empresa">Seleccionar Empresa:</label>
                    <select id="empresa" name="empresa">
                        <%for (Empresa e : empresas) {%>
                        <option value="<%=e.getId()%>"><%=e.getNombre()%></option>
                        <%}%>
                    </select>
                    <input type="hidden" name="destino" value="<%=destino.getId()%>">

                    <button>Confirmar Compra</button>
                </form>
            </div>
        </div>

    </body>

</html>