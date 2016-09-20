function getParameterByName(name, url) {
   if (!url) url = window.location.href;
   name = name.replace(/[\[\]]/g, "\\$&");
   var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
      results = regex.exec(url);
   if (!results) return null;
   if (!results[2]) return '';
   return decodeURIComponent(results[2].replace(/\+/g, " "));
}
s

$(document).ready(function () {
   equalHeight($(".stessaaltezza"));
   id = getParameterByName('id');
   url = "/php/percorsoaltro.php?percorso="+ percorso + "&tipo=HH";

   $.ajax({
      type: 'GET',
      dataType: 'json',
      url: url,
      crossDomain: true,
   }).success(function (result) {
      var tofill3 = tab(result);
      $("#tab3tofill2").html(tofill3);
   });

  

   function tab(arg) {
      var r = '';
      r += '<div class="row">';
      
      arg.forEach(function (d) {
         r += '<a href="/">Visit our HTML tutorial</a>' + d['URL'] + '" alt="">';
         r += '</a>';
         r += '</div>';
      });

      r += '</div>';
      return r;
   }
});