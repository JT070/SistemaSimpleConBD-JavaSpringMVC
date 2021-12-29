<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- Agregar la sig. libreria --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista tienda</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-4">
            <div class="card border-dark">
                <div class="card-header bg-info text-white">
                    <h4>Lista de Tiendas </h4>
                    <nav class="navbar navbar-light">
                        <div style="float: right">
                            <a class="btn btn-danger" href="index.htm">Inicio</a>
                            <a class="btn btn-success" href="altaTienda.htm">Nuevo</a>
                            <a class="btn btn-dark" href="listaAudTienda.htm">Auditoria</a>
                        </div>
                        <div style="float: left">
                            <form class="d-flex" action="buscarTienda.htm" method="POST">
                                <input class="form-control me-2" type="search"  name="infoB" placeholder="Id Tienda" aria-label="Id Tienda">
                                <button class="btn btn-outline-light" type="submit">Buscar</button>
                            </form>
                        </div>
                    </nav>
                </div>
                <div class="card-header">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Id Tienda</th>
                                <th>Nombre</th>
                                <th>Telefono</th>
                                <th>Pais</th>
                                <th>Direccion</th>
                                <th>Correo</th>
                                <th>RFC</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                                <tr>
                                    <td>${dato.idtienda}</td>
                                    <td>${dato.nombre}</td>
                                    <td>${dato.telefono}</td>
                                    <td>${dato.pais}</td>
                                    <td>${dato.direccion}</td>
                                    <td>${dato.correo}</td>
                                    <td>${dato.rfc}</td>
                                    <td>
                                        <a href="editarTienda.htm?codigo=${dato.idtienda}"
                                           class="btn btn-warning">Editar</a>
                                        <a href="eliminarTienda.htm?codigo=${dato.idtienda}"
                                           class="btn btn-danger">Eliminar</a> 
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

