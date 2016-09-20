$( document ).ready(function() {
    $.ajax({
        type:'GET',
        dataType: 'json',
        url: "http://parcomajella.altervista.org/php/flora.php",
        crossDomain: true,
    }).success(function(result){
        var prod = flora(result);
        $("#florabody").html(prod);
        createBreadcrumb(result,'flora');
    });
    
    function flora(arg) {
        r='';
        count=0;
        arg.forEach(function (d) {
            if (count == 0) {
                r+= '<div class="row">';
            }
        r += '<div class="col-md-4">';
        r += '<div class="thumbnail">';
        if (d['NOME']=='acero di lobel') {
            r += '<a href=pianta.html?id=1>';
        }
        r += '<h3 class="nomeflora">'+d['NOME']+'</h3>';
        r += '<img class="img-responsive faunaimg" src="'+d['THUMBNAIL']+'">';
        r += '<div class="caption">';
        r += '<h5>' + d['DESCRIZIONEBREVE'] + '</h5>\n';
        r += '</div>';
        if (d['NOME']=='acero di lobel') {
            r += '</a>';
        }
        r += '</div>';
        r += '</div>';
        count++;
        if (count == 3) {
            count=0;
            r+='</div>';
        }
     });
        return r;
    }
});