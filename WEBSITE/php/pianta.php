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
  
  
  $nome = $_GET['id'];
  $val="";
  $query="SELECT * FROM PIANTA WHERE ID='".$nome."'";
  $query1 = "SELECT NOME FROM PIANTA WHERE ID='".$nome."'";
  
  
  //$result = $connection->query($query);
  //var_dump($result);
  // 3. Use returned data (if any)
  $myArray = array();
  if ($result1 = $connection->query($query1)){
    $val= $result1->fetch_array(MYSQLI_ASSOC);
  }
  $string = implode($val);
  $queryfoto = "SELECT * FROM FOTO WHERE TIPO='PIANTA'";

  $querypercorso ="SELECT percorso FROM PERCORSOPIANTA WHERE pianta='".$string."'";
  if ($result = $connection->query($query)) {
    if ($resultfoto = $connection->query($queryfoto)){
        if($resultpercorso = $connection->query($querypercorso)){
            $row = $result->fetch_array(MYSQLI_ASSOC);
            $stoca = $resultpercorso->fetch_row();
            $string2 = implode($stoca);
            $queriID = "SELECT ID FROM PERCORSO WHERE NOME='".$string2."'";
            if($resultID = $connection->query($queriID)){
                $stica = $resultID->fetch_array(MYSQLI_ASSOC);
                $ret = implode($stica);
                while ($rf = $resultfoto->fetch_array(MYSQLI_ASSOC))
                $row['FOTO'][] = $rf;
                $row['PERCORSO']= $stoca;
                $row['PERCORSOID']= $ret;
                echo json_encode($row);
            }
        }
    }
  }
  
  
  // 5. Close database connection
  mysqli_close($connection);
?>
