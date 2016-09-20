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
   url = "http://parcomajella.altervista.org/php/percorsohh.php?id="+id;

   $.ajax({
      type: 'GET',
      dataType: 'json',
      url: url,
      crossDomain: true,
   }).success(function (result) {
      var tofill = tab(result);
      $("#percorsohh").html(tofill);
   });



   function tab(arg) {
      var r = '';
      r +="";

      r += '<h3 class="sottotitolo">Alloggi</h3>'
      r += '<div class="row">';

      arg.forEach(function (d) {
        r +="<div class='col-md-4'>";

       r += '<a href="hotel.html?id='+d['ID']+'"><p>'+d['NOME']+'</p></a>';
       r +="</div>";

      });
      r += '</div><br><br>';

      r += '';
      return r;
   }
});
