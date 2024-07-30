<?php include_once __DIR__ . '/../Layout/layoutHome.php';
include_once __DIR__ . '/../../../Controller/PerfilController/perfilController.php';

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

$posts = mysqli_fetch_array(ConsultarUsuarioPosts($_SESSION["idUsuario"]));
$comentarios = mysqli_fetch_array(ConsultarUsuarioComentarios($_SESSION["idUsuario"]));
$datos = ConsultarUsuario($_SESSION["idUsuario"]);

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
                                                <img src="<?php echo $_SESSION['icono']; ?>" style="height: 10vw; width: 10vw; object-fit: cover;" class="rounded-circle img-fluid">
                                            </div>
                                            <div class="mx-3 d-flex flex-column justify-content-center">
                                                <h1 class="font-weight-bold display-4 mb-0">
                                                    <?php echo $_SESSION['nombreUsuario']; ?>
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
                                        <a href="perfilPosts.php" class="btn btn-primary btn-round btn-sm mr-2" style="width: 150px">
                                            Posts
                                        </a>
                                        <a href="perfilComentarios.php" class="btn btn-primary btn-round btn-sm mr-2" style="width: 150px">
                                            Comentarios
                                        </a>
                                    </div>
                                </div>

                                <!-- Post hechos por el usuario -->
                                <div class="col-md-12 px-0">
                                    <div class="card">
                                        <div class="card-header pb-1">
                                            <div class="d-flex">
                                                <img src="<?php echo $_SESSION['icono']; ?>" class="rounded-circle" style="height: 1vw; width: 1vw; object-fit: cover;">
                                                <b class="ml-1"><?php echo $_SESSION['nombreUsuario']; ?></b>
                                                <span class="ml-1">10/11/2022</span>
                                            </div>
                                            <div class="card-head-row">
                                                <p class="card-title" style="font-size: 2vw;">Aumento de Inundaciones</p>
                                                <div class="card-tools">
                                                    <a href="#" class="btn btn-danger btn-round btn-sm mr-2">
                                                        <span class="btn-label">
                                                            <i class="fa-solid fa-circle-exclamation"></i>
                                                        </span>
                                                        Incidente
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <p class="mb-0">
                                                ¡Hola a todos! Quería compartir con ustedes una noticia importante sobre el aumento de inundaciones en nuestra comunidad. En los últimos meses, hemos experimentado un incremento significativo en los niveles de agua, lo que ha causado daños en varias áreas. Es crucial que estemos preparados y tomemos medidas para proteger nuestras propiedades y garantizar la seguridad de nuestras familias. Si tienes alguna información adicional o consejos sobre cómo lidiar con las inundaciones, por favor compártelos en los comentarios. ¡Gracias!
                                            </p>
                                        </div>
                                        <div class="card-footer">
                                            <a href="#" class="btn btn-primary mr-2">
                                                <i class="fa fa-thumbs-up"></i> Me gusta
                                            </a>
                                            <a href="#" class="btn btn-secondary mr-2">
                                                <i class="fa fa-comment"></i> Comentar
                                            </a>
                                            <a href="#" class="btn btn-danger">
                                                <i class="fa fa-pen"></i> Editar
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-12 px-0">
                                    <div class="card">
                                        <div class="card-header pb-1">
                                            <div class="d-flex">
                                                <img src="<?php echo $_SESSION['icono']; ?>" class="rounded-circle" style="height: 1vw; width: 1vw; object-fit: cover;">
                                                <b class="ml-1"><?php echo $_SESSION['nombreUsuario']; ?></b>
                                                <span class="ml-1">10/11/2022</span>
                                            </div>
                                            <div class="card-head-row">
                                                <p class="card-title" style="font-size: 2vw;">Lorem Ipsum</p>
                                                <div class="card-tools">
                                                    <a href="#" class="btn btn-danger btn-round btn-sm mr-2">
                                                        <span class="btn-label">
                                                            <i class="fa-solid fa-circle-exclamation"></i>
                                                        </span>
                                                        Incidente
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <p class="mb-0">
                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                                            </p>
                                        </div>
                                        <div class="card-footer">
                                            <a href="#" class="btn btn-primary mr-2">
                                                <i class="fa fa-thumbs-up"></i> Me gusta
                                            </a>
                                            <a href="#" class="btn btn-secondary mr-2">
                                                <i class="fa fa-comment"></i> Comentar
                                            </a>
                                            <a href="#" class="btn btn-danger">
                                                <i class="fa fa-pen"></i> Editar
                                            </a>
                                        </div>
                                    </div>
                                </div>



                            </div>

                            <!-- Seccion Sobre Mi -->
                            <div class="col-md-4">
                                <div class="card">
                                    <div class="card-header">
                                        <div class="card-title text-center" style="font-size: 1.5vw;">
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
                                            <div class="col-12">
                                                <a href="editarPerfil.php" class="text-white">
                                                    <div class="card bg-primary">
                                                        <div class="card-body">Editar mi información</div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-12">
                                                <a href="../Home/home.php" class="text-white">
                                                    <div class="card bg-primary">
                                                        <div class="card-body">Inicio</div>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-12">
                                                <a href="../Comunidad/comunidad.php" class="text-white">
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