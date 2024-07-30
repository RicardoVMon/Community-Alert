<?php include_once __DIR__ . "/../../Model/Comunidad/comunidadModel.php";

function obtenerInformacionComunidad($idComunidad)
{
    $respuesta = obtenerInformacionComunidadBD($idComunidad);
    if ($respuesta->num_rows > 0) {
        return mysqli_fetch_array($respuesta);
    }
}

function obtenerPosts($idComunidad)
{

    $respuesta = obtenerPostsBD($idComunidad);

    if ($respuesta->num_rows > 0) {
        while ($row = mysqli_fetch_array($respuesta)) {

            echo '
            <div class="col-md-12 px-0">
                <div class="card">
                    <div class="card-header pb-1">
                        <div class="d-flex">
                            <img src="' . $row['icono'] . '" class="rounded-circle" style="height: 1vw; width: 1vw; object-fit: cover;">
                            <a href="#" class="ml-1"><b>' . $row['nombre_usuario'] . '</b></a>
                            <span class="ml-1">' . $row['fecha'] . '</span>
                        </div>
                        <div class="card-head-row">
                            <a href="../../../View/User/Post/noticiaCreada.php?q=' .  $idComunidad . '&r=' . $row['id_publicacion'] . '" class="card-title mb-0" style="font-size: 2vw;">' . $row['titulo'] . '</a>
                            <div class="card-tools">
                                <a href="#" class="btn btn-warning btn-round btn-sm mr-2">
                                    <span class="btn-label">
                                        <i class="fa-solid fa-circle-exclamation"></i>
                                    </span>
                                    ' . $row['nombre_categoria_publicacion'] . '
                                </a>
                                <a href="#" class="btn btn-info btn-border btn-round btn-sm mr-2">
                                    <span class="btn-label">
                                        <i class="fa-solid fa-share"></i>
                                    </span>
                                    Compartir
                                </a>
                                <a href="#" class="btn btn-info btn-border btn-round btn-sm">
                                    <span class="btn-label">
                                        <i class="fa fa-print"></i>
                                    </span>
                                    Imprimir
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <p class="mb-0">
                            ' . $row['contenido'] . '
                        </p>
                    </div>
                    <div class="card-footer">
                        <a href="#" class="btn btn-primary mr-2">
                            <i class="fa fa-thumbs-up"></i> Me gusta
                        </a>
                        <a href="#" class="btn btn-secondary">
                            <i class="fa fa-comment"></i> Comentar
                        </a>
                    </div>
                </div>
            </div>';
        }
    }
}

function obtenerPostsComunidadesSeguidas($idUsuario)
{
    /* Cambiar para que traiga el id de la comunidad */
    $respuesta = obtenerPostsComunidadesSeguidasBD($idUsuario);

    if ($respuesta->num_rows > 0) {

        while ($row = mysqli_fetch_array($respuesta)) {
        
            echo '
            <div class="col-md-12 px-0">
                <div class="card">
                    <div class="card-header pb-1">
                        <div class="d-flex">
                            <img src="' . $row['icono'] . '" class="rounded-circle" style="height: 1vw; width: 1vw; object-fit: cover;">
                            <a href="#" class="ml-1"><b>' . $row['nombre_usuario'] . '</b></a>
                            <span class="ml-1">' . $row['fecha'] . '</span>
                        </div>
                        <div class="card-head-row">
                            <a href="../../../View/User/Post/noticiaCreada.php?q=' . $row['id_distrito'] . '&r=' .  $row['id_publicacion'] . '" class="card-title mb-0" style="font-size: 2vw;">' . $row['titulo'] . '</a>
                            <div class="card-tools">
                                <a href="#" class="btn btn-warning btn-round btn-sm mr-2">
                                    <span class="btn-label">
                                        <i class="fa-solid fa-circle-exclamation"></i>
                                    </span>
                                    ' . $row['nombre_categoria_publicacion'] . '
                                </a>
                                <a href="#" class="btn btn-info btn-border btn-round btn-sm mr-2">
                                    <span class="btn-label">
                                        <i class="fa-solid fa-share"></i>
                                    </span>
                                    Compartir
                                </a>
                                <a href="#" class="btn btn-info btn-border btn-round btn-sm">
                                    <span class="btn-label">
                                        <i class="fa fa-print"></i>
                                    </span>
                                    Imprimir
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <p class="mb-0">
                            ' . $row['contenido'] . '
                        </p>
                    </div>
                    <div class="card-footer">
                        <a href="#" class="btn btn-primary mr-2">
                            <i class="fa fa-thumbs-up"></i> Me gusta
                        </a>
                        <a href="#" class="btn btn-secondary">
                            <i class="fa fa-comment"></i> Comentar
                        </a>
                    </div>
                </div>
            </div>';

        }
    }
}

function seguirComunidad($idUsuario, $idComunidad)
{
    $resultado = seguirComunidadBD($idUsuario, $idComunidad);
    return $resultado;

}

function dejarDeSeguirComunidad($idUsuario, $idComunidad)
{
    $resultado = dejarDeSeguirComunidadBD($idUsuario, $idComunidad);
    return $resultado;
}

function obtenerComunidadesSeguidas($idUsuario, $idComunidad)
{
    $respuesta = obtenerComunidadesSeguidasBD($idUsuario, $idComunidad);
    if ($respuesta->num_rows > 0) {
        return $respuesta;
    }
}

if (isset($_POST['btnSeguir'])) {
    $idUsuario = $_POST['idUsuario'];
    $idComunidad = $_POST['idComunidad'];
    $resultado = seguirComunidad($idUsuario, $idComunidad);
    if ($resultado) {
        header("Location: comunidad.php?q=" . $idComunidad);
    }
}

if (isset($_POST['btnDejarSeguir'])) {
    $idUsuario = $_POST['idUsuario'];
    $idComunidad = $_POST['idComunidad'];
    $resultado = dejarDeSeguirComunidad($idUsuario, $idComunidad);
    if ($resultado) {
        header("Location: comunidad.php?q=" . $idComunidad);
    }
}