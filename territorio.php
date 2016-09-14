<!DOCTYPE html>
<html lang="it">

<head>

   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="description" content="our first dynamic website">
   <meta name="author" content="Capecchi Luca, Chioso Emanuele, Della Penna Lorenzo">
   <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
   <title>Parco la Majella</title>

   <!-- Bootstrap -->
   <link href="css/bootstrap.css" rel="stylesheet">
   <!-- Custom CSS -->
   <link href="css/park.css" rel="stylesheet">

   <link rel="stylesheet" href="css/kape99.css" media="screen" title="no title" charset="utf-8">
   <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
   <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
   <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>


<body>

<div class="container">
   <!--   HEADER   -->
   <header></header>
   <!-- HEADER END -->




   <!-- BODY -->
   <div class="container">
      <div id="intro" class="container-fluid">

         <div class="row">
            <div class="col-md-12">
               <h2 class="titolo">Flora</h3>

                 <p>
                    La flora del Parco Nazionale della Majella si caratterizza per la sua notevole ricchezza.<br>
                    Le entità (specie e sottospecie) censite ammontano ad oltre 2100, corrispondenti a oltre il 65% della flora abruzzese, quasi il 30% di quella italiana e circa il 17% di quella europea.<br>
                    Oltre ad essere molto ricca, la flora del Parco è considerevole anche per la sua originalità. Il numero degli endemismi ammonta a 142 e, tra questi, 5 sono esclusivi del territorio dell’area protetta: la Soldanella del Calcare ed il Fiordaliso della Majella, scelti come simbolo dei giardini botanici del Parco, la Pinguicola di Fiori, la Radicchiella della Majella, il Ranuncolo multidentato.<br>
                    Di notevole interesse fitogeografico sono le specie relitte, che in tempi lontani avevano una diffusione ben maggiore. Tra i relitti del terziario, che costituivano la vegetazione cosiddetta a “laurifille” presente qualche decina di milioni di anni fa, ricordiamo l’Agrifoglio, il Tasso e la Dafne laurella.<br>
                 </p>
              </div>


           </div>
        </div>



      <div class="jumbotron jumbotron-fluid">
          <div class="container">
            <?php

                $servername = "localhost";
            $username = "kape";
            $password = "kuki99";
            $dbname = "test";

            // Create connection
            $conn = new mysqli($servername, $username, $password, $dbname);
            // Check connection
            if ($conn->connect_error) {
               die("Connection failed: " . $conn->connect_error);
            }

            $sql = "SELECT * FROM pianta";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
              echo '<div class="row">';
              for ($x = 0;$row = $result->fetch_assoc(); $x++) {
                echo '<div class="col-md-4 test" >
                          <div class="thumbnail">
                            <a id="bottoneFlora" href="#">
                                <img src="'.$row[THUMBNAIL].'" alt="'.$row[NOME].'" id="imgflora">
                                <div class="caption">
                                <h3 class="sottotitolo">'.$row[NOME].'</h3>
                                <p>'.$row[DESCRIZIONEBREVE].'</p>
                                </div>
                            </a>
                            </div>
                        </div>
                        ';
                }
                echo '</div>';

            }

             else {
               echo "problem";
            }
            $conn->close();


            ?>
          </div>






          </div>
      </div>
    </div>










 <!--   FOOTER   -->
 <footer> </footer>
 <!-- FOOTER END -->
  </div>

 <!-- jQuery  -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 <!-- bootstrap standard javascript -->
 <script src="js/bootstrap.min.js"></script>
 <!-- our scripts -->
 <script src="js/park.js"></script>
 <script language="JavaScript" type="text/javascript" src="js/scripts.js"></script>

</body>

</html>
