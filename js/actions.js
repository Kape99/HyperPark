$body = $("body");

$(document).on({
    ajaxStart: function() {
        $body.addClass("loading");    },
    ajaxStop: function() { $body.removeClass("loading"); }
});

$( document ).ready(function() {
    //loads header
    $.ajax({
        type:'GET',
        url: "http://localhost/html/header.html",
        crossDomain: true,
    }).success(function(result){
        $("#header").html(result);
    });
    
    //loads footer
    $.ajax({
        type:'GET',
        url: "http://localhost/html/footer.html",
        crossDomain: true,
    }).success(function(result){
        $("#footer").html(result);
    });
});