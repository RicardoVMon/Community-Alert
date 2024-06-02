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
                <a class="navbar-brand fs-4 fw-bold" th:href="@{/}">
                    <i class="fa fa-bell mx-2"></i> Vecindario seguro, corazones unidos
                </a>
            </div>
        </nav>

        <section class="container-fluid d-flex flex-grow-1 px-0">
            <div class="col">
                <img src="https://img.freepik.com/free-photo/volunteers-teaming-up-organize-donations-charity_23-2149230524.jpg?t=st=1717272466~exp=1717276066~hmac=6685ac6f4cee55aff405c915e68adea783138171f9c0c71c38e1120bac734a0f&w=1380" class="img-fluid" style="object-fit: cover; height: 100%">
            </div>
            <div class="col d-flex align-items-center">
                <div class="container-fluid d-flex flex-column">
                    <form class="pb-5 border-bottom px-5" th:action="@{/login}" method="POST">
                        <div class="text-center fw-bold" style="font-size: 10vh; color: #1F283E;">Community Alert</div>
                        <h2 class="mb-5 text-center" style="color: #1F283E;" th:text="#{login.loginUsuario}">Login de Usuario</h2>
                        <div class="form-group form-floating mb-4">
                            <input type="text" class="form-control" placeholder="Correo" name="username" id="username"/>
                            <label class="form-label" th:text="#{login.username}">Nombre de usuario</label>
                        </div>
                        <div class="form-group form-floating mb-4">
                            <input type="password" class="form-control" placeholder="Contraseña" name="password" id="password" />
                            <label class="form-label"th:text="#{login.password}">Contraseña</label>
                        </div>
                        <div class="form-group text-center">
                            <a href="home.php" class="btn btn-primary btn-lg" style="background-color:#1F283E; border-color: #1F283E;" th:text="#{login.inicioSesion}">
                                Iniciar Sesión
                            </a>
                        </div>
                    </form>
                    <a href="registro.php" class="mt-4 text-center under" th:text="#{login.registrarse}">¿No tenés Cuenta? <br> ¡Crea una ya! </a>
                </div>
            </div>
        </section>

    </body>

</html>
