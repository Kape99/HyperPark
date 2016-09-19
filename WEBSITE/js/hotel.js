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
   nome = getParameterByName('id');
   url = "/php/hotel.php?id=" + nome;

   $.ajax({
      type: 'GET',
      dataType: 'json',
      url: url,
      crossDomain: true,
   }).success(function (result) {
      var tofill1 = tab1(result);
      var tofill2 = tab2(result);
      var tofill3 = tab3(result);
      var tofill4 = tab4(result);
      $("#tab1tofill").html(tofill1);
      $("#tab2tofill").html(tofill2);
      $("#tab3tofill").html(tofill3);
      $("#tab4tofill").html(tofill4);
   });


});

function tab1(d) {
   var r = '';
   
   r += '<div class="container-fluid">';
   r += '<div class="row style=" width:95%;"">';
   r += '<div class="col-sm-8">';
   r += '<h2>' + d['NOME'] + '</h2>';
   r += '<p>' + d['DESCRIZIONE'] + '</p>';
   r += '</div>';
   r += '<div class="col-sm-4">';
   r += '<img class="img-responsive" src="' + d['THUMBNAIL'] + '"';
   r += '</div>';
   
   r += '</div>';
   r += '</div>';
   return r;
}



function tab2(d) {
   return 'acdcewcweccccs fdwawvdx';

}

function tab3(d) {
   return 'ksksks';

}

function tab4(d) {
   return 0;

}