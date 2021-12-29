<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Empleados</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <h4>Lista de Empleados</h4>
                    <nav class="navbar navbar-light">
                        <div style="float: right">
                            <a class="btn btn-danger" href="index.htm">Inicio</a>
                            <a class="btn btn-danger" href="listaEmpleado.htm">Regresar</a>
                        </div>
                        <div style="float: left">
                            <form class="d-flex" method="POST">
                                <input class="form-control me-2" type="search"  name="txtBuscar" placeholder="Id" aria-label="Id">
                                <button class="btn btn-outline-light" type="submit">Buscar</button>
                            </form>
                        </div>
                    </nav>
                </div>
            </div>
            <div class="card-body">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>ID Tienda</th>
                            <th>Nombre Nuevo</th>
                            <th>Celular Nuevo</th>
                            <th>Email Nuevo</th>
                            <th>Sexo Nuevo</th>        
                            <th>ID Tienda</th>
                            <th>Nombre Anterior</th>
                            <th>Celular Anterior</th>
                            <th>Email Anterior</th>
                            <th>Sexo Anterio</th>                             
                            <th>Usuario</th>
                            <th>Modificado</th>                             
                            <th>Proceso</th> 
                            <th>ID Empleado</th>                                                      
                        </tr>
                    </thead>                    
                    <tbody>
                        <c:forEach var="dato" items="${lista}">
                            <tr>
                                <td>${dato.idnumEmpleadoAudi}</td>
                                <td>${dato.idtiendaNue}</td>
                                <td>${dato.nombreNue}</td>
                                <td>${dato.celularNue}</td>
                                <td>${dato.emailNue}</td>
                                <td>${dato.sexoNue}</td>
                                <td>${dato.idtiendaNue}</td>
                                <td>${dato.nombreAnt}</td>
                                <td>${dato.celularAnt}</td>
                                <td>${dato.emailAnt}</td>
                                <td>${dato.sexoAnt}</td>
                                <td>${dato.usuario}</td>
                                <td>${dato.modificado}</td>
                                <td>${dato.proceso}</td>
                                <td>${dato.idEmpleado}</td>
                            </tr>
                        </c:forEach>
                    </tbody>                    
                </table>
            </div>
        </div>
    </body>
</html>
