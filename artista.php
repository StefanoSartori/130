<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Artisti</title>
  </head>
  <body>


<?php

$conn= mysqli_connect("localhost","root","","serena");

  if(!$conn){
    echo "errore di connessione";
    exit();
  }


  $query_artist="SELECT artista from song ORDER BY artista";

  $ris_artist=mysqli_query($conn, $query_artist);
  if (!$query_artist){
    echo "errore di query1";
  }



$n=mysql_num_rows($ris_artist);

if ($n>0) {
  echo "<table>";
  while ($linea=mysqli_fetch_array($ris_artist)) {
     echo "<tr>";
     echo "<td>".$linea['artista']."</td>";
     echo "</tr>";
  }
  echo "</tabel>";
}
else {
  echo "artista non trovato";
}

mysqli_close($conn);
 ?>


  </body>
</html>
