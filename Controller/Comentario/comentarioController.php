<?php include_once __DIR__ . "/../../Model/Comentario/comentarioModel.php";

if (isset($_POST["btnPublicarComentario"])) {
    
    $contenido = $_POST["contenido"];
    $idPublicacion = $_POST["idPublicacion"];
    $idUsuario = $_POST["idUsuario"];

    $resultado = publicarComentario($contenido, $idPublicacion, $idUsuario);

    if ($resultado) {
        header("Location: noticiaCreada.php?q=" . $_GET['q'] . "&r=" . $_GET['r']);
    } else {
        echo "Error al publicar comentario";
    }
}

function obtenerComentarios($idPublicacion)
{
    $respuesta = obtenerComentariosBD($idPublicacion);

    if ($respuesta->num_rows > 0) {
        while ($row = mysqli_fetch_array($respuesta)) {
            echo '<div class="row mb-3">
                        <div class="col-1">
                            <img src=" ' . $row["icono"] . '" class="rounded-circle ml-2" style="height: 70px; width: 70px; object-fit: cover;" id="img_usuario">
                        </div>
                        <div class="col-10">
                            <div class="d-flex flex-column mb-3">
                                <div class="d-flex">
                                    <b>' . $row["nombre_usuario"] . '</b>
                                    <div class="ml-2"> ' . $row["fecha"] . ' </div>
                                    <span class="btn-label ml-2">
                                        <i class="fa-solid fa-house"></i>
                                        ' . $row['nombre_distrito'] . '
                                    </span>
                                </div>
                                <div>
                                    ' . $row["contenido"] . '
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>';
        }
    }
}

function obtenerComentariosUsuario($idUsuario)
{
    $respuesta = obtenerComentariosUsuarioBD($idUsuario);

    if ($respuesta->num_rows > 0) {
        while ($row = mysqli_fetch_array($respuesta)) {
            echo '<a href="../../../View/User/Post/noticiaCreada.php?q=' . $row["id_distrito"] . '&r=' . $row["id_publicacion"] . '">
                <div class="col-md-12 px-0">
                    <div class="card">
                    <div class="card-header pb-1">
                        <div class="d-flex">
                        <img src="' . $row["icono_comunidad"] . '" class=" rounded-circle" style="height: 20px; width: 20px;">
                        <div class="ml-2">' . $row["nombre_usuario"] . ' | </div>
                        <div class="ml-2">' . $row["nombre_distrito"] . ' | </div>
                        <div class="ml-2">' . $row["titulo"] . '</div>
                        </div>
                    </div>
                    <div class="card-body">
                        <p class="mb-0">
                        ' . $row["contenido"] . '
                        </p>
                        <div class="mt-2"> <b> Hace ' . $row["dias_desde_comentario"] . ' días </b> </div>
                    </div>
                    </div>
                </div>
                </a>';
        }
    }
}