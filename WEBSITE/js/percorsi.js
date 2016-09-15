jQuery(document).ready(function($){
        $('header').load("./header.html");
        $('footer').load("./footer.html");
        ciaopipo();
      
    });

function ciaopipo(){
    $.ajax({
        method: "POST",
        data: { diff: getUrlVars()['difficulty'] },
        url: 'php/park.php', success: function(result) {
            //var info = JSON.parse(result);
            //$('#descrizione').html(info);
            console.log(result);
            
            }
        
    });
}