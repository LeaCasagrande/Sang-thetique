<?php
// Les fonctions utilisent des requêtes préparées pour éviter les injections de SQL

// Ajout d'un employé par un administrateur
function ajoutPersonnel($bdd,$prenom_personnel,$nom_personnel,$mail_personnel,$id_equipe,$id_poste,$id_image)
{
    try{
        $req = $bdd->prepare("INSERT INTO personnels(prenom_personnel, nom_personnel, mail_personnel, id_equipe, id_poste, id_image)
        values (:prenom_personnel, :nom_personnel, :mail_personnel, :id_equipe, :id_poste, :id_image)");
        $req->execute(array(
            'prenom_personnel' => $prenom_personnel,
            'nom_personnel' => $nom_personnel,
            'mail_personnel' => $mail_personnel,
            'id_equipe' => $id_equipe,
            'id_poste' => $id_poste,
            'id_image' => $id_image
        ));
        $req->closeCursor();
    } catch (Exception $e) {
        die("error : " . $e->getMessage());
    }
}

// Modification des informations d'un employé par un administrateur
function editPersonnel($bdd,$id_personnel,$prenom_personnel,$nom_personnel,$mail_personnel,$id_equipe,$id_poste,$id_image)
{
    try{
        $req = $bdd->prepare("UPDATE personnels
        set prenom_personnel = :prenom_personnel, nom_personnel = :nom_personnel, mail_personnel = :mail_personnel, id_equipe = :id_equipe, id_poste = :id_poste, id_image = :id_image
        where id_personnel = :id_personnel");
        $req->execute(array(
            'id_personnel' => $id_personnel,
            'prenom_personnel' => $prenom_personnel,
            'nom_personnel' => $nom_personnel,
            'mail_personnel' => $mail_personnel,
            'id_equipe' => $id_equipe,
            'id_poste' => $id_poste,
            'id_image' => $id_image
        ));
        $req->closeCursor();
    } catch (Exception $e) {
        die("error : " . $e->getMessage());
    }
}

// Modification du nom d'une équipe par un administrateur
function editEquipe($bdd,$id_equipe,$nom_equipe)
{
    try{
        $req = $bdd->prepare("UPDATE equipes
        set nom_equipe=:nom_equipe
        where id_equpe=:id_equipe");
        $req->execute(array(
            'id_equipe' => $id_equipe,
            'nom_equipe' => $nom_equipe
        ));
        $req->closeCursor();
    } catch (Exception $e) {
        die("error : " . $e->getMessage());
    }
}

// Suppression d'un employé par un administrateur
function supprPersonnel($bdd,$id_personnel)
{
    try{
        $req = $bdd->prepare("DELETE FROM personnels
        where exists (SELECT * from personnels WHERE id_personnel=:id_personnel) AND id_personnel=:id_personnel");
        $req->execute(array(
            'id_personnel' => $id_personnel
        ));
        $req->closeCursor();
    } catch (Exception $e) {
        die("error : " . $e->getMessage());
    }
}

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