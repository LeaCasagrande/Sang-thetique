// ANIMATION GROUPES SANGUINS
let donneurs = document.querySelectorAll('.grpDonneur');
let receveurs = document.querySelectorAll('.grpReceveur');
let reset = document.getElementById('reset');

let compatibilite = {
  'O-': ['O-', 'O+', 'A-', 'A+', 'B-', 'B+', 'AB-', 'AB+'],
  'O+': ['O+', 'A+', 'B+', 'AB+'],
  'A-': ['A+', 'A-', 'AB-', 'AB+'],
  'A+': ['A+', 'AB+'],
  'B-': ['B+', 'B-', 'AB-', 'AB+'],
  'B+': ['B+', 'AB+'],
  'AB-': ['AB+', 'AB-'],
  'AB+': ['AB+']
};

// Mise en évidence des groupes compatibles
donneurs.forEach(function(donneur) {

  // Ecoute du click sur un bouton
  donneur.addEventListener('click', function() {

    // Réinitialiser le style de tous les boutons donneurs
    donneurs.forEach(function(btn) {
      btn.style.backgroundColor = '';
      btn.style.color = '';
    });

    // Changer le style du bouton cliqué
    this.style.backgroundColor = '#c1e8e8';
    this.style.color = '#068585';

    // Appel de la fonction qui met en évidence les compatibilités
    highlightCompatibilite(this);
  });
});

function highlightCompatibilite(donneur) {
  let groupeSanguin = donneur.innerText;
  let compatibles = compatibilite[groupeSanguin];

  receveurs.forEach(function(receveur) {
    if (compatibles.includes(receveur.innerText)) {
      receveur.style.backgroundColor = '#850606';
      receveur.style.color = '#eff0f4';
    } else {
      receveur.style.backgroundColor = '';
    }
  });
}

// Réinitialiser le style de tous les boutons receveurs et donneurs
reset.addEventListener("click", function() {
  receveurs.forEach(function(receveur) {
      receveur.style.backgroundColor = '';
      receveur.style.color = '';
  });

  donneurs.forEach(function(donneur) {
    donneur.style.backgroundColor = '';
    donneur.style.color = '';
  });
});