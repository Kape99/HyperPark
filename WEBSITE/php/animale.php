<?php
   // 1. Create a database connection
  $dbhost = "localhost";
  $dbuser = "root";
  $dbpass = "root";
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
  
  $nome = $_GET['nome'];
  $query="SELECT * FROM ANIMALE WHERE NOME='".$nome."'";
  $queryfoto = "SELECT * FROM FOTO WHERE NOME LIKE '%".$nome."%'";
  $querypercorso ="SELECT percorso FROM PERCORSOANIMALE WHERE ANIMALE='".$nome."'";
  //$result = $connection->query($query);
  //var_dump($result);
  // 3. Use returned data (if any)
  $myArray = array();
  if ($result = $connection->query($query)) {
    if ($resultfoto = $connection->query($queryfoto)){
        if($resultpercorso = $connection->query($querypercorso)){
            $row = $result->fetch_array(MYSQLI_BOTH);
            while ($rf = $resultfoto->fetch_array(MYSQLI_BOTH))
            $row['FOTO'][] = $rf;
            $row['PERCORSO']= $resultpercorso->fetch_array(MYSQLI_BOTH);
            echo json_encode($row);
        }
    }
  }
  
  
  // 5. Close database connection
  mysqli_close($connection);
?>