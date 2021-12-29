<%-- 
    Document   : InsertCelular
    Created on : 19/05/2021, 02:21:11 PM
    Author     : JT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Celular</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    </head>

    <body>
        <div class = "container mt-4 col-lg-4">
            <div class = "card barder-info">
                <div class = "card-header bg-info">
                    <h3>Nuevo registro [Celular]</h3>
                </div>
                
                <div class = "card-body">
                    <form method = "POST"> 
                        
                        <label>ID Empleado:</label>
                        <input type = "number" name = "idnumEmpleado" class = "form-control">
                        
                        <label>ID Cliente:</label>
                        <input type = "number" name = "idcliente" class = "form-control">
                        
                        <label>Nombre:</label>
                        <input type = "text" name = "nombre" class = "form-control">
                        
                        <label>Sistema Operativo:</label>
                        <input type = "text" name = "sisoperativo" class = "form-control">
                        
                        <label>Marca:</label>
                        <input type = "text" name = "marca" class = "form-control">
                        
                        <label>Memoria:</label>
                        <input type = "text" name = "memoria" class = "form-control">
                        
                        <label>Precio:</label>
                        <input type = "double" name = "precio" class = "form-control">
                        
                        <label>Compañía:</label>
                        <input type = "text" name = "compania" class = "form-control">
                        
                        <label>Color:</label>
                        <input type = "text" name = "color" class = "form-control">
                        
                        <label>Cantidad Cámaras:</label>
                        <input type = "number" name = "cantidadcamaras" class = "form-control">
                        
                        <label>Pulgadas:</label>
                        <input type = "number" name = "pulgadas" class = "form-control">
                        
                        <label>Fecha Venta:</label>
                        <input type = "text" name = "fechaventa" class = "form-control" placeholder="AAAA-MM-DD">
                        
                        <label>Pixeles:</label>
                        <input type = "text" name = "pixeles" class = "form-control">
                        
                        <button type = "submit" class = "btn btn-success">Agregar</button>
                        <a class="btn btn-info" href="ListaCelular.htm" >Regresar</a>
                    </form>
                </div>
            </div>
        </div>    
    </body>    
</html>
