<?php include_once __DIR__ . '/../../Model/Perfil/perfilModel.php';
include_once __DIR__ . '/../../View/User/Layout/layoutHome.php';

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

function ConsultarUsuario($IdUsuario)
{
    $respuesta = ConsultarUsuarioBD($IdUsuario);
    if ($respuesta->num_rows > 0) {
        return mysqli_fetch_array($respuesta);
    }
}

function ConsultarIdDistrito($id_distrito)
{
    $respuesta = ConsultarIdDistritoBD();

    if ($respuesta->num_rows > 0) {
        while ($row = mysqli_fetch_array($respuesta)) {
            if ($id_distrito == $row["id_distrito"]) {
                echo "<option selected value=" . $row["id_distrito"] . ">" . $row["nombre_distrito"] . "</option>";
            } else {
                echo "<option value=" . $row["id_distrito"] . ">" . $row["nombre_distrito"] . "</option>";
            }
        }
    }
}

function ConsultarIdGenero($id_genero)
{
    $respuesta = ConsultarIdGeneroBD();

    if ($respuesta->num_rows > 0) {
        while ($row = mysqli_fetch_array($respuesta)) {
            if ($id_genero == $row["id_genero"]) {
                echo "<option selected value=" . $row["id_genero"] . ">" . $row["nombre_genero"] . "</option>";
            } else {
                echo "<option value=" . $row["id_genero"] . ">" . $row["nombre_genero"] . "</option>";
            }
        }
    }
}

if (isset($_POST["btnEditarPerfil"])) {
    $IdUsuario = $_POST["txtIdUsuario"];
    $Cedula = $_POST["txtCedula"];
    $NombreUsuario = $_POST["txtNombreUsuario"];
    $Email = $_POST["txtEmail"];
    $Genero = $_POST["selectGenero"];
    $Descripcion = $_POST["description"];
    $Icono = "000"; //$_POST["txtIcono"];
    $IdDistrito = $_POST["selectDistrito"];


    $respuesta = EditarPerfilBD($IdUsuario, $Cedula, $NombreUsuario, $Email, $Genero, $Descripcion, $Icono, $IdDistrito);

    if ($respuesta == true) {
        $_SESSION["nombreUsuario"] = $_POST["txtNombreUsuario"];
        header("location: ../../../View/User/Perfil/perfilPosts.php");
    } else {
        $_POST["msj"] = "No se ha podido actualizar la información de su perfil.";
    }
}

function ConsultarUsuarioPosts($IdUsuario)
{

    return ConsultarUsuarioPostsBD($IdUsuario);
}

function ConsultarUsuarioComentarios($IdUsuario)
{

    return ConsultarUsuarioComentariosBD($IdUsuario);
}
