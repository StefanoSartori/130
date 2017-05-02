<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Brani</title>
  </head>
  <body>


    <?php

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "serena";

  //Creazione connessione - apre una nuova connessione a MySQL Server
	$conn = mysqli_connect($servername, $username, $password, $dbname);
	// Check connection
	if (!$conn) {
		die("Connection failed: ". mysqli_connect_error());
	}

	$sql = "SELECT canzone, album, artista, durata, anno, link_youtube FROM song";
	$result = mysqli_query($conn, $sql);

	if (mysql_num_rows($result) > 0)
	{
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) {
        echo $row["canzone"]. $row["album"]. $row["artista"]. $row["durata"] . $row["anno"]. $row["link_youtube"];
    }
} else {
    echo "0 results";
}

	mysqli_close($conn);


     ?>


<!--<?php

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
 ?>-->


  </body>
</html>
