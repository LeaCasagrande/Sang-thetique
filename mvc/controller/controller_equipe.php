<?php
// On se connecte à la BDD
include('../model/connect.php');
// On inclue la vue du header
include('../view/header.php');
// On inclue le modèle contenant les fonctions GET
include('../model/model_get.php');

if (isset($_GET['equipe'])) {
    $equipe = $_GET['equipe'];
    $membres = getEmployeesByTeam($bdd,$equipe);
    $membres = $membres->fetchAll();
    $photo = getImageByTeam($bdd,$equipe);
    $photo = $photo->fetchAll();
    $projets = getProjectsByTeam($bdd,$equipe);
    $projets = $projets->fetchAll();
}

// On inclue la vue de la page
include('../view/page_equipe.php');
// On inclue la vue du footer
include('../view/footer.php');
?>