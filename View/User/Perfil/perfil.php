<?php include_once __DIR__ . '/../Layout/layoutHome.php';
include_once __DIR__ . '/../../../Controller/PerfilController/perfilController.php';
include_once __DIR__ . '/../../../Controller/Comentario/comentarioController.php';

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

$posts = mysqli_fetch_array(ConsultarUsuarioPosts($_GET['s']));
$comentarios = mysqli_fetch_array(ConsultarUsuarioComentarios($_GET['s']));
$datos = ConsultarUsuario($_GET['s']);

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
                        <div class="row">

                            <!-- info usuario -->
                            <div class="col-md-8">
                                <div class="mt-2 mb-4">
                                    <div class="d-flex justify-content-between px-4 mt-3">
                                        <div class="d-flex justify-content-start">
                                            <div class="d-flex flex-column justify-content-center">
                                                <img src="<?php echo $datos['icono'] ?>" style="height: 10vw; width: 15vw; object-fit: cover;" class="rounded-circle img-fluid">
                                            </div>
                                            <div class="mx-3 d-flex flex-column justify-content-center">
                                                <h1 class="font-weight-bold display-4 mb-0">
                                                    <?php echo $datos['nombre_usuario']; ?>
                                                </h1>
                                                <h6 class="mb-0">
                                                    <?php echo $datos["descripcion"]; ?>
                                                </h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Inicio de seccion de contenido -->
                                <!-- Sección de filtros -->
                                <div class="row mb-3">
                                    <div class="col-md-12 d-flex justify-content-start">
                                        <a href="perfil.php?s=<?php echo $_GET['s']; ?>&t=posts" class="btn btn-primary btn-round btn-sm mr-2" style="width: 150px">
                                            Posts
                                        </a>
                                        <a href="perfil.php?s=<?php echo $_GET['s']; ?>&t=comentarios" class="btn btn-primary btn-round btn-sm mr-2" style="width: 150px">
                                            Comentarios
                                        </a>
                                    </div>
                                </div>

                                <?php

                                if (isset($_GET['t']) && $_GET['t'] == 'posts') {
                                    ObtenerPostsUsuario($_GET['s']);
                                } else {
                                    obtenerComentariosUsuario($_GET['s']);
                                }

                                ?>

                            </div>

                            <!-- Seccion Sobre Mi -->
                            <div class="col-md-4">
                                <div class="card">
                                    <div class="card-header">
                                        <div class="text-center" style="font-size: 1.5vw;">
                                            <i class="fa-solid fa-user"></i>
                                            Sobre Mi
                                        </div>
                                    </div>

                                    <div class="card-body pb-0">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <h4 class="fw-bold mb-0"><?php echo $_SESSION['fechaIngreso']; ?></h4>
                                                <p>Fecha de ingreso</p>
                                            </div>
                                            <div class="col-md-6">
                                                <h4 class="fw-bold mb-0"><?php echo $posts['cantidad']; ?></h4>
                                                <p># de Posts</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <h4 class="fw-bold mb-0"><?php echo $comentarios['cantidad']; ?></h4>
                                                <p># de Comentarios</p>
                                            </div>
                                            <div class="col-md-6">
                                                <h4 class="fw-bold mb-0"><?php echo $datos['nombre_distrito']; ?></h4>
                                                <p>Nombre de Comunidad</p>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- links home, comunidad -->
                                    <div class="card-footer">
                                        <div class="row">

                                            <?php
                                            if ($_SESSION['idUsuario'] == $_GET['s']) {

                                                echo '<div class="col-12">
                                                        <a href="editarPerfil.php?s=' . $_GET['s'] . '" class="text-white">
                                                            <div class="card bg-primary">
                                                                <div class="card-body">Editar mi información</div>
                                                            </div>
                                                        </a>
                                                    </div>';
                                            }
                                            ?>

                                            <div class="col-12">
                                                <a href="../Home/home.php" class="text-white">
                                                    <div class="card bg-primary">
                                                        <div class="card-body">Inicio</div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-12">
                                                <a href="../Comunidad/comunidad.php?q=<?php echo $_SESSION['idDistrito']; ?>" class="text-white">

                                                    <div class="card bg-primary">
                                                        <div class="card-body">Mi Comunidad</div>
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


    </div>

    <?php scripts(); ?>

</body>

</html>