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
                <th>cantidad</th>
                <th>tipo</th>
                <th>acomodación</th>                
                </tr>
            </thead>
            <tbody>
                @foreach($resultado as $clave => $valor)                
                    <tr>
                        <td>{{$resultado[$clave]["cantidad"]}}</td>
                        <td>{{$resultado[$clave]["tipo"]}}</td>
                        <td>{{$resultado[$clave]["acomodacion"]}}</td>                        
                    </tr>                      
                @endforeach         
            </tbody>
        </table>
        <a href="inserthab?id_hotels={{$resultado[0]['hotels_id']}}" class="btn btn-primary">Registrar habitación</a>
        <a href="index" class="btn btn-warning">regresar</a>
    </body>
</html>