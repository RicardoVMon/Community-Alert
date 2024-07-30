<?php include_once __DIR__ . '/../Layout/layoutHome.php';
include_once __DIR__ . '/../../../Controller/PostController/postController.php';

$noticia = VisualizarNoticia($_GET['r']);
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
                    </div>
                    <div class="mt-2 mb-4 row">
                        <!-- Columna de contenido de la noticia y comentarios -->
                        <div class="col-md-8">
                            <div id="content" class="content content-full-width">
                                <!-- Inicio noticia -->
                                <?php
                                if (isset($_POST["msj"])) {
                                    echo '<div class="alert alert-info TextoCentrado">' . $_POST["msj"] . '</div>';
                                }
                                ?>
                                <!-- Post -->
                                <div class="col-md-12 px-1" style="margin-top:100px">
                                    <div class="card" style="border: none; box-shadow: none; background: transparent;">
                                        <div class="card-header pb-1" style="border: none; background: transparent;">
                                            <div class="d-flex">
                                                <img src="<?php echo $noticia['icono']; ?>" class="rounded-circle" style="height: 45px; width: 45px; object-fit: cover;" id="img_usuario">
                                                <a href="#" class="ml-2"><b id="nombre_usuario"><?php echo $noticia['nombre_usuario']; ?></b></a> 
                                                <span class="ml-2" id="fecha-publicacion"><?php echo $noticia['fecha']; ?></span>
                                            </div>
                                            <div class="card-head-row mt-2">
                                                <a href="#" class="card-title" style="font-size: 28px;" id="titulo-publicacion"><?php echo $noticia['titulo']; ?></a>
                                                <div class="card-tools">
                                                    <a href="#" class="btn btn-danger btn-round btn-sm mr-2">
                                                        <span class="btn-label">
                                                            <i class="fa-solid fa-circle-exclamation"></i>
                                                        </span>
                                                        <?php echo $noticia['nombre_categoria_publicacion']; ?>
                                                    </a>
                                                    <a href="#" class="btn btn-info btn-round btn-sm mr-2 ">
                                                        <span class="btn-label">
                                                            <i class="fa-solid fa-house"></i>
                                                        </span>
                                                        <?php echo $_SESSION['nombreDistrito']; ?>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body" style="border: none; background: transparent;">
                                            <p class="mb-0" id="contenido-publicacion">
                                                <?php echo $noticia['contenido']; ?>
                                            </p>
                                        </div>
                                        <div class="card-footer" style="border: none; background: transparent;">
                                            <a href="#" class="btn btn-success mr-2">
                                                <i class="fa fa-thumbs-up"></i> Me gusta
                                            </a>
                                            <a href="#" class="btn btn-primary">
                                                <i class="fa fa-comment"></i> Comentar
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Fin noticia -->

                                <!-- Parte de comentarios -->
                                <div class="profile-content mt-1">
                                    <div class="timeline-comment-box">
                                        <div class="input">
                                            <form action="">
                                                <div class="input-group">
                                                    <input type="text" class="form-control rounded-corner btn-round" placeholder="Comenta algo!">
                                                    <span class="input-group-btn p-l-10">
                                                        
                                                    </span>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <!-- Fin de los comentarios -->
                            </div>
                        </div>

                        <!-- Columna de información de la comunidad -->
                        <div class="col-md-3" style="margin-left:40px">
                            <div class="card" style="margin-top:50px; border: none; box-shadow: none; background: transparent;">
                                <div class="card-header" style="border: none; background: transparent;">
                                    <div class="card-title text-center" style="font-size: 1.5vw;">
                                        <i class="fa-solid fa fa-home"></i>
                                        <?php echo $_SESSION['nombreDistrito']; ?>
                                    </div>
                                </div>
                                <div class="card-body pb-0" style="border: none; background: transparent;">
                                    <?php VisualizarInformacionComunidad($_GET['q']); ?>
                                    <!-- links hacia otras vistas -->
                                    <div class="row mt-4">
                                        <div class="col-12">
                                            <a href="../Comunidad/comunidad.php?q=<?php echo $_SESSION['idDistrito']; ?>" class="text-white">
                                                <div class="card bg-info" style="border: none; box-shadow: none; background: transparent;">
                                                    <div class="card-body">Mi Comunidad</div>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="col-12 mt-4">
                                            <a href="#" class="text-white">
                                                <div class="card bg-info" style="border: none; box-shadow: none; background: transparent;">
                                                    <div class="card-body">Mi perfil</div>
                                                </div>
                                            </a>
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