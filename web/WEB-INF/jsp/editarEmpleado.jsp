<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Empleado</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h1>Actualizar Empleado</h1>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Id Tienda: </label>
                        <input type="number" name="idtienda" class="form-control" value="${lista[0].idtienda}">
                        <label>Nombre: </label>
                        <input type="text" name="nombre" class="form-control" value="${lista[0].nombre}">
                        <label>Cargo: </label>
                        <input type="text" name="cargo" class="form-control" value="${lista[0].cargo}">
                        <label>Celular: </label>
                        <input type="number" name="celular" class="form-control" value="${lista[0].celular}">
                        <label>Email: </label>
                        <input type="text" name="email" class="form-control" value="${lista[0].email}">
                        <label>Sexo: </label>
                        <input type="text" name="sexo" class="form-control" value="${lista[0].sexo}">
                        <input type="submit" value="Actualizar" class="btn btn-success">
                        <a class="btn btn-info" href="listaEmpleado.htm">Regresar</a>
                     </form>
                </div>
            </div>
        </div>
    </body>
</html>
