<html>
    <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
        <title>Listado de hoteles</title>        
    </head>
    <body>
        <table class="table">
            <thead>
                <tr>    
                <th>Nombre</th>
                <th>Dirección</th>
                <th>NIT</th>
                <th>Ciudad</th>
                <th>Número de habitaciones</th>
                <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach($resultado as $clave => $valor)                
                    <tr>
                        <td>{{$resultado[$clave]["nombre"]}}</td>
                        <td>{{$resultado[$clave]["direccion"]}}</td>
                        <td>{{$resultado[$clave]["nit"]}}</td>
                        <td>{{$resultado[$clave]["ciudad"]}}</td>
                        <td>{{$resultado[$clave]["num_hab"]}}</td>
                        <td><a href='habitaciones?hotels_id={{$resultado[$clave]["id"]}}'  class="btn btn-warning">Consultar habitaciones</a></td>
                    </tr>                      
                @endforeach         
            </tbody>
        </table>
        <a href="inserthotel" class="btn btn-primary">Registrar hotel</a>
    </body>
</html>