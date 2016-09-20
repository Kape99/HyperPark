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
   equalHeight($(".stessaaltezza"));
   id = getParameterByName('id');
   url = "http://parcomajella.altervista.org/php/photo.php?id=" + id + "&tipo=HH";

   $.ajax({
      type: 'GET',
      dataType: 'json',
      url: url,
      crossDomain: true,
   }).success(function (result) {
      var tofill3 = tab3(result);
      $("#tab3tofill").html(tofill3);
   });

   function equalHeight(group) {
      var tallest = 0;
      group.each(function () {
         var thisHeight = $(this).height();
         if (thisHeight > tallest) {
            tallest = thisHeight;
         }
      });
      group.each(function () {
         $(this).height(tallest);
      });
   }


   function tab3(arg) {
      var r = '';
      r += '<div class="row">';

      count = 1;
      arg.forEach(function (d) {
         
         r += '<div class="col-lg-4 col-md-4 col-xs-6 ">';
         r += '<a class="thumbnail" href="#">';
         r += '<img class="img-responsive" src="' + d['URL'] + '" alt="">';
         r += '</a>';
         r += '</div>';
      });

      r += '</div>';
      return r;
   }
});