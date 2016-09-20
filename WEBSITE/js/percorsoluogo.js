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
   url = "http://parcomajella.altervista.org/php/percorsoluogo.php?id="+id;

   $.ajax({
      type: 'GET',
      dataType: 'json',
      url: url,
      crossDomain: true,
   }).success(function (result) {
      var tofill = tab(result);
      $("#percorsoluogo").html(tofill);
   });



   function tab(arg) {
      var r = '';
      r += '<p><b>Cultura: </b>';
      arg.forEach(function (d) {
       r += '<a href="luogo.html?id='+d['ID']+'">'+d['NOME']+' </a>';
      });
      r += '</p>';
      return r;
   }
});
