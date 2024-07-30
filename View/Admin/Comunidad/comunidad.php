<?php include_once __DIR__ . '/../Layout/layoutAdmin.php';
include_once __DIR__ . '/../../../Controller/Admin/comunidadControllerAdmin.php' ?>

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

                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">Tabla de Comunidades</div>
                                </div>
                                <div class="card-body">
                                    <table id="userTable" class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Provincia</th>
                                                <th>Cantón</th>
                                                <th>Distrito (Comunidad)</th>
                                                <th>Cantidad de Miembros</th>
                                                <th>Acción</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php ObtenerComunidades() ?>
                                        </tbody>
                                    </table>
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
    <script>
        $(document).ready(function() {
            $('#userTable').DataTable();
        });
    </script>

</body>

</html>