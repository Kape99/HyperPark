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
  $query="SELECT * FROM FOTO";

 $myArray = array();
  if ($result = $connection->query($query)) {

    while($row = mysqli_fetch_array($result)) {
            $myArray[] = $row;
    }
    echo json_encode($myArray);
   
  }

  // 5. Close database connection
  mysqli_close($connection);
?>