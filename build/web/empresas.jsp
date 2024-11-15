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
    EmpresaDAO usDAO = new EmpresaDAO();
    List<Empresa> empresas = usDAO.rEmpresa();
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Empresas</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="resources/css/bootstrap.css"/>
        <link rel="stylesheet" href="resources/css/styles.css"/>
    </head>
    <body>
        <div class="registroEmpresas">
            <h1>Lista de empresas</h1>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">NIT</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Teléfono</th>
                        <th scope="col">Correo</th>
                        <th scope="col">Página Web</th>
                        <th scope="col">Dirección</th>
                        <th scope="col">Código Postal</th>
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
                    </tr>
                    <% }%>

                </tbody>

            </table>
        </div>
    </body>
</html>
