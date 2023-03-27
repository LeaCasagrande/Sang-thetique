<!-- <img class="bgContact" src="../../ressources/pexels-edward-jenner-4031440.jpg" alt=""> -->
<div>
    <h2 id="titreContact">Nous contacter</h2>

    <div class="container contact">
        <div class="formulaire">
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
            </form>
        </div>

        <div id="map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d46219.888784987095!2d1.3312392582031358!3d43.6118914!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12aebade5e028e47%3A0x42c050f797263364!2zRMOpbMOpZ2F0aW9uIHLDqWdpb25hbGUgSW5zZXJtIE9jY2l0YW5pZSBQeXLDqW7DqWVz!5e0!3m2!1sfr!2sfr!4v1679487540232!5m2!1sfr!2sfr" width="100%" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>

    </div>
</div>