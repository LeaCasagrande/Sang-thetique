<?php
// Les fonctions utilisent des requêtes préparées pour éviter les injections de SQL

// Ajout des informations de contact
function ajoutContact($bdd,$nom,$prenom,$mail,$sujet,$message,$date){
    try{
        $req = $bdd->prepare("INSERT INTO contacts(nom_contact,prenom_contact,email_contact,sujet_contact,message_contact,date_contact)
        values (:nom_contact,:prenom_contact,:email_contact,:sujet_contact,:message_contact,:date_contact)");
        $req->execute(array(
            'nom_contact' => $nom,
            'prenom_contact' => $prenom,
            'email_contact' => $mail,
            'sujet_contact' => $sujet,
            'message_contact' => $message,
            'date_contact' => $date
        ));
        $req->closeCursor();
    } catch (Exception $e) {
        die("error : " . $e->getMessage());
    }
}
?>