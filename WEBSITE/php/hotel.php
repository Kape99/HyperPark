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
  
  $id = $_GET['id'];
  
  $query="SELECT * FROM HH WHERE ID='".$id."'";
  if ($result = $connection->query($query)) {
    $row = $result->fetch_array(MYSQLI_ASSOC);
    echo json_encode($row);
  }
  
  // 5. Close database connection
  mysqli_close($connection);
?>