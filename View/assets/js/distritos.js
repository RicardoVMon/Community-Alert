function obtenerDistritos() {

    let provinciaId = document.getElementById('provincia').value;
    let cantonId = document.getElementById('canton').value;
    let selectDistrito = document.getElementById('distrito');
    selectDistrito.disabled = false;
    
    while (selectDistrito.options.length > 1) {
        selectDistrito.remove(1);
    }

    $.ajax({
        type: 'GET',
        url: 'https://ubicaciones.paginasweb.cr/provincia/' + provinciaId + '/canton/' + cantonId + '/distritos.json',
        dataType: 'json',
        success: function (response) {

            for (let key in response) {
                if (response.hasOwnProperty(key)) {
                    let option = new Option(response[key], response[key]);
                    selectDistrito.add(option);
                }
            }
        }
    });

}