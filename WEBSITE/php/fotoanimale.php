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
  
  
  $nome = $_GET['nome'];
  $query="SELECT * FROM FOTO WHERE NOME LIKE '%".$nome."%'";
  //$result = $connection->query($query);
  //var_dump($result);
  // 3. Use returned data (if any)
  $myArray = array();
  if ($result = $connection->query($query)) {

    while($row = $result->fetch_array(MYSQL_ASSOC)) {
            $myArray[] = $row;
    }
    echo json_encode($myArray);
  }
  
  
  
  
  
   // 5. Close database connection
  mysqli_close($connection);
?>