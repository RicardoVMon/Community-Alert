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
                <img src="https://img.freepik.com/free-photo/group-friends-gathering-together_23-2148729701.jpg?t=st=1717272703~exp=1717276303~hmac=7ca9de27a5723d13f7e86e413e3f27c94a9a9fb17622e9b728c6adcb2dfbda9c&w=1380" class="img-fluid" style="object-fit: cover; height: 100%">
            </div>
            <div class="col d-flex align-items-center">
                <div class="container-fluid d-flex flex-column">
                    <form class="pb-5 border-bottom px-5" th:action="@{/user/rutinas}" method="GET">
                        <div class="text-center fw-bold" style="font-size: 10vh; color: #1F283E;">Community Alert</div>
                        <h2 class="mb-5 text-center" style="color: #1F283E;" th:text="#{login.registrarse}">Registro de Usuario</h2>
                        <div class="row mb-3">
                            <div class="col">
                                <div class="form-group form-floating">
                                    <input type="text" class="form-control" placeholder="Nombre" name=""/>
                                    <label class="form-label" th:text="#{registro.username}">Nombre</label>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-4">
                                <div class="form-group form-floating">
                                    <input type="text" class="form-control" placeholder="Nombre" name=""/>
                                    <label class="form-label" th:text="#{registro.nombre}">Nombre</label>
                                </div>
                            </div>
                            <div class="col-8">
                                <div class="form-group form-floating">
                                    <input type="text" class="form-control" placeholder="Apellidos" name=""/>
                                    <label class="form-label" th:text="#{registro.apellido}">Apellidos</label>
                                </div>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-7">
                                <div class="form-group form-floating">
                                    <input type="text" class="form-control" placeholder="Correo" name=""/>
                                    <label class="form-label" th:text="#{registro.correo}">Correo Electrónico</label>
                                </div>
                            </div>
                            <div class="col-5">
                                <div class="form-group form-floating">
                                    <select id="gender" class="form-control" >
                                        <option value="" selected disabled th:text="#{registro.genero}">Seleccione su género</option>
                                        <option value="Masculino" th:text="#{registro.masculino}">Masculino</option>
                                        <option value="Femenino" th:text="#{registro.femenino}">Femenino</option>
                                        <option value="Otro" th:text="#{registro.otro}">Otro</option>
                                        <option value="Otro" th:text="#{registro.PrefieroNoDecir}">Prefiero no decir</option>
                                    </select>
                                    <label for="gender" class="form-label" th:text="#{registro.seleccionGenero}">Género</label>
                                </div>

                            </div>
                        </div>

                        <div class="form-group form-floating mb-4">
                            <input type="password" class="form-control" placeholder="Contraseña" name="" />
                            <label class="form-label" th:text="#{registro.password}">Contraseña</label>
                        </div>
                        <div class="form-group text-center">
                            <a href="../index.php" class="btn btn-primary btn-lg" style="background-color:#1F283E; border-color: #1F283E;" th:text="#{login.inicioSesion}">
                                Iniciar Sesión
                            </a>
                        </div>
                    </form>
                    <a href="login.php" class="mt-4 text-center under" th:text="#{login.inicioSesion}">¿Ya tenés una cuenta? <br> ¡Inicia sesión! </a>
                </div>
            </div>
        </section>

    </body>
</html>
