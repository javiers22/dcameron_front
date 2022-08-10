<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AppController extends Controller
{
    public function listado(Request $request)
    {
        $ch = curl_init();
        curl_reset($ch);
		curl_setopt($ch,CURLOPT_URL,"http://dcameron.com.devel:8480/index");
		curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
		curl_setopt($ch,CURLOPT_TIMEOUT, 20);	
		$response = curl_exec($ch);
		curl_close ($ch);
        $resultado=json_decode($response,true);
		//print_r($resultado);
        if(empty($resultado))
        {    
            $resultado[0]["nombre"]="";
            $resultado[0]["direccion"]="";
            $resultado[0]["nit"]="";
            $resultado[0]["ciudad"]="";
            $resultado[0]["num_hab"]="";
            $resultado[0]["id"]="";
        }
        return view("index",array("resultado"=>$resultado));
    }

    public function insertar_hotel(Request $request)
    {
        $arreglo=array("nombre"=>$request->input("nombre"),"direccion"=>$request->input("direccion"),"nit"=>$request->input("nit"),"ciudad"=>$request->input("ciudad"),"num_hab"=>$request->input("num_hab"));
        $query=http_build_query($arreglo);
        $ch = curl_init();
		curl_setopt($ch,CURLOPT_URL,"http://dcameron.com.devel:8480/inserthotel?$query");
		curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
		curl_setopt($ch,CURLOPT_TIMEOUT, 20);	
		$response = curl_exec($ch);
		curl_close ($ch);
        $resultado=json_decode($response,true); 
        //print_r($resultado);
        if(!isset($resultado["error"]))
            echo'<script>alert("registro exitoso");location.href="index";</script>';
        else 
            echo'<script>alert("registro no exitoso, favor verifique la data ingresada");location.href="index";</script>';    
    }

    public function habitaciones_por_hotel(Request $request)
    {
        $arreglo=array("hotels_id"=>$request->input("hotels_id"));
        $query=http_build_query($arreglo);
        $ch = curl_init();
		curl_setopt($ch,CURLOPT_URL,"http://dcameron.com.devel:8480/habitaciones?$query");
		curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
		curl_setopt($ch,CURLOPT_TIMEOUT, 20);	
		$response = curl_exec($ch);
		curl_close ($ch);
        $resultado=json_decode(@$response,true); 
        //print_r($resultado);
        if(empty($resultado))
        {    
            $resultado[0]["cantidad"]="";
            $resultado[0]["tipo"]="";
            $resultado[0]["acomodacion"]="";
            $resultado[0]["hotels_id"]=$request->input("hotels_id");
        }
        return view("habitaciones_por_hotel",array("resultado"=>@$resultado));
    }

    public function insertar_habitacion(Request $request)
    {
        $ch = curl_init();
		curl_setopt($ch,CURLOPT_URL,"http://dcameron.com.devel:8480/gettipos");
		curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
		curl_setopt($ch,CURLOPT_TIMEOUT, 20);	
		$response = curl_exec($ch);
		curl_close ($ch);
        $resultado=json_decode($response,true); 
        return view("insertar_habitacion",array("tipos"=>$resultado,"hotels_id"=>$request->input("id_hotels")));
    }

    public function insertar_habitacion1(Request $request)
    {
        $arreglo=array("cantidad"=>$request->input("cantidad"),"tipos_id"=>$request->input("tipos_id"),"hotels_id"=>$request->input("hotels_id"));
        $query=http_build_query($arreglo);
        $ch = curl_init();
		curl_setopt($ch,CURLOPT_URL,"http://dcameron.com.devel:8480/inserthab?$query");
		curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
		curl_setopt($ch,CURLOPT_TIMEOUT, 20);	
		$response = curl_exec($ch);
		curl_close ($ch);
        $resultado=json_decode($response,true); 
        if(!isset($resultado["error"]))
            echo'<script>alert("registro exitoso");location.href="habitaciones?hotels_id='.$request->input("hotels_id").'";</script>';
        else 
            echo'<script>alert("registro no exitoso, favor verifique la data ingresada");location.href="habitaciones?hotels_id='.$request->input("hotels_id").'";</script>';    
    }
}
