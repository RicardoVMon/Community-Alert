<?php include_once '../Layout/layoutHome.php'; ?>

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
                        <span class="pl-2">
                            <a href="#">Heredia</a>
                            >
                            <a href="#">Barva</a>
                        </span>
                        <div class="mb-4 d-flex flex-column">
                            <span class="display-1">Explorar Comunidades</span>
                            <span class="display-5 pl-2">Selecciona tu distrito acceder a su comunidad!</span>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-3">

                            <select class="custom-select">
                                <option selected>
                                    Más Interactuados
                                    <i class="fa-solid fa-filter"></i>
                                </option>
                                <option value="1">Reciente</option>
                                <option value="2">Mejor Votado</option>
                            </select>
                        </div>
                    </div>

                    <!-- Inicio de seccion de contenido -->
                    <div class="row">

                        <!-- Post -->
                        <div class="col-4">
                            <div class="card">
                                <div class="card-header p-1">
                                    <div class="d-flex">
                                        <img class="rounded-top" src="https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG" width="100%" height="50px" style="object-fit: cover;">
                                    </div>
                                </div>
                                <div class="card-body pt-3">
                                    <a href="#" style="text-decoration: none; color: inherit;">
                                        <div class="d-flex justify-content-between">
                                            <div class="container w-75 pl-0 pr-0 ml-0 mr-0">
                                                <h1 class="h1 mb-0">Puente Salas</h1>
                                                <div class="display-5">Bienvenido al pueblo más bonito del Cantón Barveña, entérate de todas las Noticias relevantes en esta comunidad</div>
                                            </div>
                                            <div class="d-flex flex-column justify-content-between mr-3">
                                                <div>
                                                    <i class="fa fa-users"></i>
                                                    <span> 1000</span>
                                                </div>
                                                <div>
                                                    <i class="fa-solid fa-star"></i>
                                                    <span> 100</span>
                                                </div>
                                                <div>
                                                    <i class="fa fa-comments"></i>
                                                    <span> 100</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="col-4">
                            <div class="card">
                                <div class="card-header p-1">
                                    <div class="d-flex">
                                        <img class="rounded-top" src="https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG" width="100%" height="50px" style="object-fit: cover;">
                                    </div>
                                </div>
                                <div class="card-body pt-3">
                                    <a href="#" style="text-decoration: none; color: inherit;">
                                        <div class="d-flex justify-content-between">
                                            <div class="container w-75 pl-0 pr-0 ml-0 mr-0">
                                                <h1 class="h1 mb-0">San Jose de la Montaña</h1>
                                                <div class="display-5">Bienvenido a la ciudad de las flores, descubre las noticias más importantes de esta comunidad</div>
                                            </div>
                                            <div class="d-flex flex-column justify-content-between mr-3">
                                                <div>
                                                    <i class="fa fa-users"></i>
                                                    <span> 2000</span>
                                                </div>
                                                <div>
                                                    <i class="fa-solid fa-star"></i>
                                                    <span> 300</span>
                                                </div>
                                                <div>
                                                    <i class="fa fa-comments"></i>
                                                    <span> 500</span>
                                                </div>
                                            </div>
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