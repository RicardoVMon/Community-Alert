<?php include_once __DIR__ . '/../Layout/layoutHome.php';
include_once __DIR__ . '/../../../Controller/Comunidad/comunidadController.php';

if (session_status() === PHP_SESSION_NONE) {
    session_start();
} ?>

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
                            <h2 class="pb-1">Bienvenido, <?php echo $_SESSION['primerNombre']; ?>!</h2>
                            <h5 class="op-7 mb-4">Estas son algunas de las noticias que te perdiste mientras no estabas!</h5>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="card card-dark bg-primary-gradient">
                                    <div class="card-body pb-0">
                                        <div class="h1 fw-bold float-right">2%</div>
                                        <h2 class="mb-2">PIB</h2>
                                        <p>Costo de vida</p>
                                        <div class="pull-in sparkline-fix chart-as-background">
                                            <div id="lineChart">
                                                <canvas width="327" height="70" style="display: inline-block; width: 327px; height: 70px; vertical-align: top;"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card card-dark bg-secondary-gradient">
                                    <div class="card-body pb-0">
                                        <div class="h1 fw-bold float-right">5%</div>
                                        <h2 class="mb-2">Hoy</h2>
                                        <p>Lluvias</p>
                                        <div class="pull-in sparkline-fix chart-as-background">
                                            <div id="lineChart2">
                                                <canvas width="327" height="70" style="display: inline-block; width: 327px; height: 70px; vertical-align: top;"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card card-dark bg-success2">
                                    <div class="card-body pb-0">
                                        <div class="h1 fw-bold float-right">+7%</div>
                                        <h2 class="mb-2">Economía</h2>
                                        <p>Gasolina</p>
                                        <div class="pull-in sparkline-fix chart-as-background">
                                            <div id="lineChart3">
                                                <canvas width="327" height="70" style="display: inline-block; width: 327px; height: 70px; vertical-align: top;"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Inicio de sección de contenido -->
                    <div class="row">
                        <!-- Columna de Posts -->
                        <div class="col-md-8">
                            <!-- Sección de filtros -->
                            <div class="row mb-3">
                                <div class="col-3">
                                    <select class="custom-select">
                                        <option selected>Más Interactuados
                                            <i class="fa-solid fa-filter"></i>
                                        </option>
                                        <option value="1">Reciente</option>
                                        <option value="2">Mejor Votado</option>
                                    </select>
                                </div>
                            </div>
                            <!-- Post 1 -->
                            <?php obtenerPostsComunidadesSeguidas($_SESSION['idUsuario']); ?>
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
                                    <!-- Noticia 1 -->
                                    <a href="#" class="col-md-12 px-0 d-flex mb-4">
                                        <div class="avatar">
                                            <img src="../../assets/img/logoproduct.svg" alt="..." class="avatar-img rounded-circle">
                                        </div>
                                        <div class="flex-1 pt-1 ml-2">
                                            <h4 class="fw-bold mb-0">Noticia 1</h4>
                                            <small class="text-muted">Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur, quas.</small>
                                        </div>
                                    </a>
                                    <!-- Noticia 2 -->
                                    <a href="#" class="col-md-12 px-0 d-flex mb-4">
                                        <div class="avatar">
                                            <img src="../../assets/img/logoproduct.svg" alt="..." class="avatar-img rounded-circle">
                                        </div>
                                        <div class="flex-1 pt-1 ml-2">
                                            <h4 class="fw-bold mb-0">Noticia 2</h4>
                                            <small class="text-muted">Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur, quas.</small>
                                        </div>
                                    </a>
                                    <!-- Noticia 3 -->
                                    <a href="#" class="col-md-12 px-0 d-flex mb-4">
                                        <div class="avatar">
                                            <img src="../../assets/img/logoproduct.svg" alt="..." class="avatar-img rounded-circle">
                                        </div>
                                        <div class="flex-1 pt-1 ml-2">
                                            <h4 class="fw-bold mb-0">Noticia 3</h4>
                                            <small class="text-muted">Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur, quas.</small>
                                        </div>
                                    </a>
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
    </div>

    <?php scripts(); ?>

</body>

</html>