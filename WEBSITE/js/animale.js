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
    url = "http://parcomajella.altervista.org/php/animale.php?id="+nome;

    $.ajax({
        type:'GET',
        dataType: 'json',
        url: url,
        crossDomain: true,
    }).success(function(result){
        var prod = luogo(result);
        $("#animalebody").html(prod);
        createBreadcrumb(result,'animale');
    });

    function luogo(d) {
        var r='';
        var cont=0;
        r += '<h2>'+d['NOME']+'</h2>';
        r += '<div class="row thumbnail">';
        r += '<div class="col-md-5">';
        r += '<h3 class="titoloarancio">'+'Descrizione'+'</h3>';
        r += '<p>'+d['DESCRIZIONELUNGA']+'</p>';
        r += '<a href="percorso.html?id='+d['PERCORSOID']+'">'+'Percorso in cui si può trovare: '+d['PERCORSO']+'</a>';
        r += '</div>';
        r += '<div class="col-md-7">';
        r += '<div class="row">';
        d['FOTO'].forEach(function (x){
            r += '<div class="col-md-6">';
            r += '<img class="img-responsive imganimale" src="'+x['URL']+'">';
            r += '</div>';
            cont++;
            if (cont==2) {
                r += '</div>';
                r += '<div class="row">';
            }
        });
        r += '</div>';
        r += '</div>';
        r += '</div>';
        return r;
    }

});
