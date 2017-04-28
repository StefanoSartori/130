
<?php

session_start();

$servername="localhost";
$us="root";
$pw="";
$dbname="130";
$tbl_name="utenti";
//prendo i nomi dai form
$user=$_POST["user"];
$pwd=$_POST["pwd"];

$connessione = mysqli_connect("$servername","$us","$pw","$dbname") or die("cannot connect");
$conn_db=mysqli_select_db($conn, $dbname) or die("cannat select DB");

if(isset($user) && (isset($pwd))){

$_SESSION["user"]=$user;
$_SESSION["pwd"]=$pwd; /*associo user e pass inserita ad una variabile della sessione*/

$query=mysqli_query($conn, "SELECT * FROM utenti WHERE username = '".$user."' AND pwd = '".$pwd."'")
or DIE("query non riuscita".mysql_error());

if(mysql_num_rows($query)){

  $row=mysqli_fetch_assoc($query); //se c'è qualccuno con sti dati metto i risultati dentro la variable row
  $_SESSION["logged"] =true; //nella variabile session associo treu al valore logged
  header("location:./Spotify.html"); //se connesso reindirizzamenro a pagina di benvenuto
}
else{
  header ("location:./login.html");
}
}

?>
