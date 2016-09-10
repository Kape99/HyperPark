<?php


    function dbconnect() {
        $dbhost = "localhost";
        $dbuser = "parcomajella";
        $dbpass = "capeculo0";
        $dbname = "my_parcomajella";
        $connection = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
        // Test if connection succeeded
        if(mysqli_connect_errno()) {
          die("Database connection failed: " . 
               mysqli_connect_error() . 
               " (" . mysqli_connect_errno() . ")"
          );
        }
    }
    
    function dbdisconnet() {
         mysqli_close($connection);
    }
?>
