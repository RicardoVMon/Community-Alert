<?php include_once __DIR__ . "/../Conexion/dbconnection.php";


function PublicarNoticia($titulo, $noticia, $usuario, $categoria)
{
    $conexion = abrirConexion();
    $sentencia = "CALL PublicarNoticia('$titulo','$noticia','$usuario','$categoria')";
    $respuesta = $conexion->query($sentencia);
    cerrarConexion($conexion);
    return $respuesta;
}

function obtenerCategoriasBD()
{
    $conexion = abrirConexion();
    $query = "CALL obtenerCategorias()";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
}

function ObtenerNoticia($IdNoticia)
{
    $conexion = abrirConexion();
    $sentencia = "CALL ObtenerNoticia('$IdNoticia')";
    $respuesta = $conexion->query($sentencia);
    cerrarConexion($conexion);
    return $respuesta;
}


function ObtenerInformacionComunidad()
{
    $conexion = abrirConexion();
    $sentencia = "CALL ObtenerInformacionComunidad()";
    $respuesta = $conexion->query($sentencia);
    cerrarConexion($conexion);
    return $respuesta;
}

function obtenerNoticiaIdSegunContenidoBD($titulo, $contenido, $usuario, $categoria)
{
    $conexion = abrirConexion();
    $query = "CALL obtenerNoticiaSegunContenido('$titulo', '$contenido', '$usuario', '$categoria')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
}

function obtenerNombreProvinciaCanton($id_distrito)
{
    $conexion = abrirConexion();
    $sentencia = "CALL obtenerNombreProvinciaCanton($id_distrito)";
    $respuesta = $conexion->query($sentencia);
    cerrarConexion($conexion);
    return $respuesta;
}

function obtenerSeguidoresYFecha($id_distrito)
{
    $conexion = abrirConexion();
    $sentencia = "CALL obtenerSeguidoresYFecha($id_distrito)";
    $respuesta = $conexion->query($sentencia);
    cerrarConexion($conexion);
    return $respuesta;
}