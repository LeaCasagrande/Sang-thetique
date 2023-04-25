-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 25 avr. 2023 à 10:32
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sangthetique`
--

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id_contact` int(11) NOT NULL,
  `nom_contact` varchar(50) NOT NULL,
  `prenom_contact` varchar(50) DEFAULT NULL,
  `email_contact` varchar(100) NOT NULL,
  `sujet_contact` int(11) NOT NULL,
  `message_contact` text NOT NULL,
  `date_contact` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id_contact`, `nom_contact`, `prenom_contact`, `email_contact`, `sujet_contact`, `message_contact`, `date_contact`) VALUES
(1, 'gfhfhf', '', 'yjrthrhrtrth@likhkhkjh.fr', 0, 'yhghghghghghghghghgh', '2023-03-28 04:23:35'),
(2, 'gfhfhf', '', 'yjrthrhrtrth@likhkhkjh.fr', 0, 'yhghghghghghghghghgh', '2023-03-28 04:24:09');

-- --------------------------------------------------------

--
-- Structure de la table `equipes`
--

CREATE TABLE `equipes` (
  `id_equipe` int(11) NOT NULL,
  `nom_equipe` varchar(50) NOT NULL,
  `id_image` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `equipes`
--

INSERT INTO `equipes` (`id_equipe`, `nom_equipe`, `id_image`) VALUES
(1, 'Globules rouges', 28),
(2, 'Globules blancs', 29),
(3, 'Plasma et plaquettes', 30);

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE `images` (
  `id_image` int(11) NOT NULL,
  `nom_image` varchar(50) NOT NULL,
  `url_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`id_image`, `nom_image`, `url_image`) VALUES
(1, 'personnel1', 'personnel1.jpg'),
(2, 'personnel2', 'personnel2.jpg'),
(3, 'personnel3', 'personnel3.jpg'),
(4, 'personnel4', 'personnel4.jpg'),
(5, 'personnel5', 'personnel5.jpg'),
(6, 'personnel6', 'personnel6.jpg'),
(7, 'personnel7', 'personnel7.jpg'),
(8, 'personnel8', 'personnel8.jpg'),
(9, 'personnel9', 'personnel9.jpg'),
(10, 'personnel10', 'personnel10.jpg'),
(11, 'personnel11', 'personnel11.jpg'),
(12, 'personnel12', 'personnel12.jpg'),
(13, 'personnel13', 'personnel13.jpg'),
(14, 'personnel14', 'personnel14.jpg'),
(15, 'personnel15', 'personnel15.jpg'),
(16, 'personnel16', 'personnel16.jpg'),
(17, 'personnel17', 'personnel17.jpg'),
(18, 'personnel18', 'personnel18.jpg'),
(19, 'personnel19', 'personnel19.jpg'),
(20, 'personnel20', 'personnel20.jpg'),
(21, 'personnel21', 'personnel21.jpg'),
(22, 'personnel22', 'personnel22.jpg'),
(23, 'personnel23', 'personnel23.jpg'),
(24, 'personnel24', 'personnel24.jpg'),
(25, 'personnel25', 'personnel25.jpg'),
(26, 'personnel26', 'personnel26.jpg'),
(27, 'personnel27', 'personnel27.jpg'),
(28, 'team1', 'team1.jpg'),
(29, 'team2', 'team2.jpg'),
(30, 'team3', 'team3.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `personnels`
--

CREATE TABLE `personnels` (
  `id_personnel` int(11) NOT NULL,
  `nom_personnel` varchar(50) NOT NULL,
  `prenom_personnel` varchar(50) NOT NULL,
  `mail_personnel` varchar(100) NOT NULL,
  `id_equipe` int(11) DEFAULT NULL,
  `id_poste` int(11) DEFAULT NULL,
  `id_image` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `personnels`
--

INSERT INTO `personnels` (`id_personnel`, `nom_personnel`, `prenom_personnel`, `mail_personnel`, `id_equipe`, `id_poste`, `id_image`) VALUES
(1, 'Suchet', 'Diane', 'suchet.diane@sangthetique.fr', 1, 1, 26),
(2, 'Blanchard', 'Stéphanie', 'blanchard.stephanie@sangthetique.fr', 1, 2, 5),
(3, 'Dumont', 'Jérôme', 'dumont.jerome@sangthetique.fr', 1, 2, 15),
(4, 'Charbonneau', 'Margot', 'charbonneau.margot@sangthetique.fr', 1, 4, 12),
(5, 'Etienne', 'Adrien', 'etienne.adrien@sangthetique.fr', 1, 4, 16),
(6, 'Vidal', 'Marlène', 'vidal.marlene@sangthetique.fr', 1, 5, 10),
(7, 'Coulomb', 'Jean-Luc', 'coulomb.jeanluc@sangthetique.fr', 1, 6, 23),
(8, 'Moineau', 'Thomas', 'moineau.thomas@sangthetique.fr', 1, 7, 22),
(9, 'Marcelli', 'Vittoria', 'marcelli.vittoria@sangthetique.fr', 1, 7, 20),
(10, 'Alarie', 'Océane', 'alarie.oceane@sangthetique.fr', 1, 8, 4),
(11, 'Beauregard', 'Eric', 'beauregard.eric@sangthetique.fr', 2, 1, 1),
(12, 'Lortie', 'Irène', 'lortie.irene@sangthetique.fr', 2, 2, 8),
(13, 'Dujardin', 'Florent', 'dujardin.florent@sangthetique.fr', 2, 3, 2),
(14, 'Reverdin', 'Chantal', 'reverdin.chantal@sangthetique.fr', 2, 4, 14),
(15, 'Barbier', 'Ludovic', 'barbier.ludovic@sangthetique.fr', 2, 5, 9),
(16, 'Portier', 'Valentine', 'portier.valentine@sangthetique.fr', 2, 6, 7),
(17, 'Mayrhofer', 'Andrej', 'mayrhofer.andrej@sangthetique.fr', 2, 7, 18),
(18, 'Demaret', 'Killian', 'demaret.killian@sangthetique.fr', 2, 8, 21),
(19, 'Micheaux', 'Corinne', 'micheaux.corinne@sangthetique.fr', 3, 1, 25),
(20, 'Bello', 'Sébastien', 'bello.sebastien@sangthetique.fr', 3, 2, 17),
(21, 'Allard', 'Françoise', 'allard.francoise@sangthetique.fr', 3, 2, 27),
(22, 'Brunet', 'Edouard', 'brunet.edouard@sangthetique.fr', 3, 4, 11),
(23, 'Jacquet', 'Fabien', 'jacquet.fabien@sangthetique.fr', 3, 4, 3),
(24, 'Toussaint', 'Nicolas', 'toussaint.nicolas@sangthetique.fr', 3, 5, 24),
(25, 'Lavaud', 'Alexandrine', 'lavaud.alexandrine@sangthetique.fr', 3, 6, 19),
(26, 'Piaget', 'Pauline', 'piaget.pauline@sangthetique.fr', 3, 6, 6),
(27, 'Rodriguez', 'Matthieu', 'rodriguez.matthieu@sangthetique.fr', 3, 7, 13);

-- --------------------------------------------------------

--
-- Structure de la table `postes`
--

CREATE TABLE `postes` (
  `id_poste` int(11) NOT NULL,
  `nom_poste` varchar(50) NOT NULL,
  `grade_poste` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `postes`
--

INSERT INTO `postes` (`id_poste`, `nom_poste`, `grade_poste`) VALUES
(1, 'Responsable d\'équipe', 1),
(2, 'Chargé(e) de recherche', 5),
(3, 'Ingénieur(e) de recherche', 10),
(4, 'Ingénieur(e) d\'études', 15),
(5, 'Assistant(e) ingénieur', 20),
(6, 'Technicien(ne) de recherche', 25),
(7, 'Doctorant(e)', 30),
(8, 'Stagiaire', 35);

-- --------------------------------------------------------

--
-- Structure de la table `projets`
--

CREATE TABLE `projets` (
  `id_projet` int(11) NOT NULL,
  `titre_projet` varchar(255) NOT NULL,
  `desc_projet` text DEFAULT NULL,
  `id_equipe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `projets`
--

INSERT INTO `projets` (`id_projet`, `titre_projet`, `desc_projet`, `id_equipe`) VALUES
(1, 'Ingénierie de globules rouges synthétiques à partir de cellules souches hématopoïétiques', 'La production de globules rouges synthétiques à partir de cellules souches pluripotentes induites (iPS) est une approche prometteuse pour pallier le manque de dons de sang et pour éviter la transmission de maladies infectieuses. Cependant, la production de globules rouges synthétiques à partir d\'iPS reste un défi technique en raison de la difficulté à obtenir des cellules de haute qualité et de leur faible capacité de prolifération. Dans ce projet, nous allons développer des méthodes pour produire des iPS à partir de cellules somatiques et les différencier en précurseurs de globules rouges. Nous utiliserons des techniques de culture en trois dimensions pour favoriser la maturation des précurseurs en globules rouges matures fonctionnels. Nous étudierons également les interactions entre les globules rouges synthétiques et l\'environnement sanguin après leur transfusion, afin d\'optimiser leur fonctionnalité et leur survie. L\'ingénierie de globules rouges synthétiques à partir d\'iPS est une étape importante pour la production de globules rouges à grande échelle et pour fournir une alternative sûre et efficace aux globules rouges provenant de donneurs.', 1),
(2, 'Production d\'hématies encapsulés pour la transfusion sanguine', 'La production de globules rouges synthétiques encapsulés est une approche innovante pour la production de globules rouges à grande échelle. La bio-encapsulation est une technique qui permet d\'encapsuler des cellules dans une membrane semi-perméable, offrant une protection contre les facteurs environnementaux et une libération contrôlée des produits métaboliques. Dans ce projet, nous allons utiliser des cellules souches hématopoïétiques (CSH) pour produire des globules rouges synthétiques encapsulés. Nous utiliserons des membranes semi-perméables de différentes tailles et propriétés pour optimiser la production de globules rouges matures fonctionnels. Nous étudierons également les interactions entre les globules rouges synthétiques encapsulés et l\'environnement sanguin après leur transfusion, afin d\'optimiser leur fonctionnalité et leur survie. La production de globules rouges synthétiques encapsulés représente une avancée majeure dans la production de globules rouges à grande échelle et dans la fourniture d\'une alternative sûre et efficace aux globules rouges provenant de donneurs.', 1),
(3, 'Production de globules blancs synthétiques pour la thérapie cellulaire anticancéreuse', 'La thérapie cellulaire anticancéreuse utilise des cellules immunitaires pour lutter contre les cellules cancéreuses. Cependant, la production de ces cellules à grande échelle pour une utilisation clinique est un défi majeur. La production de globules blancs synthétiques à partir de cellules souches hématopoïétiques (CSH) offre une alternative prometteuse. Dans ce projet, nous allons utiliser des techniques de culture cellulaire et de biologie moléculaire pour différencier les CSH en différents types de globules blancs, y compris les cellules T et les cellules Natural Killer (NK). Nous optimiserons également les protocoles de culture pour produire des globules blancs matures et fonctionnels en grande quantité. Nous étudierons également les interactions entre les globules blancs synthétiques et les cellules cancéreuses in vitro et in vivo, afin d\'optimiser leur efficacité thérapeutique. La production de globules blancs synthétiques pour la thérapie cellulaire anticancéreuse représente une avancée majeure dans le traitement du cancer et peut offrir une alternative plus sûre et plus efficace aux thérapies conventionnelles.', 2),
(4, 'Développement de leucocytes synthétiques à partir de cellules souches pluripotentes induites pour la thérapie de régénération tissulaire', 'Les globules blancs sont des cellules importantes pour le système immunitaire et jouent un rôle essentiel dans la régénération tissulaire. Cependant, la production de ces cellules à grande échelle pour une utilisation clinique est un défi majeur. La production de globules blancs synthétiques à partir de cellules souches pluripotentes induites (iPS) offre une alternative prometteuse. Dans ce projet, nous allons développer des méthodes pour produire des iPS à partir de cellules somatiques et les différencier en différents types de globules blancs, y compris les macrophages et les cellules dendritiques. Nous utiliserons des techniques de culture cellulaire et de biologie moléculaire pour optimiser les protocoles de culture, afin de produire des globules blancs matures et fonctionnels en grande quantité. Nous étudierons également les interactions entre les globules blancs synthétiques et les cellules du tissu environnant, afin de mieux comprendre leur rôle dans la régénération tissulaire. En particulier, nous nous concentrerons sur la régénération tissulaire dans le contexte des maladies inflammatoires chroniques, telles que la maladie de Crohn et la colite ulcéreuse. Nous étudierons les effets des globules blancs synthétiques sur la régulation de l\'inflammation et la cicatrisation des tissus affectés. Nous chercherons également à identifier les marqueurs moléculaires qui peuvent être utilisés pour suivre et quantifier les effets des globules blancs synthétiques dans les tissus.', 2),
(5, 'Développement de plaquettes synthétiques à partir de cellules souches pluripotentes induites pour la thérapie du cancer', 'Les patients atteints de cancer présentent souvent une thrombocytopénie (une faible numération des plaquettes sanguines) en raison des effets secondaires des traitements, tels que la chimiothérapie et la radiothérapie. Les transfusions de plaquettes sont couramment utilisées pour traiter cette complication, mais leur approvisionnement peut être limité et leur utilisation présente des risques pour la santé. Dans ce projet, nous allons développer des plaquettes synthétiques à partir de cellules souches pluripotentes induites (iPS) pour la thérapie du cancer. Nous utiliserons des techniques de culture cellulaire et de biologie moléculaire pour optimiser les protocoles de culture, afin de produire des plaquettes matures et fonctionnelles en grande quantité. Nous évaluerons également l\'efficacité des plaquettes synthétiques en comparant leur capacité à induire l\'hémostase avec les plaquettes conventionnelles provenant de donneurs sains. Nous évaluerons également la sécurité des plaquettes synthétiques en termes d\'effets secondaires, tels que des réactions immunitaires, thrombotiques ou autres, ainsi que la transmission de maladies infectieuses.', 3),
(6, 'Évaluation de l\'efficacité de la transfusion de plasma synthétique chez les patients atteints de brûlures étendues', 'Les brûlures étendues sont une affection traumatique grave qui peut entraîner une perte importante de liquide, de protéines et d\'électrolytes. Les transfusions de plasma sont couramment utilisées dans le traitement de ces patients pour compenser les pertes de liquides et d\'électrolytes, mais leur approvisionnement peut être limité et leur utilisation présente des risques pour la santé. Dans ce projet, nous allons évaluer l\'efficacité et la sécurité de la transfusion de plasma synthétique chez les patients atteints de brûlures étendues. Nous allons développer une méthode de production de plasma synthétique à partir de cellules souches pluripotentes induites (iPS) et l\'évaluer chez des modèles animaux pour déterminer la dose optimale. Nous étudierons ensuite l\'efficacité du plasma synthétique chez les patients atteints de brûlures étendues en comparant les résultats avec ceux des patients ayant reçu du plasma conventionnel provenant de donneurs sains. Nous évaluerons également la sécurité du plasma synthétique en termes d\'effets secondaires, tels que des réactions immunitaires, thrombotiques ou autres, ainsi que la transmission de maladies infectieuses. Nous comparerons les résultats avec ceux des patients ayant reçu du plasma conventionnel provenant de donneurs sains. Le développement de plasma synthétique à partir d\'iPS pour la transfusion sanguine peut offrir une alternative plus sûre et plus efficace aux produits sanguins conventionnels, en particulier dans le traitement des urgences médicales.', 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id_contact`);

--
-- Index pour la table `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`id_equipe`),
  ADD KEY `id_image` (`id_image`);

--
-- Index pour la table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id_image`);

--
-- Index pour la table `personnels`
--
ALTER TABLE `personnels`
  ADD PRIMARY KEY (`id_personnel`),
  ADD KEY `id_equipe` (`id_equipe`),
  ADD KEY `id_poste` (`id_poste`),
  ADD KEY `id_image` (`id_image`);

--
-- Index pour la table `postes`
--
ALTER TABLE `postes`
  ADD PRIMARY KEY (`id_poste`);

--
-- Index pour la table `projets`
--
ALTER TABLE `projets`
  ADD PRIMARY KEY (`id_projet`),
  ADD KEY `id_equipe` (`id_equipe`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `equipes`
--
ALTER TABLE `equipes`
  MODIFY `id_equipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `images`
--
ALTER TABLE `images`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `personnels`
--
ALTER TABLE `personnels`
  MODIFY `id_personnel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `postes`
--
ALTER TABLE `postes`
  MODIFY `id_poste` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `projets`
--
ALTER TABLE `projets`
  MODIFY `id_projet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `equipes`
--
ALTER TABLE `equipes`
  ADD CONSTRAINT `equipes_ibfk_1` FOREIGN KEY (`id_image`) REFERENCES `images` (`id_image`);

--
-- Contraintes pour la table `personnels`
--
ALTER TABLE `personnels`
  ADD CONSTRAINT `personnels_ibfk_1` FOREIGN KEY (`id_equipe`) REFERENCES `equipes` (`id_equipe`),
  ADD CONSTRAINT `personnels_ibfk_2` FOREIGN KEY (`id_poste`) REFERENCES `postes` (`id_poste`),
  ADD CONSTRAINT `personnels_ibfk_3` FOREIGN KEY (`id_image`) REFERENCES `images` (`id_image`);

--
-- Contraintes pour la table `projets`
--
ALTER TABLE `projets`
  ADD CONSTRAINT `projets_ibfk_1` FOREIGN KEY (`id_equipe`) REFERENCES `equipes` (`id_equipe`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
