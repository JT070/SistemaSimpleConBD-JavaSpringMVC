<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Cliente</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <h4>Lista de Clientes</h4>
                    <nav class="navbar navbar-light">
                        <div style="float: right">
                            <a class="btn btn-danger" href="index.htm">Inicio</a>
                            <a class="btn btn-success" href="altaCliente.htm">Nuevo</a>
                            <a class="btn btn-dark" href="listaTcliente.htm">Auditoria</a>
                        </div>
                        <div style="float: left">
                            <form class="d-flex" method="POST">
                                <input class="form-control me-2" type="search"  name="txtBuscar" placeholder="Id Cliente" aria-label="Id Cliente">
                                <button class="btn btn-outline-light" type="submit">Buscar</button>
                            </form>
                        </div>
                    </nav>
                </div>
                <div class="card-header">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>IdCliente</th>
                                <th>Nombre</th>
                                <th>ApellidoPaterno</th>
                                <th>ApellidoMaterno</th>
                                <th>Celular</th>
                                <th>FechaNacimiento</th>
                                <th>Correo</th>
                                <th>Sexo</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items ="${lista}">
                                <tr>
                                    <td>${dato.idcliente}</td>
                                    <td>${dato.nombre}</td>
                                    <td>${dato.apaterno}</td>
                                    <td>${dato.amaterno}</td>
                                    <td>${dato.celular}</td>
                                    <td>${dato.fechanacimiento}</td>
                                    <td>${dato.correo}</td>
                                    <td>${dato.sexo}</td>
                                    <td>
                                        <a href="editarCliente.htm?idcliente=${dato.idcliente}"
                                           class ="btn btn-warning">Editar</a>
                                        <a href="eliminarCliente.htm?idcliente=${dato.idcliente}"
                                           class ="btn btn-danger">Eliminar</a>   
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
