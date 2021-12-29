<%-- 
    Document   : EditarCelular
    Created on : 19/05/2021, 03:09:09 PM
    Author     : JT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Celular</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    </head>
    
    <body>
        <div class = "container mt-4 col-lg-4">
            <div class = "card border-info">
                <div class = "card-header bg-info">
                    <h3>Actualizar Celular</h3>
                </div>
                <div class = "card-body">
                    <form method = "POST">
                        <label>ID Empleado:</label>
                        <input type = "number" name = "idnumEmpleado" class = "form-control" value = "${lista[0].idnumEmpleado}">
                        
                        <label>ID Cliente:</label>
                        <input type = "number" name = "idcliente" class = "form-control" value = "${lista[0].idcliente}">
                        
                        <label>Nombre:</label>
                        <input type = "text" name = "nombre" class = "form-control" value = "${lista[0].nombre}">
                        
                        <label>SO:</label>
                        <input type = "text" name = "sisoperativo" class = "form-control" value = "${lista[0].sisoperativo}">
                        
                        <label>Marca:</label>
                        <input type = "text" name = "marca" class = "form-control" value = "${lista[0].marca}">
                        
                        <label>Memoria:</label>
                        <input type = "text" name = "memoria" class = "form-control" value = "${lista[0].memoria}">
                        
                        <label>Precio:</label>
                        <input type = "double" name = "precio" class = "form-control" value = "${lista[0].precio}">
                        
                        <label>Compañía:</label>
                        <input type = "text" name = "compania" class = "form-control" value = "${lista[0].compania}">
                        
                        <label>Color:</label>
                        <input type = "text" name = "color" class = "form-control" value = "${lista[0].color}">
                        
                        <label>Cámaras:</label>
                        <input type = "number" name = "cantidadcamaras" class = "form-control" value = "${lista[0].cantidadcamaras}">
                        
                        <label>Pulgadas:</label>
                        <input type = "number" name = "pulgadas" class = "form-control" value = "${lista[0].pulgadas}">
                        
                        <label>Fecha Venta:</label>
                        <input type = "text" name = "fechaventa" class = "form-control" value = "${lista[0].fechaventa}">
                        
                        <label>Pixeles:</label>
                        <input type = "text" name = "pixeles" class = "form-control" value = "${lista[0].pixeles}">
                        
                        <input type = "submit" value = "Actualizar" class = "btn btn-success">
                        <a href = "ListaCelular.htm">Regresar</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
