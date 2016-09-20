jQuery(document).ready(function ($) {
   $('header').load("./header.html");
   $('footer').load("./footer.html");

});

function getUrlVars() {
   var vars = {};
   var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi,
      function (m, key, value) {
         vars[key] = decodeURIComponent(value);
      });
   return vars;
}



function createBreadcrumb(infos, type) {
   var str;
   switch (type) {
   case "pianta":
      str = "<li><a href='esplora.html'>Esplora</a></li><li>" +
         '<a href="flora.html">Flora</a></a></li><li>' + infos["NOME"] + "</li>";
      break;
   case "animale":
      str = "<li><a href='esplora.html'>Esplora</a></li><li>" +
         '<a href="fauna.html">Fauna</a></a></li><li>' + infos["NOME"] + "</li>";
      break;
   case "luogo":
      str = "<li><a href='esplora.html'>Esplora</a></li><li>" +
         '<a href="cultura.html">Flora</a></a></li><li>' + infos["NOME"] + "</li>";
      break;
   case "cultura":
      str = "<li><a href='esplora.html'>Esplora</a></li><li>Cultura</li>";
      break;
   case "flora":
      str = "<li><a href='esplora.html'>Esplora</a></li><li>Flora</li>";
      break;
   case "fauna":
      str = "<li><a href='esplora.html'>Esplora</a></li><li>Fauna</li>";
      break;
   default:
      str = "<li>" + infos + "</li>";
      break;
   }
   $("#bc").html(str);
}