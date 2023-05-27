<?php
// On se connecte à la BDD
include('../model/connect.php');
// On inclue la vue du header
include('../view/header.php');
?>

<?php
// On inclue les modèles
include('../model/model_get.php');
include('../model/model_set.php');
// On inclue la vue de la page
include('../view/contact.php');

if(isset($_POST['nom']) && !empty($_POST['nom']) && !empty($_POST['mail']) && !empty($_POST['message'])){
    // On récupère les données saisies et le datetime
    $date = date('Y-m-d h:i:s');
    extract($_POST);

    // On insère dans la BDD
    ajoutContact($bdd,$nom,$prenom,$mail,$sujet,$message,$date);
}

// On inclue la vue du footer
include('../view/footer.php');
?>