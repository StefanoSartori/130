
<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "serena";

$canzone=$_POST["canzone"];
$album=$_POST["album"];
$artista=$_POST["artista"];
$fotoalbum=$_POST["fotoalbum"];
$fotoartista=$_POST["fotoartista"];
$durata=$_POST["durata"];
$anno=$_POST["anno"];
$link_youtube=$_POST["link_youtube"];

if(isset($_POST['inserisci']))//INSERIMENTO NUOVO RECORD
{
	//Creazione connessione - apre una nuova connessione a MySQL Server
	$conn = mysqli_connect($servername, $username, $password, $dbname);
	//Verifica connessione
	if (!$conn) {
		die("Connection failed: " . mysqli_connect_error());
	}

	$sql = "INSERT INTO song (canzone, album, artista, fotoalbum, fotoartista, durata, anno, link_youtube)
		VALUES ('".$canzone."','".$album."','".$artista."','".$fotoalbum."".$fotoartista."','".$durata."','".$anno."','".$link_youtube."');";

	if (mysqli_query($conn, $sql)) {
		echo "Nuovo record creato con successo";
	} else {
		echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}
mysqli_close($conn);
}




 ?>
