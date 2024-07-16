<?php
include_once "../../Model/Autenticacion/loginModel.php";

if (isset($_POST['btnLogin'])) {

    $cedula = $_POST['cedula'];
    $contrasennia = $_POST['contrasennia'];

    $resultadoLogin = loginUsuario($cedula, $contrasennia);

    if ($resultadoLogin->num_rows > 0) {
        
        $datos = mysqli_fetch_array($resultadoLogin);

        if (session_status() === PHP_SESSION_NONE) {
            session_start();
        }

        $_SESSION['idUsuario'] = $datos['id_usuario'];
        $_SESSION['nombreUsuario'] = capitalizarNombre($datos['nombre_usuario']);
        $_SESSION['primerNombre'] = obtenerPrimerNombre($datos['nombre_usuario']);
        $_SESSION['email'] = $datos['email'];
        $_SESSION['idDistrito'] = $datos['id_distrito'];
        $_SESSION['nombreDistrito'] = $datos['nombre_distrito'];

        header("Location: ../../View/User/Home/home.php");

    } else {

        $_POST['mensaje'] = "Usuario o contraseña incorrectos";

    }
}

function capitalizarNombre($nombre)
{
    return ucwords(strtolower($nombre));
}

function obtenerPrimerNombre($nombreCompleto)
{
    $nombre = explode(" ", $nombreCompleto);
    $primerNombre = capitalizarNombre($nombre[0]);
    return $primerNombre;
}
