<?php include_once __DIR__ . "/../../Model/Autenticacion/registroModel.php";


/* function obtenerProvincias()
{
    $provincias = obtenerProvinciasBD();

    if ($provincias->num_rows > 0) {
        $provinciasArray = array();
        while ($provincia = mysqli_fetch_array($provincias)) {
            echo "<option value='" . $provincia['idProvincia'] . "'>" . $provincia['nombre_provincia'] . "</option>";
        }
    }

    return $provinciasArray;
} */


if (isset($_POST['btnRegistrar'])) {

    $cedula = $_POST['cedula'];
    $nombre = $_POST['nombre'];
    $apellidos = $_POST['apellidos'];
    $correo = $_POST['correo'];
    $genero = $_POST['genero'];
    $provincia = $_POST['nombreProvincia'];
    $canton = $_POST['nombreCanton'];
    $distrito = $_POST['nombreDistrito'];
    $contrasennia = $_POST['contrasennia'];

    $resultadoCedula = obtenerCedula($cedula);
    $resultadoRegistro;

    if ($resultadoCedula->num_rows > 0) {

        $_POST['mensaje'] = "El usuario ya se encuentra registrado";
        return;
    } else {

        $resultadoDistrito = obtenerIdDistrito($provincia, $canton, $distrito);

        if ($resultadoDistrito->num_rows > 0) {

            $datos = mysqli_fetch_array($resultadoDistrito);
            $distrito = $datos['id_distrito'];
            $resultadoRegistro = registrarUsuario($cedula, $nombre, $apellidos, $correo, $genero, $contrasennia, $distrito);

        }
    }

    if ($resultadoRegistro) {
        header("Location: ../../View/Autenticacion/login.php");

        $_POST['mensaje'] = "Usuario fue registrado con éxito";
    } else {
        $_POST['mensaje'] = "Error al registrar el usuario";
    }
}

function ConsultarIdGenero()
{
    $respuesta = ConsultarIdGeneroBD();

    if($respuesta -> num_rows > 0)
    {
        while ($row = mysqli_fetch_array($respuesta)) 
        { 
            echo "<option value=" . $row["id_genero"] . ">" . $row["nombre_genero"] . "</option>";
        }
    }
}