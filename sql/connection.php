<?php
	$server = "localhost";
	$username = "root";
	$password = "";
	$dbname = "perso";

	$bdd = new mysqli($server, $username, $password, $dbname);
	
	if($bdd->connect_error){
		die("Un problème est survenue lors de la récupération des données.");
	}
?>