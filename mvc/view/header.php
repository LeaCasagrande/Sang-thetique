<!DOCTYPE html>
<html lang="fr">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../../bootstrap-5.2.3-dist/css/bootstrap.min.css">
  <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> -->
  <link rel="stylesheet" href="../../css/styleAll.css">
  <title>Sang-thétique</title>

  <!-- favicon -->
  <!-- <link rel="apple-touch-icon" sizes="180x180" href="../../favicon_package_v0.16/apple-touch-icon.png"> -->
  <!-- <link rel="icon" type="image/png" sizes="32x32" href="../../favicon_package_v0.16/favicon-32x32.png"> -->
  <link rel="icon" type="image/png" sizes="16x16" href="../../favicon_package_v0.16/favicon-16x16.png">
  <!-- <link rel="manifest" href="../../favicon_package_v0.16/site.webmanifest"> -->
  <!-- <link rel="mask-icon" href="../../favicon_package_v0.16/safari-pinned-tab.svg" color="#5bbad5"> -->
  <!-- <meta name="msapplication-TileColor" content="#da532c"> -->
  <!-- <meta name="theme-color" content="#ffffff"> -->
</head>

<body>

  <!-- Navigation -->
  <nav class="navbar sticky-top navbar-expand-lg" id="navig">
    <div class="container-fluid">
      <a class="navbar-brand" href="controller_accueil.php">Sang-thétique</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
        aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link mx-2" aria-current="page" href="controller_accueil.php#mission">Notre mission</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link mx-2 dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button"
              data-bs-toggle="dropdown" aria-expanded="false">
              Nos équipes
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <li><a class="dropdown-item" href="controller_equipe.php?equipe=1">Equipe 1 : Globules rouges</a></li>
              <li><a class="dropdown-item" href="controller_equipe.php?equipe=2">Equipe 2 : Globules blancs</a></li>
              <li><a class="dropdown-item" href="controller_equipe.php?equipe=3">Equipe 3 : Plasma et plaquettes</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link mx-2" href="controller_accueil.php#partenaires">Nos partenaires</a>
          </li>
          <li class="nav-item">
            <a class="nav-link mx-2" href="controller_contact.php">Annuaire</a>
          </li>
          <li class="nav-item">
            <a class="nav-link mx-2" href="controller_contact.php">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>