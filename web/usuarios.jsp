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
    UsuarioDAO usDAO = new UsuarioDAO();
    List<Usuario> us = usDAO.rUsuario();
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Usuarios</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="resources/css/bootstrap.css"/>
        <link rel="stylesheet" href="resources/css/styles.css"/>
    </head>
    <body>
        <div class="registroEmpresas">
            <h1>Lista de usuarios</h1>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Usuario</th>
                        <th scope="col">Rol</th>
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
                    </tr>
                    <% }%>

                </tbody>

            </table>
        </div>
    </body>
</html>