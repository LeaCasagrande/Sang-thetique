<?php
//Connexion à la base de données Sangthetique
$bdd = new PDO("mysql:host=localhost;dbname=sangthetique", "root","",array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
?>