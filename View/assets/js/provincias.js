function obtenerProvincias() {

    let selectProvincias = document.getElementById('provincia');

    $.ajax({
        type: 'GET',
        url: 'https://ubicaciones.paginasweb.cr/provincias.json',
        dataType: 'json',
        success: function (response) {
            for (let key in response) {
                if (response.hasOwnProperty(key)) {
                    let option = new Option(response[key], key);
                    selectProvincias.add(option);
                }
            }
        }
    });


}