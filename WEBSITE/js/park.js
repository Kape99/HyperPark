jQuery(document).ready(function($){
        $('header').load("./header.html");
        $('footer').load("./footer.html");
      
    });

function getUrlVars() {
    var vars = {};
    var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi,
    function(m,key,value) {
      vars[key] = decodeURIComponent(value);
    });
    return vars;
  }


