<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Brani</title>
  </head>
  <body>


<?php

$conn= mysqli_connect("localhost","root","","serena");

  if(!$conn){
    echo "errore di connessione";
    exit();
  }


  $query_brani="SELECT * from song";

  $ris_brani=mysqli_query($conn, $query_brani);
  if (!$query_brani){
    echo "errore di query1";
  }



$n=mysql_num_rows($ris_brani);

if ($n>0) {
  echo "<table>";
  while ($linea=mysqli_fetch_array($ris_brani)) {
     echo "<tr>";
     echo "<td>".$linea['canzone']."</td>";
     echo "<td>".$linea['album']."</td>";
     echo "<td>".$linea['artista']."</td>";
     echo "<td>".$linea['durata']."</td>";
     echo "<td>".$linea['anno']."</td>";
     echo "</tr>";
  }
  echo "</tabel>";
}
else {
  echo "Canzone non trovata";
}

mysqli_close($conn);
 ?>


  </body>
</html>
