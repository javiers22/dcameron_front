<html>
    <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
        <title>Registrar hotel</title>
    </head>
    <body>
        <form method="get" name="form" id="form" action="inserthab1">
            <div class="form-group">
                <label for="exampleInputEmail1">cantidad</label>
                <input type="number" name="cantidad" id="cantidad" placeholder="cantidad" required="required" class="form-control">  
            </div>
            <div class="form-group">
            <label for="exampleInputEmail1">tipo y acomodación</label>
                <select name="tipos_id" id="tipos_id" required="required" class="form-control">          
                    <option value="">Seleccione tipo y acomodación...</option>
                    @foreach($tipos as $clave => $valor)
                    {
                        <option value="{{$tipos[$clave]['id']}}">{{$tipos[$clave]['tipo']}} - {{$tipos[$clave]['acomodacion']}}</option>
                    }
                    @endforeach
                </select>
            </div>
            <input type="hidden" name="hotels_id" id="hotels_id" value="{{$hotels_id}}">
            <button type="sumbit" class="btn btn-primary">Enviar</button>
        </form>
        <a href="habitaciones?hotels_id={{$hotels_id}}" class="btn btn-warning">regresar</a>
    </body>
</html>