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
    nome = getParameterByName('diff');
    url = "http://parcomajella.altervista.org/php/difficolta.php?diff="+nome;

    $.ajax({
        type:'GET',
        dataType: 'json',
        url: url,
        crossDomain: true,
    }).success(function(result){
        var prod = luogo(result);
        $("#difficoltabody").html(prod);
        createBreadcrumb(result,'diff');
    });

    function luogo(arg) {
        var r='';
        r +="<div class='container'>";
        r +="<div id='intro' class='container-fluid'>";
        r +="<div class='row'>";
        r +="<div class='col-md-7'>";
        if (nome == "FACILE") {
          r +="<h2 class='titolo'>Percorsi Facili</h2>";
          r +="<p>Sono stati individuati oltre venti semplici tracciati che per durata, ubicazione e accessibilità sono particolarmente adatti a bambini e persone poco allenate. Spesso questi itinerari sono prossimi ad aree faunistiche, giardini botanici o altre strutture d'interesse a cui abbinare la visita. Consigliamo ai visitatori di rivolgersi sempre ai Centri di Visita o ai Centri di Informazioni del Parco al fine di valutare se l'itinerario prescelto è il più idoneo.</p>";
        } else if (nome == "MODERATO") {
          r +="<h2 class='titolo'>Percorsi Moderati</h2>";
          r +="<p>Questa categoria comprende sentieri generalmente in buone condizioni, pensati per persone con buone capacità di escursionismo. Rispetto a quelli della categoria Facile, questi percorsi sono caratterizzati da un chilometraggio ed un dislivello maggiori.</p>";
        } else if (nome == "IMPEGNATIVO") {
          r +="<h2 class='titolo'>Percorsi Impegnativi</h2>";
          r +="<p>Questa categoria comprende sentieri generalmente in buone condizioni, pensati per persone con buone capacità di escursionismo. Rispetto a quelli della categoria Moderato, questi percorsi sono caratterizzati da un chilometraggio maggiore e da un aumento significativo nel dislivello.</p>";
        } else if (nome == "DIFFICILE") {
          r +="<h2 class='titolo'>Percorsi Diffici</h2>";
          r +="<p>Questa categoria comprende sentieri generalmente in buone condizioni, pensati per persone con eccellenti capacità di escursionismo. Rispetto a quelli della categoria Impegnativi, questi percorsi sono caratterizzati da un aumento significativo nel chilometraggio e nel dislivello.</p>";
        } else if (nome == "MOLTODIFFICILE") {
          r +="<h2 class='titolo'>Percorsi Molto Difficili</h2>";
          r +="<p>I sentieri di questa categoria non sono sempre in buone condizioni e sono pensati per persone con eccellenti capacità di escursionismo. Rispetto a quelli della categoria Dificili, questi percorsi sono caratterizzati da un aumento significativo nel chilometraggio e nel dislivello.</p>";
        }
        else if (nome == "ESTREMO") {
          r +="<h2 class='titolo'>Percorsi Estremi</h2>";
          r +="<p>I sentieri di questa categoria non sono sempre utilizzabili e sono pensati per persone con eccellenti capacità di escursionismo/arrampicata. Rispetto a quelli della categoria Molto Difficile, questi percorsi sono caratterizzati da un aumento significativo nel chilometraggio e da un aumento estremo nel dislivello.</p>"
        }


        r +="</div>";
        r +="<div class='col-md-5'>";
        r +="<img class='img-responsive mappa' src='img/Mappa_Majella.jpg'>";
        r +="</div>";
        r +="</div>";
        r +="</div>";
        r +="<div class='jumbotron jumbotron-fluid'>";

        var count=0;
        arg.forEach(function (d) {
            if (count == 0) {
                r+= '<div class="row">';
            }
        r += '<div class="col-md-4">';
        r += '<a class="thumbnail" href=percorso.html?id='+d['ID']+'>';
        r += '<h3 class="sottotitolo">'+d['NOME']+'</h3>';
        r += '<img class="img-responsive thumb" src="'+d['THUMBNAIL']+'">';
        r += '</a>';
        r += '</div>';
        count++;
        if (count == 3) {
            count=0;
            r+='</div>';
        }
       });
       r +="</div>";


        return r;
    }



});
