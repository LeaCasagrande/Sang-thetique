<h3 id="titreContact">Contactez-nous</h3>

<div class="container-fluid contact">
    <form method="POST" action="controller_contact.php" enctype="multipart/form-data">
        <div class="row">
            <div class="col-12 col-md-6 mb-2">
                <label for="nom">Votre nom <span class="star">*</span></label>
                <input type="text" class="form-control" name="nom" placeholder="Dupont" required>
            </div>
            <div class="col-12 col-md-6 mb-2">
                <label for="prenom">Votre prénom</label>
                <input type="text" class="form-control" name="prenom" placeholder="Jean">
            </div>
        </div>
        <div class="form-group mb-2">
            <label for="mail">Votre adresse e-mail <span class="star">*</span></label>
            <input type="email" class="form-control" name="mail" placeholder="dupont.jean@gmail.com" required>
        </div>
        <label for="sujet" class="form-label">Sujet de votre demande <span class="star">*</span></label>
        <select class="form-select mb-2" aria-label="Default select example" name="sujet">
            <option selected>Veuillez sélectionner une option</option>
            <option value="1">Demande d'informations</option>
            <option value="2">Candidature</option>
            <option value="3">Autre</option>
        </select>
        <div class="form-group mb-2">
            <label for="message" class="form-label">Votre message <span class="star">*</span></label>
            <textarea class="form-control" name="message" rows="5" required></textarea>
        </div>
        <!-- <div class="mb-3">
            <label for="fichier" class="form-label">Votre fichier</label>
            <input class="form-control" type="file" name="fichier">
        </div> -->

        <button type="button submit" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalMessage">Envoyer</button>

        <!-- <div class="modal" id="modalMessage" tabindex="-1" aria-labelledby="merci" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="merci">Merci de votre message</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p>Merci pour votre message.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fermer</button>
                    </div>
                </div>
            </div>
        </div> -->

    </form>
</div>