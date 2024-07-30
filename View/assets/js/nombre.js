
let nombreProvincia = document.getElementById('nombreProvincia');
let nombreCanton = document.getElementById('nombreCanton');
let nombreDistrito = document.getElementById('nombreDistrito');

function establecerNombres() {
    nombreProvincia.value = document.getElementById('provincia').options[document.getElementById('provincia').selectedIndex].text;
    nombreCanton.value = document.getElementById('canton').options[document.getElementById('canton').selectedIndex].text;
    nombreDistrito.value = document.getElementById('distrito').options[document.getElementById('distrito').selectedIndex].text;
}