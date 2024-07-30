<?php include_once __DIR__ . '/../../Model/Admin/postModelAdmin.php';

// Para recibir la lista de publicaciones
function ObtenerPublicaciones()
{
    $respuesta = ObtenerPublicacionesBD();

    if ($respuesta->num_rows > 0) {
        while ($row = mysqli_fetch_array($respuesta)) {
            echo '<th>' . $row["titulo"] . '</th>';
            echo '<td>' . $row["contenido"] . '</td>';
            echo '<td>' . $row["cantidadComentarios"] . '</td>';
            echo '<td>' . $row["categoria"] . '</td>';
            echo '<td>
                <form method="get" action="post.php" style="display:inline;">
                    <input type="hidden" name="idPublicacion" value="' . $row["id_publicacion"] . '">
                    <button type="submit" class="btn btn-primary mr-2">Ver Completo</button>
                </form>
                <form method="post" action="" style="display:inline;">
                    <input type="hidden" name="idPublicacion" value="' . $row["id_publicacion"] . '">
                    <button type="submit" name="btnEliminarPostLista" class="btn btn-danger">Eliminar</button>
                </form>
            </td>';
            echo '</tr>';
        }
    }
}

// Para recibir los datos de una publicación específica y mostrarlos en la vista expandida
function ObtenerPublicacion($id)
{
    $resultado = ObtenerPublicacionBD($id);

    return mysqli_fetch_array($resultado);
}

// Para recibir la lista de comentarios de una publicación en la vista expandida
function ObtenerComentariosPublicacion($id)
{
    $respuesta = ObtenerComentariosPublicacionBD($id);

    if ($respuesta->num_rows > 0) {
        while ($row = mysqli_fetch_array($respuesta)) {
            echo '<div class="card mt-1">
                <div class="card-header pb-1">
                    <div class="d-flex">
                        <img src="' . $row["icono"] . '" class="rounded-circle" style="height: 50px; width: 50px; object-fit: cover;" id="img_usuario">
                        <a href="#" class="ml-2"><b id="nombre_usuario">' . $row["nombre_usuario"] . '</b></a>
                        <span class="ml-2" id="fecha-comentario">' . $row["fecha"] . '</span>
                    </div>
                </div>
                <div class="card-body">
                    <p class="mb-0" id="contenido-comentario">' . $row["contenido"] . '</p>
                </div>
                <div class="card-footer">
                    <form method="post" action="" style="display:inline; float: right;">
                        <input type="hidden" name="idComentario" value="' . $row["id_comentario"] . '">
                        <button type="submit" name="btnEliminarComentario" class="btn btn-danger">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5m2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5m3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0z"/>
                                <path d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1zM4.118 4L4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4zM2.5 3h11V2h-11z"/>
                            </svg>
                        </button>
                    </form>
                </div>
            </div>';
        }
    }
}

// Para eliminar una publicación desde la lista
if (isset($_POST['btnEliminarPostLista'])) {
    $id = $_POST['idPublicacion'];

    EliminarPublicacionBD($id);
}

// Para eliminar una publicación desde la vista expandida
if (isset($_POST['btnEliminarPostVista'])) {
    $id = $_POST['idPublicacion'];

    $resultadoEliminar = EliminarPublicacionBD($id);

    if ($resultadoEliminar) {
        header("Location: ../../View/Admin/Posts/posts.php");
    }
}

// Para eliminar un comentario desde la vista expandida
if (isset($_POST['btnEliminarComentario'])) {
    $id = $_POST['idComentario'];

    EliminarComentarioBD($id);
}
