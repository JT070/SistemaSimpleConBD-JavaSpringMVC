<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Celulares</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <h4>Lista de Celulares</h4>
                    <div style="float: left">
                        <a class="btn btn-danger" href="index.htm">Inicio</a>
                        <a class="btn btn-danger" href="ListaCelular.htm">Regresar</a>                        
                    </div>
                    <div style="float: right">
                        <form class = "form-inline" action="buscar.htm"  method="POST">
                            <input class="form-control me-2" type="search"  name="txtBuscar" placeholder="Id" aria-label="Id">
                            <button class="btn btn-outline-light" type="submit">Buscar</button>                       
                        </form>
                    </div>
                </div>                
            </div>            
            <div class="card-body">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>ID </th>
                            <th>ID Celular: </th>
                            <th>ID Empleado Nuevo: </th>
                            <th>ID Cliente Nuevo: </th>
                            <th>Nombre Nuevo: </th>
                            <th>SO Nuevo: </th>
                            <th>Marca Nuevo: </th>
                            <th>Memoria Nuevo: </th>
                            <th>Precio Nuevo: </th> 
                            <th>Compañía Nuevo: </th>
                            <th>Color Nuevo: </th>
                            <th>Cámaras Nuevo: </th>
                            <th>Pulgadas Nuevo: </th>                             
                            <th>Fecha Venta Nuevo: </th> 
                            <th>Pixeles Nuevo: </th>        
                            <th>ID Empleado Anterior: </th>
                            <th>ID Cliente Anterior: </th>
                            <th>Nombre Anterior: </th>
                            <th>SO Anterior: </th>
                            <th>Marca Anterior: </th>
                            <th>Memoria Anterior: </th>
                            <th>Precio Anterior: </th> 
                            <th>Compañía Anterior: </th>
                            <th>Color Anterior: </th>                            
                            <th>Cámaras Anterior: </th>
                            <th>Pulgadas Anterior: </th>                             
                            <th>Fecha Venta Anterior: </th> 
                            <th>Pixeles Anterior: </th>                            
                            <th>Usuario: </th>
                            <th>Modificado: </th>                             
                            <th>Proceso: </th> 
                            <th>ID Celular: </th>                                                      
                        </tr>
                    </thead>                    
                    <tbody>
                        <c:forEach var="dato" items="${lista}">
                            <tr>
                                <td>${dato.idcelularAudi}</td>
                                <td>${dato.idcelular}</td>
                                <td>${dato.idnumEmpleadoNue}</td>
                                <td>${dato.idclienteNue}</td>
                                <td>${dato.nombreNue}</td>
                                <td>${dato.sisoperativoNue}</td>
                                <td>${dato.marcaNue}</td>
                                <td>${dato.memoriaNue}</td>
                                <td>${dato.precioNue}</td>
                                <td>${dato.companiaNue}</td>
                                <td>${dato.colorNue}</td>
                                <td>${dato.cantidadcamarasNue}</td>
                                <td>${dato.pulgadasNue}</td>
                                <td>${dato.fechaventaNue}</td>
                                <td>${dato.pixelesNue}</td>
                                <td>${dato.idnumEmpleadoAnt}</td>
                                <td>${dato.idclienteAnt}</td>
                                <td>${dato.nombreAnt}</td>
                                <td>${dato.sisoperativoAnt}</td>
                                <td>${dato.marcaAnt}</td>
                                <td>${dato.memoriaAnt}</td>
                                <td>${dato.precioAnt}</td>
                                <td>${dato.companiaAnt}</td>
                                <td>${dato.colorAnt}</td>
                                <td>${dato.cantidadcamarasAnt}</td>
                                <td>${dato.pulgadasAnt}</td>
                                <td>${dato.fechaventaAnt}</td>
                                <td>${dato.pixelesAnt}</td>                           
                                <td>${dato.usuario}</td>
                                <td>${dato.modificado}</td>
                                <td>${dato.proceso}</td>
                                <td>${dato.idCelular}</td>
                            </tr>
                        </c:forEach>
                    </tbody>                    
                </table>
            </div>            
        </div>
    </body>
</html>
