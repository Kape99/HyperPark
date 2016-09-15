<?php
//$servername = "ftp.parcomajella.altervista.org";
//$username = "parcomajella";
$dbhost = "ftp.parcomajella.altervista.org";
  $dbuser = "parcomajella";
  $dbpass = "capeculo0";
  $dbname = "my_parcomajella";

// Create connection
$mysqli = new mysqli($servername, 'root', 'root', $dbname);

//$query = "SELECT *  FROM  PERCORSO  WHERE DIFFICOLTA='".$_POST['diff']."'";
$query="SELECT ID, NOME FROM PERCORSO WHERE 1";
$result = $mysqli->query($query);
$array = array();
    while($row = mysqli_fetch_array($result)) {
        array_push($array, $row);
       echo explode(" ",$array);
    }
    echo json_encode(array_values($array));;
$mysqli->close();
?>