<!-- Bannière équipe -->
<div class="banniere">
    <img class="imgequipe" src="../../ressources/<?php echo $photo[0]['url_image'] ?>" alt="">
    <h1 class="nomequipe">Equipe <?php echo $membres[0]['id_equipe'] ?> : <?php echo $membres[0]['nom_equipe'] ?></h1>
</div>

<!-- Projet -->
<div class="part">
    <h2>Projets de recherche</h2>
    <?php foreach ($projets as $projet) : ?>
        <div class="projet">
            <h4><?php echo $projet['titre_projet'] ?></h4>
            <p><?php echo $projet['desc_projet'] ?></p>
        </div>
    <?php endforeach ?>
</div>

<!-- Membres -->
<div class="part fonce">
    <h2>Membres</h2>
    <div class="container-fluid cards">
        <?php foreach ($membres as $data) : ?>
            <div class="card" style="width: 15rem;">
                <img src="../../ressources/<?php echo $data['url_image'] ?>" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"><?php echo $data['prenom_personnel'] . " " . $data['nom_personnel'] ?></h5>
                    <p class="card-text"><?php echo $data['nom_poste'] ?></p>
                </div>
            </div>
        <?php endforeach ?>
    </div>
</div>