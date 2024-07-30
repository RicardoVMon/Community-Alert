<?php
include_once "../../Controller/Autenticacion/registroController.php";
?>

<!DOCTYPE html>

<html>

<head>
    <title>Community Alert</title>
    <meta charset="UTF-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body class="d-flex flex-column min-vh-100">

    <nav class="navbar navbar-dark navbar-extend p-2" style="background-color: #1A2035;">
        <div class="container-fluid">
            <a class="navbar-brand fs-4 fw-bold" href="login.php">
                <i class="fa fa-bell mx-2"></i> Vecindario seguro, corazones unidos
            </a>
        </div>
    </nav>

    <section class="container-fluid d-flex flex-grow-1 px-0">
        <div class="col">
            <img src="https://cdn.sanity.io/images/jmqfvlrp/production/7be6b04e5831f80216b6e300e442a78d87760ee4-2560x1707.jpg" class="img-fluid" style="object-fit: cover; height: 100%">
        </div>
        <div class="col d-flex align-items-center">
            <div class="container-fluid d-flex flex-column">
                <form class="pb-5 border-bottom px-5" action="" method="POST">
                    <div class="text-center fw-bold" style="font-size: 10vh; color: #1F283E;">Community Alert</div>
                    <h2 class="mb-5 text-center" style="color: #1F283E;">Registro de Usuario</h2>
                    <?php
                    if (isset($_POST['mensaje'])) {
                        echo "<div class='alert alert-danger text-center'>" . $_POST['mensaje'] . "</div>";
                    }
                    ?>
                    <div class="row mb-3">
                        <div class="col">
                            <div class="form-group form-floating">
                                <input type="text" class="form-control" placeholder="Cedula" name="cedula" id="cedula" onkeyup="consultarNombreUsuario();" required />
                                <label class="form-label">Cedula</label>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-4">
                            <div class="form-group form-floating">
                                <input type="text" class="form-control" placeholder="Nombre" name="nombre" id="nombre" readonly required />
                                <label class="form-label">Nombre</label>
                            </div>
                        </div>
                        <div class="col-8">
                            <div class="form-group form-floating">
                                <input type="text" class="form-control" placeholder="Apellidos" name="apellidos" id="apellidos" readonly required />
                                <label class="form-label">Apellidos</label>
                            </div>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-7">
                            <div class="form-group form-floating">
                                <input type="text" class="form-control" placeholder="Correo" name="correo" id="correo" required />
                                <label class="form-label">Correo Electrónico</label>
                            </div>
                        </div>
                        <div class="col-5">
                            <div class="form-group form-floating">
                                <select name="genero" id="genero" class="form-control" required>
                                <?php ConsultarIdGenero(); ?>
                                </select>
                                <label for="gender" class="form-label">Género</label>
                            </div>

                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-4">
                            <div class="form-group form-floating">
                                <select class="form-control" name="provincia" id="provincia" onchange="obtenerCantones();" required>
                                    <option value="" selected disabled>Seleccione la provincia</option>
                                </select>
                                <label for="provincia" class="form-label">Provincia</label>
                                <input type="hidden" name="nombreProvincia" id="nombreProvincia" value="">
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="form-group form-floating">
                                <select class="form-control" name="canton" id="canton" disabled onchange="obtenerDistritos();" required>
                                    <option value="" selected disabled>Seleccione el cantón</option>
                                </select>
                                <label for="canton" class="form-label">Cantón</label>
                                <input type="hidden" name="nombreCanton" id="nombreCanton" value="">
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="form-group form-floating">
                                <select class="form-control" name="distrito" id="distrito" disabled required onchange="establecerNombres();">
                                    <option value="" selected disabled>Seleccione el distrito</option>
                                </select>
                                <label for="distrito" class="form-label">Distrito</label>
                                <input type="hidden" name="nombreDistrito" id="nombreDistrito" value="">
                            </div>
                        </div>
                    </div>

                    <div class="form-group form-floating mb-4">
                        <input type="password" class="form-control" placeholder="Contraseña" name="contrasennia" id="contrasennia" required />
                        <label class="form-label">Contraseña</label>
                    </div>
                    <div class="form-group text-center">
                        <button type="submit" id="btnRegistrar" name="btnRegistrar" class="btn btn-primary btn-lg" style="background-color:#1F283E; border-color: #1F283E;">
                            Iniciar Sesión
                        </button>
                    </div>
                </form>
                <a href="login.php" class="mt-4 text-center under">¿Ya tenés una cuenta? <br> ¡Inicia sesión! </a>
            </div>
        </div>
    </section>
    <script src="../assets/js/usuarios.js"></script>
    <script src="../assets/js/provincias.js"></script>
    <script src="../assets/js/cantones.js"></script>
    <script src="../assets/js/distritos.js"></script>
    <script src="../assets/js/nombre.js"></script>
    <script>
        $(document).ready(function() {
            obtenerProvincias();
        });
    </script>
</body>

</html>