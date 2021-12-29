<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Auditoria-Cliente</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <h4>Lista de Auditoria-Clientes</h4>

                    <nav class="navbar navbar-light">
                        <div style="float: right">
                            <a class="btn btn-danger" href="index.htm">Inicio</a>
                            <a class="btn btn-danger" href="listaCliente.htm">Regresar</a>
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
                    <thread>
                        <tr>
                            <th>Id</th>                            
                            <th>NombreNue</th>
                            <th>ApellidoPaternoNue</th>
                            <th>ApellidoMaternoNue</th>
                            <th>CelularNue</th>
                            <th>FechaNacimientoNue</th>
                            <th>CorreoNue</th>
                            <th>SexoNue</th>
                            <th>NombreAnt</th>
                            <th>ApellidoPaternoAnt</th>
                            <th>ApellidoMaternoAnt</th>
                            <th>CelularAnt</th>
                            <th>FechaNacimientoAnt</th>
                            <th>CorreoAnt</th>
                            <th>SexoAnt</th>
                            <th>Usuario</th>
                            <th>Modificado</th>
                            <th>Proceso</th>
                            <th>IdCliente</th>
                        </tr>
                    </thread>
                    <tbody>
                        <c:forEach var="dato" items ="${lista}">
                            <tr>
                                <td>${dato.idclienteAudi}</td>                                
                                <td>${dato.nombreNue}</td>
                                <td>${dato.apaternoNue}</td>
                                <td>${dato.amaternoNue}</td>
                                <td>${dato.celularNue}</td>
                                <td>${dato.fechanacimientoNue}</td>
                                <td>${dato.correoNue}</td>
                                <td>${dato.sexoNue}</td>
                                <td>${dato.nombreAnt}</td>
                                <td>${dato.apaternoAnt}</td>
                                <td>${dato.amaternoAnt}</td>
                                <td>${dato.celularAnt}</td>
                                <td>${dato.fechanacimientoAnt}</td>
                                <td>${dato.correoAnt}</td>
                                <td>${dato.sexoAnt}</td>
                                <td>${dato.usuario}</td>
                                <td>${dato.modificado}</td>
                                <td>${dato.proceso}</td>
                                <td>${dato.idCliente}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
