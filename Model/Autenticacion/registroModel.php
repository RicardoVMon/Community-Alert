<?php include_once __DIR__ . '/../Conexion/dbconnection.php';

function obtenerProvinciasBD()
{
    $conexion = abrirConexion();
    $query = "CALL obtenerProvincias()";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
}

function obtenerIdDistrito($nombreProvincia, $nombreCanton, $nombreDistrito)
{
    $conexion = abrirConexion();
    $query = "CALL obtenerIdDistrito('$nombreProvincia', '$nombreCanton', '$nombreDistrito')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
}

function ConsultarIdGeneroBD()
{
    $conexion = abrirConexion();
    $sentencia = "CALL ConsultarIdGenero()";
    $respuesta = $conexion -> query($sentencia);
    cerrarConexion($conexion);
    return $respuesta;
}
function registrarUsuario($cedula, $nombre, $apellidos, $correo, $genero, $contrasennia, $distrito, $icono)
{
    $conexion = abrirConexion();
    $query = "CALL registrarUsuario('$cedula', '$nombre', '$apellidos', '$correo', '$genero', '$contrasennia', '$distrito', '$icono')";
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

function obtenerIdUsuario($cedula)
{
    $conexion = abrirConexion();
    $query = "CALL obtenerIdUsuario('$cedula')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
}
