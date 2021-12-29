<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- Agregar la sig. libreria --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista auditoria Tienda</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-dark">
                    <h4>Lista de auditora de tienda</h4>
                    <nav class="navbar navbar-light">
                        <div style="float: right">
                            <a class="btn btn-danger" href="index.htm">Inicio</a>
                            <a class="btn btn-danger" href="listaTienda.htm">Regresar</a>
                        </div>
                        <div style="float: left">
                            <form class="d-flex" action="buscarAudTienda.htm" method="POST">
                                <input class="form-control me-2" type="search"  name="infoB" placeholder="Id" aria-label="Id">
                                <button class="btn btn-outline-light" type="submit">Buscar</button>
                            </form>
                        </div>
                    </nav>
                </div>
                <div class="card-header">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Id</th>                                
                                <th>Nombre Nuevo</th>
                                <th>Telefono Nuevo</th>
                                <th>Pais Nuevo</th>
                                <th>Direccion Nuevo</th>
                                <th>Correo Nuevo</th>
                                <th>RFC Nuevo</th>
                                <th>Nombre Anterior</th>
                                <th>Telefono Anterior</th>
                                <th>Pais Anterior</th>
                                <th>Direccion Anterior</th>
                                <th>Correo Anterior</th>
                                <th>RFC Anterior</th>
                                <th>Usuario</th>
                                <th>Modificado</th>
                                <th>Proceso</th>
                                <th>Id Tienda</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                                <tr>
                                    <td>${dato.idtiendaAudi}</td>                                    
                                    <td>${dato.nombreNue}</td>
                                    <td>${dato.telefonoNue}</td>
                                    <td>${dato.paisNue}</td>
                                    <td>${dato.direccionNue}</td>
                                    <td>${dato.correoNue}</td>
                                    <td>${dato.rfcNue}</td>
                                    <td>${dato.nombreAnt}</td>
                                    <td>${dato.telefonoAnt}</td>
                                    <td>${dato.paisAnt}</td>
                                    <td>${dato.direccionAnt}</td>
                                    <td>${dato.correoAnt}</td>
                                    <td>${dato.rfcAnt}</td>
                                    <td>${dato.usuario}</td>
                                    <td>${dato.modificado}</td>
                                    <td>${dato.proceso}</td>
                                    <td>${dato.idTienda}</td>                            
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>

