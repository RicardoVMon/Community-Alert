<?php include_once __DIR__ . '/../Layout/layoutHome.php';
include_once __DIR__ . '/../../../Controller/PostController/postController.php';
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
                        <div class="mt-2 mb-4">
                            <h2 class="pb-1"> <?php echo $_SESSION['primerNombre']; ?>!</h2>
                            <h5 class="op-7 mb-4">Comparte una noticia con la comunidad!</h5>
                        </div>
                    </div> <!-- page-inner-top -->
                    <div class=" mb-3 row">
                        <!-- Columna de Crear Publicación -->
                        <div class="col-md-6">
                            <div class="card" id="crearPublicacionCard" style="margin-top:30px">
                                <div class="card-body" style="color: #4c4c4c">
                                    <div align-items-center>
                                        <div class="row">
                                            <div class="col-auto">
                                                <header class="card-title">
                                                    <i class=""></i> Crear Publicación
                                                </header>
                                            </div>
                                            <div class="col">
                                                <form action="" method="post">
                                                    <!-- drop-down -->
                                                    <div class="row">
                                                        <div class="col-3">
                                                            <select name="categoria" id="categoria" class="custom-select" required>
                                                                <?php obtenerCategorias(); ?>
                                                            </select>
                                                        </div>
                                                    </div>
                                            </div>
                                        </div>
                                        <!-- Formulario de publicación -->
                                    </div>
                                    <?php
                                    if (isset($_POST["msj"])) {
                                        echo $_POST["msj"];
                                    }
                                    ?>
                                    <div class="form-group">
                                        <textarea id="titulo" name="titulo" placeholder="Título" class="titulo" style="border-radius: 15px; padding:15px; width: 60%; height: 70px;" required></textarea>
                                    </div>
                                    <div class="form-group">
                                        <textarea id="noticia" name="noticia" placeholder="Contenido de publicación..." class="contenidoPublicacion" spellcheck="false" style="border-radius: 10px; padding: 10px;" required></textarea>
                                    </div>
                                    <div class="d-flex justify-content-end">
                                        <div class="col-2">
                                            <button type="submit" id="btnPublicarNoticia" name="btnPublicarNoticia" class="btnPublicarNoticia">Publicar</button>
                                        </div>
                                    </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- Columna de info sobre la comunidad -->
                        <div class="col-md-3" style="margin-left:315px">
                            <div class="card" style="margin-top:30px">
                                <div class="card-header">
                                    <div class="card-title text-center" style="font-size: 1.4vw;">
                                        <i class="fa-solid fa fa-home"></i>
                                        <?php echo $_SESSION['nombreDistrito']; ?>
                                    </div>
                                </div>
                                <div class="card-body pb-0">
                                    <!-- Esta info esta en el postController -->
                                    <?php VisualizarInformacionComunidad($_GET['q']); ?>
                                    <!-- links hacia otras vistas -->
                                    <div class="row">
                                        <div class="col-12 mb-4">
                                            <a href="../Comunidad/comunidad.php?q=<?php echo $_SESSION['idDistrito']; ?>" class="text-white">
                                                <div class="card bg-info">
                                                    <div class="card-body">Mi Comunidad</div>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="col-12 mb-4">
                                            <a href="#" class="text-white">
                                                <div class="card bg-info">
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
    </div>

    <?php scripts(); ?>
</body>

</html>