<?php include_once __DIR__ . '/../Layout/layoutAdmin.php';
include_once __DIR__ . '/../../../Controller/Admin/comunidadControllerAdmin.php';

if (isset($_GET['idComunidad'])) {
    $id = $_GET['idComunidad'];
}

$datosComunidad = ObtenerComunidad($id); ?>

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
                            <span class="display-1">Administrador de Comunidades</span>
                            <span class="display-5 pl-2">Selecciona una comunidad que deseas modificar!</span>
                        </div>
                    </div>

                    <!-- Inicio de seccion de contenido -->
                    <div class="row">

                        <div class="col-6">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">Vista Previa de Comunidad</div>
                                </div>
                                <div class="card-body">

                                    <div class="">
                                        <img src="<?php echo $datosComunidad['banner']; ?>" width="100%" height="150px" style="object-fit: cover;">

                                        <div class="d-flex justify-content-between px-4 mt-3">
                                            <div class="d-flex justify-content-start">
                                                <div class="d-flex flex-column justify-content-center">
                                                    <img src="<?php echo $datosComunidad['icono']; ?>" style="height: 7vw; width: 7vw; object-fit: cover; margin-top: -4vw;" class="rounded-circle img-fluid">
                                                </div>
                                                <div class="mx-3 d-flex flex-column justify-content-start">
                                                    <h1 class="font-weight-bold mb-0">
                                                        <?php echo $datosComunidad['nombre_distrito']; ?>
                                                    </h1>
                                                    <h6 class="mb-0">
                                                        <?php echo $datosComunidad['descripcion']; ?>
                                                    </h6>
                                                </div>
                                            </div>
                                            <div class="d-flex align-items-middle">
                                                <div class="d-flex flex-column justify-content-center">
                                                    <button class="btn btn-primary btn-round">
                                                        <i class="fa-solid fa-plus mx-1"></i>
                                                        Crear Publicación
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Inicio de seccion de contenido -->
                                    <div class="row mt-3">
                                        <!-- Columna de Posts -->
                                        <div class="col-md-8">

                                            <!-- Post -->
                                            <div class="col-md-12 px-0">
                                                <div class="card">
                                                    <div class="card-header pb-1">
                                                        <div class="d-flex">
                                                            <img src="../../assets/img/profile.jpg" class="rounded-circle" style="height: 1vw; width: 1vw; object-fit: cover;">
                                                            <div class="ml-1"><b>Usuario</b></div>
                                                            <span class="ml-1">dd/mm/yyyy</span>
                                                        </div>
                                                        <div class="card-head-row">
                                                            <a class="card-title" style="font-size: 1vw;">Lorem, ipsum dolor.</a>
                                                        </div>
                                                    </div>
                                                    <div class="card-body">
                                                        <p class="mb-0">
                                                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur debitis qui deleniti tempora molestiae voluptatum fuga vero id est repellendus.
                                                        </p>
                                                    </div>
                                                    <div class="card-footer">
                                                        <a href="#" class="btn btn-sm btn-primary mr-2">
                                                            <i class="fa fa-thumbs-up"></i> Me gusta
                                                        </a>
                                                        <a href="#" class="btn btn-sm btn-secondary">
                                                            <i class="fa fa-comment"></i> Comentar
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <!-- Columna de Noticias -->
                                        <div class="col-md-4">
                                            <div class="card">
                                                <div class="card-header">
                                                    <div class="card-title text-center" style="font-size: 1.5vw;">
                                                        <i class="fa-solid fa-newspaper"></i>
                                                        Noticias
                                                    </div>
                                                </div>
                                                <div class="card-body pb-0">
                                                    <!-- Noticia -->
                                                    <div class="col-md-12 px-0 d-flex mb-4">
                                                        <div class="avatar">
                                                            <img src="../../assets/img/logoproduct.svg" alt="..." class="avatar-img rounded-circle">
                                                        </div>
                                                        <div class="flex-1 pt-1 ml-2">
                                                            <h4 class="fw-bold mb-0">Noticia 1</h4>
                                                            <small class="text-muted">Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur, quas.</small>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="col-6">
                            <!-- Formulario para modificar los parámetros de la comunidad -->
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">Modificar Comunidad</div>
                                </div>
                                <div class="card-body">
                                    <form id="communityForm" action="../../../Controller/Admin/comunidadControllerAdmin.php" method="post">
                                        <input type="hidden" id="id" name="id" value="<?php echo $datosComunidad['id_distrito']; ?>">
                                        <div class="form-group">
                                            <label for="banner">Imagen de Banner</label>
                                            <input type="file" class="form-control-file" id="banner" name="banner">
                                        </div>
                                        <div class="form-group">
                                            <label for="profile">Imagen de Perfil de Comunidad</label>
                                            <input type="file" class="form-control-file" id="icono" name="icono">
                                        </div>
                                        <div class="form-group">
                                            <label for="description">Descripción de la Comunidad</label>
                                            <textarea class="form-control" id="descripcion" name="descripcion" rows="3" placeholder="<?php echo $datosComunidad['descripcion']; ?>"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" id="btnModificarComunidad" name="btnModificarComunidad" class="btn btn-success">Guardar Cambios</button>
                                        </div>
                                    </form>
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