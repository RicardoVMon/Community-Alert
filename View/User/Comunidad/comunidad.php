<?php include_once __DIR__ . '/../Layout/layoutHome.php';
include_once __DIR__ . '/../../../Controller/Comunidad/comunidadController.php';

$datosComunidad = obtenerInformacionComunidad($_GET['q']);
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
                            <img src="https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG" width="100%"
                                height="150px" style="object-fit: cover;">

                            <div class="d-flex justify-content-between px-4 mt-3">
                                <div class="d-flex justify-content-start">
                                    <div class="d-flex flex-column justify-content-center">
                                        <img src="https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png"
                                            style="height: 10vw; width: 10vw; object-fit: cover; margin-top: -6vw;"
                                            class="rounded-circle img-fluid">
                                    </div>
                                    <div class="mx-3 d-flex flex-column justify-content-start">
                                        <h1 class="font-weight-bold display-4 mb-0">
                                            <?php echo $datosComunidad['nombre_distrito']; ?>
                                        </h1>
                                        <h6 class="mb-0">
                                            <?php echo $datosComunidad['descripcion']; ?>
                                        </h6>
                                    </div>
                                </div>
                                <div class="d-flex align-items-middle">
                                    
                                    <?php

                                    if($_GET['q'] == $_SESSION['idDistrito'])
                                    {
                                        echo '<div class="d-flex flex-column justify-content-center mr-3">
                                        <a href="../Post/crearNoticia.php?q=' . $_GET['q'] .'" class="btn btn-primary btn-round" style="font-size: 1vw;">
                                                <i class="fa-solid fa-plus mx-1"></i>
                                                Crear Publicación
                                            </a>
                                        </div>';
                                    }
                                    ?>

                                    <?php 
                                    
                                    if (obtenerComunidadesSeguidas($_SESSION['idUsuario'], $_GET['q']))
                                    {
                                        echo '                                        
                                        <form action="" method="POST" class="d-flex flex-column justify-content-center">
                                            <div>
                                                <input type="hidden" name="idUsuario" value="'. $_SESSION['idUsuario'] . '">
                                                <input type="hidden" name="idComunidad" value="' . $_GET['q'] . '">
                                                <button type="submit" class="btn btn-success btn-round" style="font-size: 1vw; id="btnDejarSeguir" name="btnDejarSeguir"">
                                                    <i class="fa-solid fa-check mr-1"></i>
                                                    Seguido
                                                </button>
                                            </div>
                                        </form>';
                                    } else {
                                        echo '                                        
                                        <form action="" method="POST" class="d-flex flex-column justify-content-center">
                                            <input type="hidden" name="idUsuario" value="'. $_SESSION['idUsuario'] . '">
                                            <input type="hidden" name="idComunidad" value="' . $_GET['q'] . '">
                                            <div>
                                                <button type="submit" class="btn btn-primary btn-round" style="font-size: 1vw; id="btnSeguir" name="btnSeguir"">
                                                    <i class="fa-solid fa-plus mx-1"></i>
                                                    Seguir
                                                </button>
                                            </div>
                                        </form>';
                                    }
                                    
                                     ?>

                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Inicio de seccion de contenido -->
                    <div class="row">
                        <!-- Columna de Posts -->
                        <div class="col-md-8">

                            <!-- Sección de filtros -->
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

                            <!-- Post -->
                            <!-- <div class="col-md-12 px-0">
                                <div class="card">
                                    <div class="card-header pb-1">
                                        <div class="d-flex">
                                            <img src="assets/img/profile.jpg" class="rounded-circle" style="height: 1vw; width: 1vw; object-fit: cover;">
                                            <a href=" #" class="ml-1"><b>Manuel Díaz</b></a>
                                            <span class="ml-1">10/11/2022</span>
                                        </div>
                                        <div class="card-head-row">
                                            <a href="#" class="card-title" style="font-size: 2vw;">Aumento de Inundaciones</a>
                                            <div class="card-tools">
                                                <a href="#" class="btn btn-danger btn-round btn-sm mr-2">
                                                    <span class="btn-label">
                                                        <i class="fa-solid fa-circle-exclamation"></i>
                                                    </span>
                                                    Incidente
                                                </a>
                                                <a href="#" class="btn btn-info btn-border btn-round btn-sm mr-2">
                                                    <span class="btn-label">
                                                        <i class="fa-solid fa-share"></i>
                                                    </span>
                                                    Compartir
                                                </a>
                                                <a href="#" class="btn btn-info btn-border btn-round btn-sm">
                                                    <span class="btn-label">
                                                        <i class="fa fa-print"></i>
                                                    </span>
                                                    Imprimir
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
                                        <a href="#" class="btn btn-secondary">
                                            <i class="fa fa-comment"></i> Comentar
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 px-0">
                                <div class="card">
                                    <div class="card-header pb-1">
                                        <div class="d-flex">
                                            <img src="https://cdn-icons-png.freepik.com/512/146/146005.png" class="rounded-circle" style="height: 1vw; width: 1vw; object-fit: cover;">
                                            <a href=" #" class="ml-1"><b>Ana Díaz</b></a>
                                            <span class="ml-1">10/12/2022</span>
                                        </div>
                                        <div class="card-head-row">
                                            <a href="#" class="card-title" style="font-size: 2vw;">Cambio Climático</a>
                                            <div class="card-tools">
                                                <a href="#" class="btn btn-warning btn-round btn-sm mr-2">
                                                    <span class="btn-label">
                                                        <i class="fa-solid fa-circle-exclamation"></i>
                                                    </span>
                                                    Seguridad
                                                </a>
                                                <a href="#" class="btn btn-info btn-border btn-round btn-sm mr-2">
                                                    <span class="btn-label">
                                                        <i class="fa-solid fa-share"></i>
                                                    </span>
                                                    Compartir
                                                </a>
                                                <a href="#" class="btn btn-info btn-border btn-round btn-sm">
                                                    <span class="btn-label">
                                                        <i class="fa fa-print"></i>
                                                    </span>
                                                    Imprimir
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <p class="mb-0">
                                            ¡Hola a todos! Hoy quiero hablar sobre el impacto del cambio climático en nuestra región. Las temperaturas han aumentado considerablemente, afectando a la flora y fauna local. Es crucial que tomemos medidas para reducir nuestra huella de carbono. ¿Tienes ideas sobre cómo podemos contribuir? ¡Déjalas en los comentarios!
                                        </p>
                                    </div>
                                    <div class="card-footer">
                                        <a href="#" class="btn btn-primary mr-2">
                                            <i class="fa fa-thumbs-up"></i> Me gusta
                                        </a>
                                        <a href="#" class="btn btn-secondary">
                                            <i class="fa fa-comment"></i> Comentar
                                        </a>
                                    </div>
                                </div>
                            </div> -->
                            <?php obtenerPosts($_GET['q']); ?>


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
                                    <a href="#" class="col-md-12 px-0 d-flex mb-4">
                                        <div class="avatar">
                                            <img src="assets/img/logoproduct.svg" alt="..."
                                                class="avatar-img rounded-circle">
                                        </div>
                                        <div class="flex-1 pt-1 ml-2">
                                            <h4 class="fw-bold mb-0">Noticia 1</h4>
                                            <small class="text-muted">Lorem ipsum dolor sit amet consectetur adipisicing
                                                elit. Pariatur, quas.</small>
                                        </div>
                                    </a>
                                    <a href="#" class="col-md-12 px-0 d-flex mb-4">
                                        <div class="avatar">
                                            <img src="assets/img/logoproduct.svg" alt="..."
                                                class="avatar-img rounded-circle">
                                        </div>
                                        <div class="flex-1 pt-1 ml-2">
                                            <h4 class="fw-bold mb-0">Noticia 2</h4>
                                            <small class="text-muted">Lorem ipsum dolor sit amet consectetur adipisicing
                                                elit. Pariatur, quas.</small>
                                        </div>
                                    </a>
                                    <a href="#" class="col-md-12 px-0 d-flex mb-4">
                                        <div class="avatar">
                                            <img src="assets/img/logoproduct.svg" alt="..."
                                                class="avatar-img rounded-circle">
                                        </div>
                                        <div class="flex-1 pt-1 ml-2">
                                            <h4 class="fw-bold mb-0">Noticia 3</h4>
                                            <small class="text-muted">Lorem ipsum dolor sit amet consectetur adipisicing
                                                elit. Pariatur, quas.</small>
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