function obtenerCantones() {

    let provinciaId = document.getElementById('provincia').value;
    let selectCantones = document.getElementById('canton');
    selectCantones.disabled = false;
    
    while (selectCantones.options.length > 1) {
        selectCantones.remove(1);
    }

    $.ajax({
        type: 'GET',
        url: 'https://ubicaciones.paginasweb.cr/provincia/' + provinciaId + '/cantones.json',
        dataType: 'json',
        success: function (response) {

            for (let key in response) {
                if (response.hasOwnProperty(key)) {
                    let option = new Option(response[key], key);
                    selectCantones.add(option);
                }
            }
        }
    });
}