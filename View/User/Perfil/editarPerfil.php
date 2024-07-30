<?php include_once __DIR__ . '/../Layout/layoutHome.php';
include_once __DIR__ . '/../../../Controller/PerfilController/perfilController.php';

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

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
                        <div class="mb-4 d-flex flex-column">
                            <h1 class="font-weight-bold display-4 mb-0">Editar Perfil</h1>
                        </div>
                    </div>

                    <!-- Inicio de seccion de contenido -->
                    <div class="row">

                        <div class="col-6">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">Vista del Perfil Actual</div>
                                </div>
                                <div class="card-body">
                                    <div class="mt-2 mb-4">
                                        <div class="d-flex justify-content-between px-4 mt-3">
                                            <div class="d-flex justify-content-start">
                                                <div class="d-flex flex-column justify-content-center">
                                                    <img src="<?php echo $_SESSION['icono']; ?>" style="height: 7vw; width: 7vw; object-fit: cover;" class="rounded-circle img-fluid">
                                                </div>
                                                <div class="mx-3 d-flex flex-column justify-content-center">
                                                    <h1 class="font-weight-bold mb-0">
                                                        <?php echo $_SESSION['nombreUsuario']; ?>
                                                    </h1>
                                                    <h6 class="mb-0">
                                                        <?php echo $datos["descripcion"]; ?>
                                                    </h6>
                                                </div>
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
                                                <img src="../../assets/img/profile.jpg" class="rounded-circle" style="height: 1vw; width: 1vw; object-fit: cover;">
                                                <div class="ml-1"><b><?php echo $_SESSION['nombreUsuario']; ?></b></div>
                                                <span class="ml-1">dd/mm/yyyy</span>
                                            </div>
                                            <div class="card-head-row">
                                                <a class="card-title" style="font-size: 1vw;">Lorem, ipsum dolor.</a>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <p class="mb-0">
                                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur debitis
                                                qui deleniti tempora molestiae voluptatum fuga vero id est repellendus.
                                            </p>
                                        </div>
                                        <div class="card-footer">
                                            <a href="#" class="btn btn-sm btn-primary mr-2">
                                                <i class="fa fa-thumbs-up"></i> Me gusta
                                            </a>
                                            <a href="#" class="btn btn-sm btn-secondary mr-2">
                                                <i class="fa fa-comment"></i> Comentar
                                            </a>
                                            <a href="#" class="btn btn-sm btn-danger">
                                                <i class="fa fa-pen"></i> Editar
                                            </a>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>

                        <div class="col-6">
                            <!-- Formulario para editar perfil ****************** falta imagen que vemos despues en clase ******************** -->
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">Editar Perfil</div>
                                </div>
                                <div class="card-body">

                                    <?php
                                    if (isset($_POST["msj"])) {
                                        echo '<div class="alert alert-info TextoCentrado">' . $_POST["msj"] . '</div>';
                                    }
                                    ?>

                                    <form action="" method="post">
                                        <input id="txtIdUsuario" name="txtIdUsuario" type="hidden" value="<?php echo $datos["id_usuario"]; ?>">

                                        <label for="txtCedula">Identificación</label>
                                        <div class="input-group mb-3">
                                            <input id="txtCedula" name="txtCedula" type="text" class="form-control" placeholder="Cedula" readonly value="<?php echo $datos["cedula"]; ?>">
                                            <div class="input-group-append">
                                                <div class="input-group-text">
                                                    <span class="fas fa-user"></span>
                                                </div>
                                            </div>
                                        </div>

                                        <label for="txtNombreUsuario">Nombre</label>
                                        <div class="input-group mb-3">
                                            <input id="txtNombreUsuario" name="txtNombreUsuario" type="text" class="form-control" placeholder="Nombre" readonly value="<?php echo $datos["nombre_usuario"]; ?>">
                                            <div class="input-group-append">
                                                <div class="input-group-text">
                                                    <span class="fas fa-user"></span>
                                                </div>
                                            </div>
                                        </div>

                                        <label for="txtEmail">Correo Electrónico</label>
                                        <div class="input-group mb-3">
                                            <input type="email" id="txtEmail" name="txtEmail" class="form-control" placeholder="Correo Electrónico" required value="<?php echo $datos["email"]; ?>">
                                            <div class="input-group-append">
                                                <div class="input-group-text">
                                                    <span class="fas fa-envelope"></span>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- ****************** modificar en bd para que no sea codigo quemado ******************** -->
                                        <label for="selectGenero">Género</label>
                                        <div class="input-group mb-3">
                                            <select id="selectGenero" name="selectGenero" class="form-control" required>
                                                <?php ConsultarIdGenero($datos["id_genero"]); ?>
                                            </select>
                                        </div>

                                        <label for="description">Descripción</label>
                                        <div class="form-group">
                                            <textarea class="form-control" id="description" name="description" rows="3" placeholder="Descripción"><?php echo $datos["descripcion"]; ?></textarea>
                                        </div>

                                        <label for="selectDistrito">Distrito</label>
                                        <div class="input-group mb-3">
                                            <select id="selectDistrito" name="selectDistrito" class="form-control" required>
                                                <?php ConsultarIdDistrito($datos["id_distrito"]); ?>
                                            </select>
                                        </div>

                                        <div class="row">
                                            <div class="col-9"></div>
                                            <div class="col-lg-3 col-md-6 col-sm-6">
                                                <button type="submit" id="btnEditarPerfil" name="btnEditarPerfil" class="btn btn-primary btn-block">Procesar</button>
                                            </div>
                                        </div>
                                    </form>
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
    <script>
        $(document).ready(function() {
            $('#userTable').DataTable();
        });
    </script>

</body>

</html>