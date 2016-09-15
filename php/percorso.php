<?php
   // 1. Create a database connection
  $dbhost = "localhost";
  $dbuser = "root";
  $dbpass = "";
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
  
  $nome = $_GET['id'];
  $val="";
  $query="SELECT * FROM PERCORSO WHERE ID='".$nome."'";
  if ($result = $connection->query($query)) {
    $row = $result->fetch_array(MYSQLI_ASSOC);
    echo json_encode($row);
  }
  
  // 5. Close database connection
  mysqli_close($connection);
?>