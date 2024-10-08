<?php

include_once __DIR__ . '/../../../Controller/Busqueda/busquedaController.php';

if (session_status() === PHP_SESSION_NONE) {
   session_start();
}

if (!isset($_SESSION['idUsuario'])) {
   header('Location: /../../Community-Alert/View/Autenticacion/login.php');
}

function head()
{
   echo '

    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <title>Community Alert</title>
        <meta content="width=device-width, initial-scale=1.0, shrink-to-fit=no" name="viewport" />
        <link rel="icon" href="https://cdn-icons-png.flaticon.com/512/10751/10751558.png" type="image/x-icon" />

        <!-- Fonts and icons -->
        <script src="../../assets/js/plugin/webfont/webfont.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
            integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
            crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
            integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.9.3/dropzone.css" 
         integrity="sha512-7uSoC3grlnRktCWoO4LjHMjotq8gf9XDFQerPuaph+cqR7JC9XKGdvN+UwZMC14aAaBDItdRj3DcSDs4kMWUgg==" 
         crossorigin="anonymous" referrerpolicy="no-referrer" />

         <script src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.9.3/dropzone.js" 
         integrity="sha512-9e9rr82F9BPzG81+6UrwWLFj8ZLf59jnuIA/tIf8dEGoQVu7l5qvr02G/BiAabsFOYrIUTMslVN+iDYuszftVQ==" 
         crossorigin="anonymous" referrerpolicy="no-referrer"></script>

        <script>
            WebFont.load({
                google: {
                    "families": ["Lato:300,400,700,900"]
                },
                custom: {
                    "families": ["Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands", "simple-line-icons"],
                    urls: ["../../assets/css/fonts.min.css"]
                },
                active: function () {
                    sessionStorage.fonts = true;
                }
            });
        </script>

        <!-- CSS Files -->
        <link rel="stylesheet" href="../../assets/css/atlantis.min.css">
        <link rel="stylesheet" href="../../assets/css/estilosPost.css">

        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.12.4/dist/sweetalert2.all.min.js"></script>
    </head>
    ';
}

function mostrarNavBar()
{
   echo '
   <div class="main-header">
      <div class="logo-header" data-background-color="dark2">
            <a href="../../../View/User/Home/home.php" class="logo">
               <!-- <img src="../../assets/img/logo.svg" alt="navbar brand" class="navbar-brand"> -->
               <i class="fa fa-bell mx-1 text-white"></i>
               <span class="text-white pb-1" style="font-weight: bold; font-size: 18px;">Community Alert</span>
            </a>
            <button class="navbar-toggler sidenav-toggler ml-auto" type="button" data-toggle="collapse" data-target="collapse" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon">
                  <i class="icon-menu"></i>
               </span>
            </button>
            <button class="topbar-toggler more"><i class="icon-options-vertical"></i></button>
            <div class="nav-toggle">
               <button class="btn btn-toggle toggle-sidebar">
                  <i class="icon-menu"></i>
               </button>
            </div>
      </div>

      <!-- Navbar Header -->
      <nav class="navbar navbar-header navbar-expand-lg" data-background-color="dark">
            <div class="container-fluid">
               <div class="collapse" id="search-nav">
                  <form class="navbar-left navbar-form nav-search mr-md-3" method="post" action="">
                        <div class="input-group">
                           <div class="input-group-prepend">
                              <button type="submit" name="btnBuscar" id="btnBuscar" class="btn btn-search pr-1">
                                    <i class="fa fa-search search-icon"></i>
                              </button>
                           </div>
                           <input type="text" name="busqueda" id="busqueda" placeholder="Buscar comunidad o post ..." class="form-control">
                        </div>
                  </form>
               </div>
               <ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
                  <li class="nav-item">
                        <a class="nav-link" href="../Post/crearNoticia.php?q=' . $_SESSION['idDistrito'] . '">
                           <i class="fa fa-plus"></i>
                           <div class="d-md-none d-lg-block">Crear Noticia</div>
                        </a>
                  </li>
                  <li class="nav-item toggle-nav-search hidden-caret">
                        <a class="nav-link" data-toggle="collapse" href="#search-nav" role="button" aria-expanded="false" aria-controls="search-nav">
                           <i class="fa fa-search"></i>
                        </a>
                  </li>
                  <li class="nav-item dropdown hidden-caret">
                        <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" aria-expanded="false">
                           <div class="avatar-sm">
                              <img src="' . $_SESSION['iconoUsuario'] . '" alt="..." class="avatar-img rounded-circle">
                           </div>
                        </a>
                        <ul class="dropdown-menu dropdown-user animated fadeIn">
                           <div class="dropdown-user-scroll scrollbar-outer">
                              <li>
                                    <div class="user-box">
                                       <div class="avatar-lg"><img src="' . $_SESSION['iconoUsuario'] . '" alt="image profile" class="avatar-img rounded"></div>
                                       <div class="u-text">
                                          <h4>' . $_SESSION['nombreUsuario'] . '</h4>
                                          <p class="text-muted">' . $_SESSION['email'] . '</p>
                                       </div>
                                    </div>
                              </li>
                              <li>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="../Perfil/perfil.php?s=' . $_SESSION['idUsuario'] . '&t=posts">Mi Perfil</a>
                                    <div class="dropdown-divider"></div>

                                    <form method="POST" action="../../../Controller/Autenticacion/loginController.php">
                                       <button type="submit" class="dropdown-item" name="btnCerrarSesion" id="btnCerrarSesion">Logout</button>
                                    </form>
                              </li>
                           </div>
                        </ul>
                  </li> 
               </ul>
            </div>
      </nav>
   </div>
   <!-- End Navbar -->

   ';
}

function mostrarSideBar()
{
   echo '

   <div class="sidebar sidebar-style-2" data-background-color="dark2">
      <div class="sidebar-wrapper scrollbar scrollbar-inner">
         <div class="sidebar-content">
            <div class="user">
               <div class="avatar-sm float-left mr-2">
                  <img src="' . $_SESSION['iconoUsuario'] . '" alt="..." class="avatar-img rounded-circle">
               </div>
               <div class="info">
                  <a data-toggle="collapse" href="#collapseExample" aria-expanded="true">
                  <span>
                  ' . $_SESSION['primerNombre'] . '
                  <span class="user-level">' . $_SESSION['nombreDistrito'] . '</span>
                  </span>
                  </a>
                  <div class="clearfix"></div>
               </div>
            </div>
            <ul class="nav nav-primary">
               <li class="nav-item pb-2">
                  <a href="../Home/home.php">
                     <i class="fas fa-home ml-3"></i>
                     <p>Inicio</p>
                  </a>
               </li>
               <li class="nav-item active">
                  <a data-toggle="collapse" href="#dashboard" class="collapsed" aria-expanded="true">
                     <i class="fa-solid fa-users ml-3"></i>
                     <p>Comunidades</p>
                     <span class="caret"></span>
                  </a>
                  <div class="collapse show" id="dashboard">
                     <ul class="nav nav-collapse">
                        <li>
                           <a href="../Comunidad/explorarProvincias.php">
                           <span class="sub-item">Explorar Comunidades</span>
                           </a>
                        </li>
                        <li>
                           <a href="../Comunidad/comunidadesSeguidas.php">
                           <span class="sub-item">Comunidades Seguidas</span>
                           </a>
                        </li>
                        <li>
                           <a href="../Comunidad/comunidad.php?q=' . $_SESSION['idDistrito'] . '">
                           <span class="sub-item">Mi Comunidad</span>
                           </a>
                        </li>
                     </ul>
                  </div>
               </li>
               <li class="nav-section">
                  <span class="sidebar-mini-icon">
                  <i class="fa fa-ellipsis-h"></i>
                  </span>
                  <h4 class="text-section">Acceso Rápido</h4>
               </li>
               <li class="nav-item">
                  <a data-toggle="collapse" href="#submenu">
                     <i class="fas fa-bars"></i>
                     <p>Mi Perfil</p>
                     <span class="caret"></span>
                  </a>
                  <div class="collapse show" id="submenu">
                     <ul class="nav nav-collapse">
                     <li>
                     <a data-toggle="collapse" href="#subnav1">
                     <span class="sub-item">Contenido</span>
                     <span class="caret"></span>
                     </a>
                     <div class="collapse show" id="subnav1">
                        <ul class="nav nav-collapse subnav">
                           <li>
                           <a href="../Perfil/perfil.php?s=' . $_SESSION['idUsuario'] . '&t=posts">
                           <span class="sub-item">Publicaciones</span>
                           </a>
                           </li>
                           <li>
                           <a href="../Perfil/perfil.php?s=' . $_SESSION['idUsuario'] . '&t=comentarios">
                           <span class="sub-item">Comentarios</span>
                           </a>
                           </li>
                        </ul>
                     </div>
                     </li>
                     <li>
                     <a href="../Perfil/editarPerfil.php?s=' . $_SESSION['idUsuario'] . '">
                     <span class="sub-item">Editar</span>
                     </a>
                     </li>
                     </ul>
                  </div>
               </li>
            </ul>
         </div>
      </div>
   </div>
   <!-- End Sidebar -->

   ';
}

function scripts()
{
   echo '

   <script src="../../assets/js/likes.js"></script>

    <!--   Core JS Files   -->
    <script src="../../assets/js/core/jquery.3.2.1.min.js"></script>
    <script src="../../assets/js/core/popper.min.js"></script>
    <script src="../../assets/js/core/bootstrap.min.js"></script>


    <!-- jQuery UI -->
    <script src="../../assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
    <script src="../../assets/js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>

    <!-- jQuery Scrollbar -->
    <script src="../../assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>


    <!-- Chart JS -->
    <script src="../../assets/js/plugin/chart.js/chart.min.js"></script>

    <!-- jQuery Sparkline -->
    <script src="../../assets/js/plugin/jquery.sparkline/jquery.sparkline.min.js"></script>

    <!-- Chart Circle -->
    <script src="../../assets/js/plugin/chart-circle/circles.min.js"></script>

    <!-- Datatables -->
    <script src="../../assets/js/plugin/datatables/datatables.min.js"></script>

    <!-- Bootstrap Notify -->
    <script src="../../assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>

    <!-- Atlantis JS PERMITE QUE EL SIDEBAR SEA COLAPSABLE-->
    <script src="../../assets/js/atlantis.min.js"></script>

    <!-- Atlantis DEMO methods, dont include it in your project! -->
    <script>
        $(\'#lineChart\').sparkline([102, 109, 120, 99, 110, 105, 115], {
            type: \'line\',
            height: \'70\',
            width: \'100%\',
            lineWidth: \'2\',
            lineColor: \'rgba(255, 255, 255, .5)\',
            fillColor: \'rgba(255, 255, 255, .15)\'
        });

        $(\'#lineChart2\').sparkline([99, 125, 122, 105, 110, 124, 115], {
            type: \'line\',
            height: \'70\',
            width: \'100%\',
            lineWidth: \'2\',
            lineColor: \'rgba(255, 255, 255, .5)\',
            fillColor: \'rgba(255, 255, 255, .15)\'
        });

        $(\'#lineChart3\').sparkline([105, 103, 123, 100, 95, 105, 115], {
            type: \'line\',
            height: \'70\',
            width: \'100%\',
            lineWidth: \'2\',
            lineColor: \'rgba(255, 255, 255, .5)\',
            fillColor: \'rgba(255, 255, 255, .15)\'
        });
    </script>
    
    ';
}
