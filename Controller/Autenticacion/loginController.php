<?php include_once __DIR__ . '/../../Model/Autenticacion/loginModel.php';

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

if (isset($_POST['btnLogin'])) {

    $cedula = $_POST['cedula'];
    $contrasennia = $_POST['contrasennia'];

    $resultadoLogin = loginUsuario($cedula, $contrasennia);

    if ($resultadoLogin->num_rows > 0) {

        $datos = mysqli_fetch_array($resultadoLogin);

        $_SESSION['idUsuario'] = $datos['id_usuario'];
        $_SESSION['nombreUsuario'] = capitalizarNombre($datos['nombre_usuario']);
        $_SESSION['primerNombre'] = obtenerPrimerNombre($datos['nombre_usuario']);
        $_SESSION['email'] = $datos['email'];
        $_SESSION['descripcion'] = $datos['descripcion'];
        $_SESSION['icono'] = $datos['icono'];
        $_SESSION['fechaIngreso'] = $datos['fecha_ingreso'];
        $_SESSION['idDistrito'] = $datos['id_distrito'];
        $_SESSION['nombreDistrito'] = $datos['nombre_distrito'];
        $_SESSION['rolUsuario'] = $datos['id_role'];
        $_SESSION['iconoUsuario'] = $datos['icono'];

        if ($_SESSION['rolUsuario'] == 1) {
            header("Location: ../../View/Admin/Dashboard/dashboard.php");
        } else {
            header("Location: ../../View/User/Home/home.php");
        }
    } else {

        $_POST['mensaje'] = "Usuario o contraseña incorrectos";
    }
}

if (isset($_POST["btnCerrarSesion"])) {
    session_destroy();
    header("Location: ../../View/Autenticacion/login.php");
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
