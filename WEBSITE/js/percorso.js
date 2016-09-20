function getParameterByName(name, url) {
   if (!url) url = window.location.href;
   name = name.replace(/[\[\]]/g, "\\$&");
   var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
      results = regex.exec(url);
   if (!results) return null;
   if (!results[2]) return '';
   return decodeURIComponent(results[2].replace(/\+/g, " "));
}
$(document).ready(function () {

   id = getParameterByName('id');
   url = "http://parcomajella.altervista.org/php/idfrom.php?id=" + id + "&from=PERCORSO";

   $.ajax({
      type: 'GET',
      dataType: 'json',
      url: url,
      crossDomain: true,
   }).success(function (result) {
      var nameToDisplay = name(result);
      var tofill1 = tab1(result);
      var tofill2 = tab2(result);

      $("#nametofill").html(nameToDisplay);
      $("#tab1tofill").html(tofill1);
      $("#tab2tofill").html(tofill2);
      createBreadcrumb(result,'percorso');

   });


   function info(d) {
      var r = '';
      r += '<h2>' + d['NOME'] + '</h2>';
      r += '<div class="row">';
      r += '<div class="col-md-6"';
      r += '<p>' + d['DESCRIZIONE'] + '</p>';
      r += '</div>';
      r += '<div class="col-md-6">';
      r += '<img class="img-responsive src="' + d['THUMBNAIL'] + '">"';
   }


function name(d) {
   return d['NOME'];
}

function tab1(d) {
   var r = '';

   r += '<div class="container-fluid">';
   r += '<div class="row style=" width:95%;"">';
   r += '<p><b>Sigla sentiero: </b>' + d['SIGLA'] + '</p>';
   r += '<p><b>Località di inizio: </b>' + d['INIZIO'] + '</p>';
   r += '<p><b>Località di arrivo: </b>' + d['FINE'] + '</p>';
   r += '<p> <b>Difficoltà: </b>' + d['diff'] + '</p>';
   r += '<p><b>Dislivello: </b>' + d['DISLIVELLO'] + '</p>';
   r += '<p><b>Lunghezza: </b>' + d['LUNGHEZZA'] + '</p>';
   r += '<p><b>Tempo di percorrenza: </b>' + d['DURATA'] + '</p>';
   
   r += '<h3 class="sottotitolo">Cosa puoi trovare su questo percorso:</h3>';
   r += '<div id="percorsopianta"></div>';
   r += '<div id="percorsoanimale"></div>';
   r += '<div id="percorsoluogo"></div>';
   r += '</div>';
   r += '</div>';
   return r;
}



function tab2(d) {
   var r = '';
   r += '<div class="container-fluid">';
   r += '<div class="row style=" width:95%;"">';
   r += '<div class="col-sm-8">';
   r += '<h4><p><br>' + d['DESCRIZIONE'] + '</p></h4>';
   r += '</div>';
   r += '<div class="col-md-4">';
   r += '<img class="img-responsive" src="' + d['IMMAGINELUOGO'] + '">';
   r += '</div>';
   r += '</div>';
   r += '</div>';
   return r;
}
});
