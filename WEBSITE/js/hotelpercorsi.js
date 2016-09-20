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
   url = "http://parcomajella.altervista.org/php/hhpercorso.php?id="+id;

   $.ajax({
      type: 'GET',
      dataType: 'json',
      url: url,
      crossDomain: true,
   }).success(function (result) {
      var tofill3 = tab(result);
      $("#tab2tofill2").html(tofill3);
   });



   function tab(arg) {
      var r = '';
      r +="<div class='container container-fluid' style='padding-bottom: 30px'>";

      r += '<h3 class="sottotitolo">Percorsi</h3>'
      r += '<div class="row">';

      arg.forEach(function (d) {
        r +="<div class='col-md-4'>";

       r += '<a href="percorso.html?id='+d['ID']+'"><p>'+d['NOME']+'</p></a>';
       r +="</div>";

      });
      r += '</div>';

      r += '</div>';
      return r;
   }
});
