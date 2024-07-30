<?php

function abrirConexion()
{
    return mysqli_connect("127.0.0.1:3306", "root", "", "communityalert");
}

function cerrarConexion($conexion)
{
    mysqli_close($conexion);
}