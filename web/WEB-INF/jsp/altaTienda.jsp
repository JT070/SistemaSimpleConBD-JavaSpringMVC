<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Registro Tienda" content="text/html; charset=UTF-8">
        <title>Registrar Tienda</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>

    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card boarder-info">
                <div class="card-header bg-info">
                    <h3>Nueva tienda</h3>
                </div>
                <div class="p-3 mb-2 bg-dark text-white">
                    <form method="POST">
                        <label>Nombre: </label>
                        <input type="text" name="nombre" class="form-control">
                        <label>Telefono: </label>
                        <input type="tel" name="telefono" class="form-control">
                        <label>Pais: </label>
                        
                        <select type="text" name="pais"class="form-control">
                            <option selected>Choose...</option>
                            <option value="Mexico">México</option>
                            <option value="Panama">Panamá</option>
                            <option value="Chile">Chile</option>
                            <option value="Peru">Perú</option>
                            <option value="Brazil">Brazil</option>
                            <option value="USA">USA</option>
                            <option value="Venezuela">Venezuela</option>
                            <option value="Colombia">Colombia</option>
                        </select>

                        <label>Direccion: </label>
                        <input type="text" name="direccion" class="form-control">
                        <label>Correo: </label>
                        <input type="text" name="correo" class="form-control">
                        <label>RFC: </label>
                        <input type="text" name="rfc" class="form-control"> 
                        <button type ="submit" class="btn btn-success">Agregar</button>
                        <a class="btn btn-info" href="listaTienda.htm" >Regresar</a>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
