<?php
// Les fonctions utilisent des requêtes préparées pour éviter les injections de SQL

// On affiche les employés par équipe
function getEmployeesByTeam($bdd, $id_equipe)
{
    try {
        $req = $bdd->prepare(
            "SELECT UPPER(nom_personnel) AS nom_personnel, personnels.prenom_personnel, personnels.mail_personnel, equipes.id_equipe, equipes.nom_equipe, postes.nom_poste, images.id_image, images.url_image
                from personnels
                inner join equipes on personnels.id_equipe = equipes.id_equipe
                inner join postes on personnels.id_poste = postes.id_poste
                left join images on personnels.id_image = images.id_image
                where equipes.id_equipe = :id_equipe
                order by grade_poste ASC"
        );
        $req->execute(array(
            'id_equipe' => $id_equipe
        ));
        return $req;
    } catch (Exception $e) {
        die("error : " . $e->getMessage());
    }
}

// On récupère l'image de l'équipe
function getImageByTeam($bdd, $id_equipe)
{
    try {
        $req = $bdd->prepare(
            "SELECT images.url_image
                from images
                inner join equipes on images.id_image = equipes.id_image
                where equipes.id_equipe = :id_equipe"
        );
        $req->execute(array(
            'id_equipe' => $id_equipe
        ));
        return $req;
    } catch (Exception $e) {
        die("error : " . $e->getMessage());
    }
}

// On récupère la liste des employés
function getAllEmployees($bdd)
{
    try {
        $req = $bdd->prepare(
            "SELECT personnels.nom_personnel, personnels.prenom_personnel, personnels.mail_personnel, equipes.nom_equipe, postes.nom_poste
                from personnels
                inner join equipes on personnels.id_equipe = equipes.id_equipe
                inner join postes on personnels.id_poste = postes.id_poste
                order by nom_personnel"
        );
        $req->execute();
        return $req;
    } catch (Exception $e) {
        die("error : " . $e->getMessage());
    }
}

// On récupère la liste de des projets par équipe
function getProjectsByTeam($bdd,$id_equipe)
{
    try {
        $req = $bdd->prepare(
            "SELECT projets.id_projet, projets.titre_projet, projets.desc_projet
                from projets
                inner join equipes on projets.id_equipe = equipes.id_equipe
                where equipes.id_equipe = :id_equipe"
        );
        $req->execute(array(
            'id_equipe' => $id_equipe
        ));
        return $req;
    } catch (Exception $e) {
        die("error : " . $e->getMessage());
    }
}

// On récupère la liste des employés
function getEmployeesByName($bdd, $recherche)
{
    try {
        $req = $bdd->prepare(
            "SELECT personnels.nom_personnel, personnels.prenom_personnel, personnels.mail_personnel, equipes.nom_equipe, postes.nom_poste
                from personnels
                inner join equipes on personnels.id_equipe = equipes.id_equipe
                inner join postes on personnels.id_poste = postes.id_poste
                where nom_personnel like :recherche
                or prenom_personnel like :recherche
                order by nom_personnel"
        );
        $req->execute(array(
            'recherche' => "%$recherche%"
        ));
        return $req;
    } catch (Exception $e) {
        die("error : " . $e->getMessage());
    }
}