<?php include_once __DIR__ . '/../Conexion/dbconnection.php';

function ObtenerComunidadesBD()
{
    $conexion = abrirConexion();
    $procedimiento = "CALL ObtenerComunidadesAdmin()";
    $respuesta = $conexion->query($procedimiento);
    cerrarConexion($conexion);
    return $respuesta;
}

function ObtenerComunidadBD($id)
{
    $conexion = abrirConexion();
    $procedimiento = "CALL ObtenerComunidadAdmin('$id')";
    $respuesta = $conexion->query($procedimiento);
    cerrarConexion($conexion);
    return $respuesta;
}

function ActualizarComunidadBD($id, $descripcion, $banner, $icono)
{
    $conexion = abrirConexion();
    $procedimiento = "CALL ActualizarComunidadAdmin('$id', '$descripcion', '$banner', '$icono')";
    $respuesta = $conexion->query($procedimiento);
    cerrarConexion($conexion);
    return $respuesta;
}
