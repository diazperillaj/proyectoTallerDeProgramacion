<%-- 
    Document   : empresas
    Created on : Aug 30, 2024, 7:41:11 PM
    Author     : Juan
--%>


<%@page import="java.util.List"%>
<%@page import="model.Empresa"%>
<%@page import="controller.EmpresaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<Empresa> empresas = (List<Empresa>) request.getAttribute("empresas");
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Empresas</title>
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
            <h1>Lista de empresas</h1>
            <button onclick="window.location.href = 'CrearEmpresa'" type="submit" id="viewUsersBtn" class="btn btn-primary">Crear empresa</button>
            <table class="table table-striped" style="overflow-x: auto;">
                <thead>
                    <tr>
                        <th scope="col">NIT</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Teléfono</th>
                        <th scope="col">Correo</th>
                        <th scope="col">Página Web</th>
                        <th scope="col">Dirección</th>
                        <th scope="col">Código Postal</th>
                        <th scope="col">Acción</th>
                    </tr>
                </thead>

                <tbody>

                    <% for (Empresa e : empresas) {%>
                    <tr>
                        <th scope="row"><%= e.getNIT()%></th>
                        <td><%= e.getNombre()%></td>
                        <td><%= e.getTelefono()%></td>
                        <td><%= e.getCorreo()%></td>
                        <td><%= e.getWebSite()%></td>
                        <td><%= e.getDireccion()%></td>
                        <td><%= e.getPostal()%></td>
                <form action="EliminarEmpresa" method="POST">
                    <td>
                        <input type="hidden" name="empresaId" value="<%=e.getId()%>">
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
