<?php
    // 1. Create a database connection
  $dbhost = "ftp.parcomajella.altervista.org";
  $dbuser = "parcomajella";
  $dbpass = "capeculo0";
  $dbname = "my_parcomajella";
  $connection = new mysqli($dbhost, $dbuser, $dbpass, $dbname);
  $connection->set_charset("utf8");
  // Test if connection succeeded
  if(mysqli_connect_errno()) {
    die("Database connection failed: " . 
         mysqli_connect_error() . 
         " (" . mysqli_connect_errno() . ")"
    );
  }

//$query = "SELECT *  FROM  PERCORSO  WHERE DIFFICOLTA='".$_POST['diff']."'";
$query="SELECT ID, NOME FROM PERCORSO WHERE 1";
$result = $mysqli->query($query);
$array = array();
    while($row = mysqli_fetch_array($result, MYSQLI_BOTH)) {
        array_push($array, $row);
       echo explode(" ",$array);
    }
    echo json_encode(array_values($array));;
$mysqli->close();
?>



