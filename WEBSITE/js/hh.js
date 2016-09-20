$(document).ready(function () {
   $.ajax({
      type: 'GET',
      dataType: 'json',
      url: "http://parcomajella.altervista.org/php/hh.php",
      crossDomain: true,
   }).success(function (result) {
      var prod = hh(result);
      $("#toFill").html(prod);
   });



   function hh(arg) {
      r = '';
      count = 0;
      arg.forEach(function (d) {
         if (count % 2 == 0) {

            r += '<a class="thumbnail special" style="padding-bottom:3px;"';
         } else {
            r += '<a class="thumbnail" style="padding-bottom:3px;" ';
         }
         if( count < 2){
            r+= 'href=hotel.html?id=' + d['ID']+'';
         }
         r+= '>';
         r += '<div class="row" >';
         r += '<div class = "col-sm-8">';
         r += '<h3 class = "sottotitolo "> ' + d['NOME'] + ' </h2>';
         r += '<div class = "descrizionebreve"> ' + d['DESCRIZIONEBREVE'] + ' </div> </div> <div class = "col-sm-4">';
         r += '<center> <img class = "img-responsive mappa" src = "' + d['THUMBNAIL'] + '" ><center>';
         r += '</div>';
         r += '</div>';
         r += '</a>';
         r += '</div>';
         
         
         
         count++
      });
      return r;
   }


});
