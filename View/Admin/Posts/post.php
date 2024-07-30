<?php include_once __DIR__ . '/../Layout/layoutAdmin.php';
include_once __DIR__ . '/../../../Controller/Admin/postControllerAdmin.php';

if (isset($_GET['idPublicacion'])) {
    $id = $_GET['idPublicacion'];
}
$datosPost = ObtenerPublicacion($id);
?>

<!DOCTYPE html>
<html lang="en">
<?php head(); ?>

<body data-background-color="light">

    <div class="wrapper">
        <!-- Nav Bar -->
        <?php mostrarNavBar(); ?>

        <!-- Sidebar -->
        <?php mostrarSideBar(); ?>

        <!-- Contenido -->
        <div class="main-panel">
            <div class="content">
                <div class="page-inner">
                    <div class="page-inner-top">
                        <div class="mb-4 d-flex flex-column">
                            <span class="display-1">Administrador de Posts</span>
                            <span class="display-5 pl-2">Interactua con la tabla conforme a lo que necesites realizar!</span>
                        </div>
                    </div>
                    <div class="mt-2 mb-4 row">
                        <!-- Columna de contenido de la noticia y comentarios -->
                        <div class="col-md-8">
                            <div id="content" class="content content-full-width">
                                <!-- Inicio noticia -->

                                <!-- Post -->
                                <div class="col-md-12 px-0" style="margin-top:100px">
                                    <div class="card">
                                        <div class="card-header pb-1">
                                            <div class="d-flex">
                                                <img src="<?php echo $datosPost['icono']; ?>" class="rounded-circle" style="height: 50px; width: 50px; object-fit: cover;" id="img_usuario">
                                                <a href="#" class="ml-2"><b id="nombre_usuario"><?php echo $datosPost['nombre_usuario']; ?></b></a>
                                                <span class="ml-2" id="fecha-publicacion"><?php echo $datosPost['fecha']; ?></span>
                                            </div>
                                            <div class="card-head-row mt-2">
                                                <a href="#" class="card-title" style="font-size: 28px;" id="titulo-publicacion"><?php echo $datosPost['titulo']; ?></a>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <p class="mb-0" id="contenido-publicacion">
                                                <?php echo $datosPost['contenido']; ?>
                                            </p>
                                        </div>
                                        <div class="card-footer">
                                            <a href="#" class="btn btn-primary mr-2">
                                                <i class="fa fa-thumbs-up"></i> Cantidad de Likes
                                            </a>
                                            <form method="post" action="../../../Controller/Admin/postControllerAdmin.php" style="display:inline; float: right;">
                                                <input type="hidden" name="idPublicacion" value="<?php echo $datosPost['id_publicacion']; ?>">
                                                <button type="submit" name="btnEliminarPostVista" class="btn btn-danger">Eliminar Post</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <!-- Fin noticia -->

                                <!-- Comentarios -->

                                <?php ObtenerComentariosPublicacion($id) ?>

                                <!-- Fin de los comentarios -->
                            </div>
                        </div>

                        <!-- Columna de información de la comunidad -->
                        <div class="col-md-3" style="margin-left:25px">
                            <div class="card" style="margin-top:40px">
                                <div class="card-header">
                                    <div class="card-title text-center" style="font-size: 1.5vw;">
                                        <i class="fa-solid fa fa-home"></i>
                                        Comunidad
                                    </div>
                                </div>
                                <div class="card-body pb-0">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <p>dd/mm/yyyy</p>
                                            <p>Fecha</p>
                                        </div>
                                        <div class="col-md-6">
                                            <p>#####</p>
                                            <p>Número de seguidores</p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <p>#####</p>
                                            <p>Distrito</p>
                                        </div>
                                        <div class="col-md-6">
                                            <p>####</p>
                                            <p>Canton</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="footer">
                <div class="container-fluid">
                    <nav class="pull-left">
                        <ul class="nav">
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    Sobre Nosotros
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    Soporte
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    Licencias
                                </a>
                            </li>
                        </ul>
                    </nav>
                    <div class="copyright ml-auto">
                        2024, Umbrella
                    </div>
                </div>
            </footer>

        </div>

        <?php scripts(); ?>

</body>

</html>