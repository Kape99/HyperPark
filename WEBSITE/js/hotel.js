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
   fakewaffle.responsiveTabs(['xs', 'sm']);
   id = getParameterByName('id');
   url = "http://parcomajella.altervista.org/php/idfrom.php?id=" + id+"&from=HH";

   $.ajax({
      type: 'GET',
      dataType: 'json',
      url: url,
      crossDomain: true,
   }).success(function (result) {
      var nameToDisplay = name(result);
      var tofill1 = tab1(result);
      var tofill2 = tab2(result);
      var tofill4 = tab4(result);

      $("#nametofill").html(nameToDisplay);
      $("#tab1tofill").html(tofill1);
      $("#tab2tofill").html(tofill2);
      $("#tab4tofill").html(tofill4);
      createBreadcrumb(result,'hotel');
      
   });


});

function name(d) {
   return d['NOME'];
}

function tab1(d) {
   var r = '';
   r += '<div class="container-fluid">';
   r += '<div class="row style=" width:95%;"">';
   r += '<div class="col-sm-8">';
   r += '<p><br>' + d['DESCRIZIONE'] + '</p>';
   r += '</div>';
   r += '<div class="col-sm-4">';
   r += '<img class="img-responsive" src="' + d['THUMBNAIL'] + '"';
   r += '</div>';
   r += '</div>';
   r += '</div>';
   return r;
}



function tab2(d) {
   var r = '';
   r += '<div class="container-fluid">';
   r += '<div class="row style=" width:95%;"">';
   r += '<div class="col-sm-8">';

   r += '<h4><p><br>' + d['LUOGO'] + '</p></h4>';
   r += '</div>';
   r += '<div class="col-md-4">';
   r += '<img class="img-responsive" src="' + d['IMMAGINELUOGO'] + '"';
   r += '</div>';
   r += '</div>';
   r += '</div>';
   return r;
}



function tab4(d) {
   return '<div class="container" style="width:90%">' + d['DESCRIZIONE'] + '</div>';

}