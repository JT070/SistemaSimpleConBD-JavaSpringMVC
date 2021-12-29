<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar tienda</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>Actualizar tienda</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Nombre:</label>
                        <input type="text" name="nombre" class="form-control" value="${lista[0].nombre}">
                        <label>Telefono:</label>
                        <input type="tel" name="telefono" class="form-control" value="${lista[0].telefono}">
                        <label>Pais:</label>
                        <select type="text" name="pais" class="form-control">
                            <option selected>${lista[0].pais}</option>
                            <option value="Mexico">México</option>
                            <option value="Panama">Panamá</option>
                            <option value="Chile">Chile</option>
                            <option value="Peru">Perú</option>
                            <option value="Brazil">Brazil</option>
                            <option value="USA">USA</option>
                            <option value="Venezuela">Venezuela</option>
                            <option value="Colombia">Colombia</option>
                        </select>                        
                        <label>Direccion:</label>
                        <input type="text" name="direccion" class="form-control" value="${lista[0].direccion}">
                        <label>Correo:</label>
                        <input type="text" name="correo" class="form-control" value="${lista[0].correo}">
                        <label>Rfc:</label>
                        <input type="text" name="rfc" class="form-control" value="${lista[0].rfc}">
                        <input type="submit" value="Actualizar" class="btn btn-success">
                        <a class="btn btn-info" href="listaTienda.htm">Regresar</a>                        
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
