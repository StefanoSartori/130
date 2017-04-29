<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Album</title>
  </head>

  <body>

    <?php

    $conn= mysqli_connect("localhost","root","","serena");

      if(!$conn){
        echo "errore di connessione";
        exit();
      }


      $query_album="SELECT album, fotoalbum, anno from song ORDER BY album";

      $ris_album=mysqli_query($conn, $query_album);
      if (!$query_album){
        echo "errore di query1";
      }



    $n=mysql_num_rows($ris_album);

    if ($n>0) {
      echo "<table>";
      while ($linea=mysqli_fetch_array($ris_album)) {
         echo "<tr>";
         echo "<td>".$linea['album']."</td>";
         echo "<td> <img src='".$linea['fotoalbum']."'></td>";
         echo "<td>".$linea['anno']."</td>";
         echo "</tr>";
      }
      echo "</tabel>";
    }
    else {
      echo "Album non trovato";
    }

    mysqli_close($conn);
     ?>



  </body>
</html>
