<!-- Bannière  -->
<div class="banniere">
    <img class="imgequipe" src="../../ressources/mission3.jpg" alt="">
    <h1 class="nomequipe">Annuaire</h1>
</div>

<!-- Annuaire -->
<div class="part">
    <div class="table-responsive">
        <table id="mytable" class="table table-striped">
            <thead>
                <tr>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Email</th>
                    <th>Équipe</th>
                    <th>Poste</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($employe = $employes->fetch(PDO::FETCH_ASSOC)) { ?>
                    <tr class="data-row">
                        <td><?php echo $employe["nom_personnel"]; ?></td>
                        <td><?php echo $employe["prenom_personnel"]; ?></td>
                        <td><a href="mailto:<?php echo $employe["mail_personnel"]; ?>"><?php echo $employe["mail_personnel"]; ?></a></td>
                        <td><?php echo $employe["nom_equipe"]; ?></td>
                        <td><?php echo $employe["nom_poste"]; ?></td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>

</div>