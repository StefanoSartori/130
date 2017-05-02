
 <?php

session_start();
//verifica se nome utente e password sono stati inseriti
if(isset($_POST["user"]) && (isset($_POST["pwd"])))
{
    $username=$_POST["user"];
    $password=$_POST["pwd"];

	if (($username=="Stefano")&&($password=="0987"))//controllo di esempio sull'utente paperino
	{
		$_SESSION["user"]=$user;
		$_SESSION["pwd"]=$pwd;
		//la funzione Header effettua un reindirizzamento ad un'altra pagina
		Header("Location:Inserisci.html");
	}
	else
	{
		echo"Admin o password errati";
	}
}
else
{
	echo"non sei collegato";
}

?>
