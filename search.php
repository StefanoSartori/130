<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "serena";

$cerca=$_POST["cerca"];


if(!$conn){
 echo "errore di connessione"; //die ("connection error.mysqli_connect:error()");
  exit();
}


$query_one="SELECT * from song WHERE (canzone LIKE '%' . $cerca . '%') OR (album LIKE '%' . $cerca . '%') OR (artista LIKE '%' . $cerca . '%')";

$ris_one=mysqli_query($conn, $query_one);
if (!$query_one){
echo "errore di query1";
}



$n=mysql_num_rows($ris_one);

if ($n>0) {
echo "$ris_one";

while ($linea=mysqli_fetch_array($ris_one)) {
  echo $linea['canzone']." ".$linea['album']." ".$linea['artista']." ".$linea['durata']." ".$linea['anno'];
 }
}
else {
 echo "Canzone non trovata";
 }

 mysqli_close($conn);
 ?>
