<?php include_once '../Layout/layoutAdmin.php'; ?>

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
                            <span class="display-1">Administra tu comunidad</span>
                            <span class="display-5 pl-2">Todo lo que necesitas saber, en un mismo lugar!</span>
                        </div>
                    </div>

                    <!-- Inicio de seccion de contenido -->
                    <div class="row">

                        <!-- Selección de información -->
                        <div class="col-4">
                            <a href="../Comunidad/comunidad.php" style="text-decoration: none; color: inherit;">
                                <div class="card">
                                    <div class="card-header p-1">
                                        <div class="d-flex">
                                            <img class="rounded-top" src="https://www.bundaberg.qld.gov.au/bundaberg-corporate/images/Diverse_community_group_holding_hands_web_1.jpg" width="100%" height="50px" style="object-fit: cover;">
                                        </div>
                                    </div>
                                    <div class="card-body pt-3">
                                        <div class="d-flex justify-content-start">
                                            <div class="container w-75 pl-0 pr-0 ml-0 mr-0">
                                                <h1 class="h1 mb-0">Comunidades</h1>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="col-4">
                            <a href="../Usuarios/usuarios.php" style="text-decoration: none; color: inherit;">
                                <div class="card">
                                    <div class="card-header p-1">
                                        <div class="d-flex">
                                            <img class="rounded-top" src="https://spring2innovation.com/wp-content/uploads/2021/05/Who-Are-Your-Users_-A-Deeper-Look-at-Personas-Blog-Header.jpg" width="100%" height="50px" style="object-fit: cover;">
                                        </div>
                                    </div>
                                    <div class="card-body pt-3">
                                        <a href="#" style="text-decoration: none; color: inherit;">
                                            <div class="d-flex justify-content-between">
                                                <div class="container w-75 pl-0 pr-0 ml-0 mr-0">
                                                    <h1 class="h1 mb-0">Usuarios</h1>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="col-4">
                            <a href="../Posts/posts.php" style="text-decoration: none; color: inherit;">
                                <div class="card">
                                    <div class="card-header p-1">
                                        <div class="d-flex">
                                            <img class="rounded-top" src="https://ispeedtolead.com/wp-content/uploads/2023/02/shutterstock-1208129407_trm5.jpg" width="100%" height="50px" style="object-fit: cover;">
                                        </div>
                                    </div>
                                    <div class="card-body pt-3">
                                        <a href="#" style="text-decoration: none; color: inherit;">
                                            <div class="d-flex justify-content-between">
                                                <div class="container w-75 pl-0 pr-0 ml-0 mr-0">
                                                    <h1 class="h1 mb-0">Posts</h1>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-6">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">Porcentaje de Usuarios por Provincia</div>
                                </div>
                                <div class="card-body">
                                    <div class="chart-container">
                                        <canvas id="pieChart" style="width: 50%; height: 50%"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">Comunidades con más actividad</div>
                                </div>
                                <div class="card-body">
                                    <div class="chart-container">
                                        <canvas id="barChart" style="width: 50%; height: 50%"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">Estadísticas Generales</div>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-4">
                                            <h4>Total de Usuarios</h4>
                                            <h1>100</h1>
                                        </div>
                                        <div class="col-4">
                                            <h4>Total de Posts</h4>
                                            <h1>50</h1>
                                        </div>
                                        <div class="col-4">
                                            <h4>Total de Comentarios</h4>
                                            <h1>200</h1>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">Estados de Usuarios</div>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-6">
                                            <h4>Usuarios Activos</h4>
                                            <h1>100</h1>
                                        </div>
                                        <div class="col-6">
                                            <h4>Usuarios Inactivos</h4>
                                            <h1>50</h1>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">Tabla de Usuarios</div>
                                </div>
                                <div class="card-body">
                                    <table id="userTable" class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Cédula</th>
                                                <th>Nombre</th>
                                                <th>Comunidad</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>123456789</td>
                                                <td>John Doe</td>
                                                <td>Community A</td>
                                            </tr>
                                            <tr>
                                                <td>987654321</td>
                                                <td>Jane Smith</td>
                                                <td>Community B</td>
                                            </tr>
                                            <!-- Add more rows for each user -->
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

    <!-- Información Placeholder para tablas -->
    <script>
        pieChart = document.getElementById('pieChart').getContext('2d'),
            barChart = document.getElementById('barChart').getContext('2d');

        var myPieChart = new Chart(pieChart, {
            type: 'pie',
            data: {
                datasets: [{
                    data: [120, 80, 300, 210, 100, 90, 50],
                    backgroundColor: ["#1d7af3", "#f3545d", "#fdaf4b", "#49e2ff", "#e8c3b9", "#8e5ea2", "#3cba9f"],
                    borderWidth: 0
                }],
                labels: ['San José', 'Alajuela', 'Cartago', 'Heredia', 'Guanacaste', 'Puntarenas', 'Limón']
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                legend: {
                    position: 'bottom',
                    labels: {
                        fontColor: 'rgb(154, 154, 154)',
                        fontSize: 11,
                        usePointStyle: true,
                        padding: 20
                    }
                },
                pieceLabel: {
                    render: 'percentage',
                    fontColor: 'white',
                    fontSize: 14,
                },
                tooltips: false,
                layout: {
                    padding: {
                        left: 20,
                        right: 20,
                        top: 20,
                        bottom: 20
                    }
                }
            }
        })


        var myBarChart = new Chart(barChart, {
            type: 'bar',
            data: {
                labels: ["Comunidad 1", "Comunidad 2", "Comunidad 3", "Comunidad 4", "Comunidad 5"],
                datasets: [{
                    label: "Actividad",
                    backgroundColor: 'rgb(23, 125, 255)',
                    borderColor: 'rgb(23, 125, 255)',
                    data: [120, 95, 75, 60, 55],
                }],
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                },
            }
        });
    </script>

</body>

</html>