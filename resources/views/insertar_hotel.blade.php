<html>
    <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
        <title>Registrar hotel</title>
    </head>
    <body>
        <form method="get" name="form" id="form" action="inserthotel1">
            <div class="form-group">
            <label for="exampleInputEmail1">nombre</label>
                <input type="text" name="nombre" id="nombre" placeholder="nombre" required="required" class="form-control">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">dirección</label>
                <input type="text" name="direccion" id="direccion" placeholder="dirección" required="required" class="form-control">            
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">NIT</label>
                <input type="text" name="nit" id="nit" placeholder="NIT" required="required" class="form-control">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">ciudad</label>
                <input type="text" name="ciudad" id="ciudad" placeholder="ciudad" required="required" class="form-control">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">num. Habitaciones</label>
                <input type="text" name="num_hab" id="num_hab" placeholder="Num. Habitaciones" required="required" class="form-control">
            </div>
            <button type="sumbit"  class="btn btn-primary">Enviar</button>
        </form>
        <a href="index" class="btn btn-warning">regresar</a>
    </body>
</html>