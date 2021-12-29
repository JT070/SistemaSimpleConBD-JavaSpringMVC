<%-- 
    Document   : ListaCelular
    Created on : 19/05/2021, 02:56:44 PM
    Author     : JT
--%>

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
                    
                    <nav class="navbar navbar-light">
                        <div style="float: right">
                            <a class="btn btn-info border-dark" href="index.htm">Inicio</a>
                            <a class="btn btn-success" href="InsertCelular.htm">Nuevo</a>
                            <a class="btn btn-dark" href="ListaAudiCelular.htm">Auditoria</a>                            
                        </div>
                        <div style="float: left">
                            <form class="d-flex" method="POST">
                                <input class="form-control me-2" type="search"  name="txtBuscar" placeholder="Id Celular" aria-label="Id Celular">
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
                            <th>ID Celular: </th>
                            <th>ID Empleado: </th>
                            <th>ID Cliente: </th>
                            <th>Nombre: </th>
                            <th>SO: </th>
                            <th>Marca: </th>
                            <th>Memoria: </th>
                            <th>Precio: </th> 
                            <th>Compañía: </th>
                            <th>Color: </th>
                            <th>Cámaras: </th>
                            <th>Pulgadas: </th>                             
                            <th>Fecha Venta: </th> 
                            <th>Pixeles: </th>
                            <th>Acciones</th>                            
                        </tr>
                    </thead>                    
                    <tbody>
                        <c:forEach var="dato" items="${lista}">
                            <tr>
                                <td>${dato.idcelular}</td>
                                <td>${dato.idnumEmpleado}</td>
                                <td>${dato.idcliente}</td>
                                <td>${dato.nombre}</td>
                                <td>${dato.sisoperativo}</td>
                                <td>${dato.marca}</td>
                                <td>${dato.memoria}</td>
                                <td>${dato.precio}</td>
                                <td>${dato.compania}</td>
                                <td>${dato.color}</td>
                                <td>${dato.cantidadcamaras}</td>
                                <td>${dato.pulgadas}</td>
                                <td>${dato.fechaventa}</td>
                                <td>${dato.pixeles}</td>
                                <td>
                                    <a href = "EditarCelular.htm?codigo=${dato.idcelular}"
                                       class = "btn btn-warning">Editar</a>
                                    <a href = "EliminarCelular.htm?codigo=${dato.idcelular}"
                                       class = "btn btn-danger">Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>                    
                </table>
            </div>            
        </div>
    </body>
</html>
