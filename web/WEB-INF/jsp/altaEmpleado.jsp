<%-- 
    Document   : altaEmpleado
    Created on : 24/05/2021, 10:07:44 AM
    Author     : luis.peña
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Registro Empleado" content="text/html; charset=UTF-8">
        <title>Registrar Empleado</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    </head>
    
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card boarder-info">
                <div class="card-header bg-info">
                    <h3>Nuevo Empleado</h3>
                </div>
                <div class="p-3 mb-2 bg-dark text-white">
                    <form method="POST">
                        <label>Id Tienda: </label>
                        <input type="number" name="idtienda" class="form-control">
                        <label>Nombre: </label>
                        <input type="text" name="nombre" class="form-control">
                        <label>Cargo: </label>
                        <input type="text" name="cargo" class="form-control">
                        <label>Celular: </label>
                        <input type="number" name="celular" class="form-control">
                        <label>Email: </label>
                        <input type="text" name="email" class="form-control">
                        <label>Sexo: </label>
                        <input type="text" name="sexo" class="form-control">
                        <button type ="submit" class="btn btn-success">Agregar</button>
                        <a class="btn btn-info" href="listaEmpleado.htm" >Regresar</a>
                    </form>
                </div>
            </div>
        </div>
        
    </body>
</html>
