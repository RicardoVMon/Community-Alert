<?php include_once __DIR__ . '/../Conexion/dbconnection.php';

function ObtenerUsuariosBD()
{
    $conexion = abrirConexion();
    $procedimiento = "CALL ObtenerUsuariosAdmin()";
    $respuesta = $conexion->query($procedimiento);
    cerrarConexion($conexion);
    return $respuesta;
}

function CambiarEstadoUsuarioBD($id)
{
    $conexion = abrirConexion();
    $procedimiento = "CALL CambiarEstadoUsuarioAdmin('$id')";
    $respuesta = $conexion->query($procedimiento);
    cerrarConexion($conexion);
    return $respuesta;
}
