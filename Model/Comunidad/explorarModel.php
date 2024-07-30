<?php include_once __DIR__ . "/../Conexion/dbconnection.php";

function obtenerProvinciasBD()
{
    $conexion = abrirConexion();
    $query = "CALL obtenerProvincias()";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
}

function obtenerCantonesBD($idProvincia)
{
    $conexion = abrirConexion();
    $query = "CALL obtenerCantones('$idProvincia')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
}

function obtenerDistritosBD($idCanton)
{
    $conexion = abrirConexion();
    $query = "CALL obtenerDistritos('$idCanton')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
}