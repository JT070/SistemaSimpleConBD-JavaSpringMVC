<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- Agregar la sig. libreria --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Empleado</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <h4>Lista de Empleados </h4>
                    <nav class="navbar navbar-light">
                        <div style="float: right">
                            <a class="btn btn-danger" href="index.htm">Inicio</a>
                            <a class="btn btn-success" href="altaEmpleado.htm">Nuevo</a>
                            <a class="btn btn-dark" href="listaAudEmpleado.htm">Auditoria</a>
                        </div>
                        <div style="float: left">
                            <form class="d-flex" action="buscarEmpleado.htm" method="POST">
                                <input class="form-control me-2" type="search"  name="infoB" placeholder="Id Empleado" aria-label="Id Empleado">
                                <button class="btn btn-outline-light" type="submit">Buscar</button>
                            </form>
                        </div>
                    </nav>
                    </div>
                 </div>
                    <div class="card-header">
                        <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Id Empleado</th>
                                <th>Id Tienda</th>
                                <th>Nombre</th>
                                <th>Cargo</th>
                                <th>Celular</th>
                                <th>Email</th>
                                <th>Sexo</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                                <tr>
                                    <td>${dato.idnumEmpleado}</td>
                                    <td>${dato.idtienda}</td>
                                    <td>${dato.nombre}</td>
                                    <td>${dato.cargo}</td>
                                    <td>${dato.celular}</td>
                                    <td>${dato.email}</td>
                                    <td>${dato.sexo}</td>
                                    <td>
                                        <a href="editarEmpleado.htm?codigo=${dato.idnumEmpleado}"
                                           class="btn btn-warning">Editar</a>
                                        <a href="eliminarEmpleado.htm?codigo=${dato.idnumEmpleado}"
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
