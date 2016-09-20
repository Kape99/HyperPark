$(document).ready(function () {
   url = "http://parcomajella.altervista.org/php/allphoto.php" ;

   $.ajax({
      type: 'GET',
      dataType: 'json',
      url: url,
      crossDomain: true,
   }).success(function (result) {
      var tofill = fillmeplease(result);
      $("#tofill").html(tofill);
   });

 


   function fillmeplease(arg) {
      var r = '';
      r += '<div class="row">';

      count = 1;
      arg.forEach(function (d) {
         
         r += '<div class="col-lg-4 col-md-4 col-xs-6 ">';
         r += '<a class="thumbnail special myimage" style="border-color:white;" href="">';
         r += '<img class="img-responsive" style="max-height: 12.4em;" src="' + d['URL'] + '" alt="">';
         r += '</a>';
         r += '</div>';
      });

      r += '</div>';
      return r;
   }
});

$(function ()
{
    $('#my-image').on('click', function ()
    {
        $(this).width(1000);
    });
});