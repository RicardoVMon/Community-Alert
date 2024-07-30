<?php include_once __DIR__ . "/../../Model/Comunidad/explorarModel.php";

function obtenerProvincias()
{
    $provincias = obtenerProvinciasBD();

    if ($provincias->num_rows > 0) {
        
        while ($provincia = mysqli_fetch_array($provincias)) {

            echo '<div class="col-4">
                            <div class="card">
                                <div class="card-header p-1">
                                    <div class="d-flex">
                                        <img class="rounded-top" src="' . $provincia['banner'] . '" width="100%" height="50px" style="object-fit: cover;">
                                    </div>
                                </div>
                                <div class="card-body pt-3">
                                    <a href="explorarCantones.php?q='. $provincia['id_provincia'] . '&r=' . $provincia['nombre_provincia'] . '" style="text-decoration: none; color: inherit;">
                                        <div class="d-flex justify-content-between">
                                            <div class="container w-75 pl-0 pr-0 ml-0 mr-0">
                                                <h1 class="h1 mb-0">' . $provincia['nombre_provincia'] . '</h1>
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
                        </div>';
        }
    }

}

function obtenerCantones($idProvincia) {

    $cantones = obtenerCantonesBD($idProvincia);

    if ($cantones->num_rows > 0) {

        while ($canton = mysqli_fetch_array($cantones)) {
                echo '<div class="col-4">
                            <div class="card">
                                <div class="card-header p-1">
                                    <div class="d-flex">
                                        <img class="rounded-top" src="'. $canton['banner'] . '" width="100%" height="50px" style="object-fit: cover;">
                                    </div>
                                </div>
                                <div class="card-body pt-3">
                                    <a href="explorarComunidades.php?q='. $canton['id_canton'] . '&r=' . $canton['nombre_canton'] . '" style="text-decoration: none; color: inherit;">
                                        <div class="d-flex justify-content-between">
                                            <div class="container w-75 pl-0 pr-0 ml-0 mr-0">
                                                <h1 class="h1 mb-0">'. $canton['nombre_canton'] . '</h1>
                                                <div class="display-5">Descubre las noticias más recientes de San Pablo, un distrito con una rica historia y cultura</div>
                                            </div>
                                            <div class="d-flex flex-column justify-content-between mr-3">
                                                <div>
                                                    <i class="fa fa-users"></i>
                                                    <span> 1700</span>
                                                </div>
                                                <div>
                                                    <i class="fa-solid fa-star"></i>
                                                    <span> 280</span>
                                                </div>
                                                <div>
                                                    <i class="fa fa-comments"></i>
                                                    <span> 320</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>';
        }

    }

}

function obtenerDistritos($idCanton) {

    $distritos = obtenerDistritosBD($idCanton);

    if ($distritos->num_rows > 0) {

        while ($distrito = mysqli_fetch_array($distritos)) {
            echo '<div class="col-4">
                            <div class="card">
                                <div class="card-header p-1">
                                    <div class="d-flex">
                                        <img class="rounded-top" src="'. $distrito['banner'] . '" width="100%" height="50px" style="object-fit: cover;">
                                    </div>
                                </div>
                                <div class="card-body pt-3">
                                    <a href="comunidad.php?q='. $distrito['id_distrito'] . '" style="text-decoration: none; color: inherit;">
                                        <div class="d-flex justify-content-between">
                                            <div class="container w-75 pl-0 pr-0 ml-0 mr-0">
                                                <h1 class="h1 mb-0">'. $distrito['nombre_distrito'] . '</h1>
                                                <div class="display-5">Descubre las noticias más recientes de San Pablo, un distrito con una rica historia y cultura</div>
                                            </div>
                                            <div class="d-flex flex-column justify-content-between mr-3">
                                                <div>
                                                    <i class="fa fa-users"></i>
                                                    <span> 1700</span>
                                                </div>
                                                <div>
                                                    <i class="fa-solid fa-star"></i>
                                                    <span> 280</span>
                                                </div>
                                                <div>
                                                    <i class="fa fa-comments"></i>
                                                    <span> 320</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>';
        }

    }

}
