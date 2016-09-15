function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}

$( document ).ready(function() {
    nome = getParameterByName('id');
    url = "http://parcomajella.altervista.org/php/percorso.php?id="+nome;

    $.ajax({
        type:'GET',
        dataType: 'json',
        url: url,
        crossDomain: true,
    }).success(function(result){
        var prod = luogo(result);
        $("#percorsobody").html(prod);
    });
    
    function luogo(d) {
        var r='';
        r += '<h2>'+d['NOME']+'</h2>';
        r += '<div class="row thumbnail">';
        r += '<div class="col-md-12">';
        r += '<p><b>Sigla sentiero: </b>'+d['SIGLA']+'</p>';
        r += '<p><b>Località di inizio: </b>'+d['INIZIO']+'</p>';
        r += '<p><b>Località di arrivo: </b>'+d['FINE']+'</p>';
        r += '<p><b>Difficoltà: </b>'+d['DIFFICOLTA']+'</p>';
        r += '<p><b>Dislivello: </b>'+d['DISLIVELLO']+'</p>';
        r += '<p><b>Lunghezza: </b>'+d['LUNGHEZZA']+'</p>';
        r += '<p><b>Tempo di percorrenza: </b>'+d['DURATA']+'</p>';
        r += '</div>';
        r += '</div>';
        return r; 
    }
    
    $(function(){
    $('#bottoneinfo').on('click', function(result){
        var prod = info(result);
        $("#percorsobody").html(prod);
        });
    });

    function info(d) {
        var r='';
        r += '<h2>'+d['NOME']+'</h2>';
        r += '<div class="row">';
        r += '<div class="col-md-6"';
        r += '<p>'+d['DESCRIZIONE']+'</p>';
        r += '</div>';
        r += '<div class="col-md-6">';
        r += '<img class="img-responsive src="'+d['THUMBNAIL']+'">"';
    }
    
});