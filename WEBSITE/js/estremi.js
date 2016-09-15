$( document ).ready(function() {
    $.ajax({
        type:'GET',
        dataType: 'json',
        url: "http://parcomajella.altervista.org/php/estremi.php",
        crossDomain: true,
    }).success(function(result){
        var prod = estremi(result);
        $("#estremibody").html(prod);
    });
    
    function estremi(arg) {
        r='';
        count=0;
        arg.forEach(function (d) {
            if (count == 0) {
                r+= '<div class="row">';
            }
        r += '<div class="col-md-4">';
        r += '<div class="thumbnail">';
        if (d['NOME']=='Sentiero dello Spirito') {
            r += '<a href=percorso.html?id=15>';
        }
        r += '<h3 class="nomeflora">'+d['NOME']+'</h3>';
        r += '<img class="img-responsive faunaimg" src="'+d['THUMBNAIL']+'">';
        r += '<div class="caption">';
        r += '<h5>' + d['DESCRIZIONEBREVE'] + '</h5>\n';
        r += '</div>';
        if (d['NOME']=='Sentiero dello Spirito') {
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