<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta Cliente</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card boarder-info">
                <div class="card-header bg-info">
                    <h3>Nuevo Cliente</h3>
                </div>
                <div class="card-body">
                    <form method="POST">  
                        <label>Nombre:</label>
                        <input type="text" name="nombre" class="form-control">
                        
                        <label>Apellido Paterno:</label>
                        <input type="text" name="apaterno" class="form-control">
                        
                        <label>Apellido Materno:</label>
                        <input type="text" name="amaterno" class="form-control">
                        
                        <label>Celular:</label>
                        <input type="number" name="celular" class="form-control">
                        
                        <label>Fecha de nacimiento:</label>
                        <input type="text" name="fechanacimiento" class="form-control">
                        
                        <label>Correo:</label>
                        <input type="text" name="correo" class="form-control">
                        
                        <label>Sexo:</label>
                        <input type="text" name="sexo" class="form-control">
                        
                        <button type="submit" class="btn btn-success">Agregar</button>
                        <a class="btn btn-info" href="listaCliente.htm" >Regresar</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
