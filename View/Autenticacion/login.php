<?php
include_once '../../Controller/Autenticacion/loginController.php';
?>

<!DOCTYPE html>

<html>

<head>
    <title>Community Alert</title>
    <meta charset="UTF-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
            <img src="https://nvrh.org/wp-content/uploads/2022/10/CC-HandsColor-2021-scaled.jpg" class="img-fluid" style="object-fit: cover; height: 100%">
        </div>
        <div class="col d-flex align-items-center">
            <div class="container-fluid d-flex flex-column">
                <form class="pb-5 border-bottom px-5" action="" method="POST">
                    <div class="text-center fw-bold" style="font-size: 10vh; color: #1F283E;">Community Alert</div>
                    <h2 class="mb-5 text-center" style="color: #1F283E;">Login de Usuario</h2>

                    <?php
                    if (isset($_POST['mensaje'])) {
                        echo "<div class='alert alert-danger text-center'>" . $_POST['mensaje'] . "</div>";
                    }
                    ?>

                    <div class="form-group form-floating mb-4">
                        <input type="text" class="form-control" placeholder="Cédula" name="cedula" id="cedula" required />
                        <label class="form-label">Cédula</label>
                    </div>
                    <div class="form-group form-floating mb-4">
                        <input type="password" class="form-control" placeholder="Contraseña" name="contrasennia" id="contrasennia" required />
                        <label class="form-label">Contraseña</label>
                    </div>
                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-primary btn-lg" id="btnLogin" name="btnLogin" style="background-color:#1F283E; border-color: #1F283E;">
                            Iniciar Sesión
                        </button>
                    </div>
                </form>
                <a href="registro.php" class="mt-4 text-center under">¿No tenés Cuenta? <br> ¡Crea una ya! </a>
            </div>
        </div>
    </section>

</body>

</html>