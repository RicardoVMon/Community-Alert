<?php include_once __DIR__ . "/../Conexion/dbconnection.php";

function obtenerInformacionComunidadBD($idComunidad) {
    
    $conexion = abrirConexion();
    $query = "CALL obtenerInformacionComunidad('$idComunidad')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;

}

function obtenerPostsBD($idComunidad) {
    
    $conexion = abrirConexion();
    $query = "CALL obtenerPostsComunidad('$idComunidad')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
    
}

function obtenerPostsComunidadesSeguidasBD($idUsuario) {
    
    $conexion = abrirConexion();
    $query = "CALL obtenerPostsComunidadesSeguidas('$idUsuario')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
    
}

function seguirComunidadBD($idUsuario, $idComunidad) {
    
    $conexion = abrirConexion();
    $query = "CALL seguirComunidad('$idUsuario', '$idComunidad')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
    
}

function dejarDeSeguirComunidadBD($idUsuario, $idComunidad) {
    
    $conexion = abrirConexion();
    $query = "CALL dejarDeSeguirComunidad('$idUsuario', '$idComunidad')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
    
}

function obtenerComunidadesSeguidasBD($idUsuario, $idComunidad) {
    
    $conexion = abrirConexion();
    $query = "CALL obtenerComunidadesSeguidas('$idUsuario', '$idComunidad')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
    
}