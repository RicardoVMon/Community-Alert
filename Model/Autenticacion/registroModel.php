<?php
include_once "../../Model/Conexion/dbconnection.php";

function obtenerProvinciasBD()
{
    $conexion = abrirConexion();
    $query = "CALL obtenerProvincias()";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
}

function registrarUsuario($cedula, $nombre, $apellidos, $correo, $genero, $contrasennia, $distrito)
{
    $conexion = abrirConexion();
    $query = "CALL registrarUsuario('$cedula', '$nombre', '$apellidos', '$correo', '$genero', '$contrasennia', '$distrito')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
}

function obtenerIdDistrito($nombreDistrito)
{
    $conexion = abrirConexion();
    $query = "CALL obtenerIdDistrito('$nombreDistrito')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
}

function obtenerCedula($cedula)
{
    $conexion = abrirConexion();
    $query = "CALL obtenerCedula('$cedula')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
}
