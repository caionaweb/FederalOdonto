function carregaForm(dados) {

    $.get(dados, function (resultado) {
        $('#mes').html(resultado);
    })
}


function carregaMes() {

    $.get('mes.php', function (resultado) {
        $('#mes').html(resultado);
    })
}

function proximoMes() {

    $.get('mudaMes.php?setMes=proximo', function (resultado) {
        $.get('mes.php', function (resultado) {
            $('#mes').html(resultado);
        })
    })
}
function anteriorMes() {

    $.get('mudaMes.php?setMes=anterior', function (resultado) {
        $.get('mes.php', function (resultado) {
            $('#mes').html(resultado);
        })
    })
}

    function carregaLista() {



        $.get('lista.php', function (resultado) {

                $('#modalform').find('.modal-dialog').css({width:'auto',
                    height:'auto',
                    'max-height':'100%'});

            $('#myModalLabel').text("Consultas Agendadas");
            $('#mes').html(resultado);

        })
    }


