<?php
// On se connecte à la BDD
include('../model/connect.php');
// On inclue la vue du header
include('../view/header.php');
// On inclue le modèle contenant les fonctions GET
include('../model/model_get.php');

$employes = getAllEmployees($bdd);

// On inclue la vue de la page
include('../view/page_annuaire.php');
// On inclue la vue du footer
include('../view/footer.php');
?>