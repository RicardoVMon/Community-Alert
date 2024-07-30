<?php include_once '../../Model/Conexion/dbconnection.php';


function loginUsuario($cedula, $contrasennia)
{
    $conexion = abrirConexion();
    $query = "CALL loginUsuario('$cedula', '$contrasennia')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
}