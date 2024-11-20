<%-- 
    Document   : usuarios
    Created on : Nov 15, 2024, 6:04:12 PM
    Author     : Juan
--%>

<%@page import="controller.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="model.Usuario"%>
<%
    List<Usuario> us = (List<Usuario>) request.getAttribute("usuarios");
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Usuarios</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="resources/css/styles.css?v=1.0"/>
    </head>
    <body>
        
        <% 
            RequestDispatcher rd = request.getRequestDispatcher("header.jsp");
            rd.include(request, response);
        %>
        
        <div class="registroEmpresas table-container">
            <h1>Lista de usuarios</h1>
            <button onclick="window.location.href = 'CrearUsuario'" type="submit" id="viewUsersBtn" class="btn btn-primary">Crear usuario</button>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Usuario</th>
                        <th scope="col">Rol</th>
                        <th scope="col">Accion</th>
                    </tr>
                </thead>

                <tbody>

                    <% for (Usuario e : us) {%>
                    <tr>
                        <th><%= e.getId()%></th>
                        <td><%= e.getUsuario()%></td>
                        <% if (e.getRol().equals("Administrador")) {%>
                        <td style="font-weight: bold"><%= e.getRol()%></td>
                        <% } else {%>
                        <td><%= e.getRol()%></td>
                        <% } %>
                        <form action="EliminarUsuario" method="POST">
                            <td>
                                <input type="hidden" name="usuarioId" value="<%=e.getId()%>">
                                <button type="submit" class="btn btn-primary">Eliminar</button>
                            </td>
                        </form>
                    </tr>
                    <% }%>

                </tbody>

            </table>
        </div>
    </body>
</html>
