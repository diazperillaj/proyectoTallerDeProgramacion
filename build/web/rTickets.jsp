<%-- 
    Document   : empresas
    Created on : Aug 30, 2024, 7:41:11 PM
    Author     : Juan
--%>


<%@page import="java.util.List"%>
<%@page import="model.Ticket"%>
<%@page import="controller.TicketDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<Ticket> tickets = (List<Ticket>) request.getAttribute("tickets");
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Tickets de ventas</title>
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
            <h1>Lista de tickets</h1>
            <button onclick="window.location.href = 'Comprar'" type="submit" id="viewUsersBtn" class="btn btn-primary">Comprar</button>
            <table class="table table-striped" style="overflow-x: auto;">
                <thead>
                    <tr>
                        <th scope="col">Empresa</th>
                        <th scope="col">Cliente</th>
                        <th scope="col">Destino</th>
                        <th scope="col">Precio</th>
                        <th scope="col">Fecha</th>
                        <th scope="col">Hora</th>
                    </tr>
                </thead>

                <tbody>

                    <% for (Ticket e : tickets) {%>
                    <tr>
                        <td><%= e.getEmpresa()%></td>
                        <td><%= e.getCliente()%></td>
                        <td><%= e.getDestino()%></td>
                        <td><%= e.getPrecio()%></td>
                        <td><%= e.getFecha_salida()%></td>
                        <td><%= e.getHora_salida()%></td>
                    </tr>
                    <% }%>

                </tbody>

            </table>
        </div>
    </body>
</html>
