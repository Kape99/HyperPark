$(document).ready(function () {
   $.ajax({
      type: 'GET',
      dataType: 'json',
      url: "../php/hh.php",
      crossDomain: true,
   }).success(function (result) {
      var prod = hh(result);
      $("#toFill").html(prod);
   });



   function hh(arg) {
      r = '';
      count = 0;
      arg.forEach(function (d) {
         if (count % 2 != 0) {

            r += '<div class="row grigio2" style="padding:20px">';
         } else {
            r += '<div class="row" style="padding:20px">';
         }



         r += '<div class = "col-md-8">';
         r += '<h2 class = "titolo"> ' + d['NOME'] + ' </h2>';

         r += '<p> ' + d['DESCRIZIONEBREVE'] + ' </p> </div> <div class = "col-sm-4">';
         r += '<img class = "img-responsive mappa" src = "' + d['THUMBNAIL'] + '" >';
         r += '</div>';

         r += '</div>';
         count++
      });
      return r;
   }


});