-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour cinema
CREATE DATABASE IF NOT EXISTS `cinema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cinema`;

-- Listage de la structure de table cinema. acteur
CREATE TABLE IF NOT EXISTS `acteur` (
  `id_acteur` int NOT NULL AUTO_INCREMENT,
  `id_personne` int NOT NULL,
  PRIMARY KEY (`id_acteur`),
  UNIQUE KEY `id_personne` (`id_personne`),
  CONSTRAINT `acteur_ibfk_1` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table cinema.acteur : ~16 rows (environ)
INSERT INTO `acteur` (`id_acteur`, `id_personne`) VALUES
	(1, 2),
	(2, 3),
	(3, 4),
	(4, 5),
	(5, 7),
	(6, 8),
	(7, 9),
	(8, 12),
	(9, 13),
	(10, 14),
	(11, 16),
	(12, 17),
	(13, 18),
	(14, 20),
	(15, 21),
	(16, 22);

-- Listage de la structure de table cinema. film
CREATE TABLE IF NOT EXISTS `film` (
  `id_film` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(50) NOT NULL,
  `annee_sortie` int NOT NULL,
  `duree` int NOT NULL,
  `affiche` varchar(255) NOT NULL,
  `synopsis` text NOT NULL,
  `note` int NOT NULL,
  `id_realisateur` int NOT NULL,
  PRIMARY KEY (`id_film`),
  KEY `id_realisateur` (`id_realisateur`),
  CONSTRAINT `film_ibfk_1` FOREIGN KEY (`id_realisateur`) REFERENCES `realisateur` (`id_realisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table cinema.film : ~5 rows (environ)
INSERT INTO `film` (`id_film`, `titre`, `annee_sortie`, `duree`, `affiche`, `synopsis`, `note`, `id_realisateur`) VALUES
	(2, 'Seven', 1995, 127, 'https://www.ecranlarge.com/uploads/image/001/121/mohx8jgzideamlj1cqdzclyhmry-823.jpg', 'Pour conclure sa carrière, l\'inspecteur Somerset, vieux flic blasé, tombe à sept jours de la retraite sur un criminel peu ordinaire. John Doe, c\'est ainsi que se fait appeler l\'assassin, a decidé de nettoyer la societé des maux qui la rongent en commettant sept meurtres basés sur les sept pechés capitaux: la gourmandise, l\'avarice, la paresse, l\'orgueil, la luxure, l\'envie et la colère.', 5, 1),
	(3, 'Ronin', 1998, 122, 'https://www.ecranlarge.com/uploads/image/001/194/yizrjdzt8yy8bfvmwwq7udk1ldp-568.jpg', 'Cinq hommes et une femme qui ne se connaissent pas se rencontrent dans un entrepôt de la banlieue parisienne. Ces hommes de l\'ombre sont d\'anciens soldats de la guerre froide qui survivent en louant discrètement leurs services à des commanditaires anonymes. La jeune Irlandaise qui les a réunis manque d\'experience. Leur mission est d\'affronter une équipe adverse, solidement armée d\'une douzaine d\'hommes pour lui arracher une précieuse mallette dont ils ignorent le contenu. Une chose est claire : tous devront tuer pour mener à bien leur mission, certains y laisseront leur peau.', 5, 2),
	(5, 'Intouchable', 2011, 112, 'https://lavisduneophyte.files.wordpress.com/2022/02/f2b7c-intouchables-poster.jpg', 'A la suite d’un accident de parapente, Philippe, riche aristocrate, engage comme aide à domicile Driss, un jeune de banlieue tout juste sorti de prison. Bref la personne la moins adaptée pour le job. Ensemble ils vont faire cohabiter Vivaldi et Earth Wind and Fire, le verbe et la vanne, les costumes et les bas de survêtement... Deux univers vont se télescoper, s’apprivoiser, pour donner naissance à une amitié aussi dingue, drôle et forte qu’inattendue, une relation unique qui fera des étincelles et qui les rendra... Intouchables.', 4, 3),
	(7, 'La légende de Zorro', 2005, 130, 'https://www.ecranlarge.com/uploads/image/001/199/siubihfeqqjgnjsijtvhdzqq7p7-126.jpg', 'En 1850, la Californie aspire à devenir le 31e Etat de l\'Union, mais les membres de la mystérieuse confrérie médiévale des Chevaliers d\'Aragon sont décidés à l\'en empêcher par tous les moyens... Les paysans doivent aussi se défendre contre Jacob McGivens, qui s\'empare de leurs terres par la force. Seul Zorro pourrait intervenir...\r\n\r\nJoaquin, le fils de Don Alejandro de la Vega et de son épouse Elena, a aujourd\'hui 10 ans et ignore tout de l\'identité secrète de son père. Elena voudrait qu\'Alejandro abandonne ses activités de justicier pour se consacrer enfin à sa famille. Lorsque face à l\'urgence, il décide néanmoins d\'enfiler le légendaire masque de Zorro, Elena se sent trahie et demande le divorce.\r\n\r\nArmand, un aristocrate français qui vient de s\'installer en Californie, en profite pour faire la cour à la jeune femme... tout en continuant à diriger secrètement les Chevaliers d\'Aragon...', 3, 5),
	(8, 'Hitman', 2007, 92, 'https://www.ecranlarge.com/films/846066-hitman/photos', 'Crâne rasé, code barre tatoué sur la nuque, costume noir, chemise blanche et cravate rouge : l\'agent 47 est le plus mystérieux et le plus insaisissable des tueurs professionnels. Réputé pour la minutie avec laquelle il va jusqu\'au bout de ses missions, il obéit toujours à un protocole strict : extrême vigilance, extrême discrétion et extrême soin apporté à l\'exécution de ses contrats. Patience et détermination sont ses deux armes de prédilection. Rien ne l\'arrête. Sa signature : l\'absence de preuves. Sa spécialité : disparaître sitôt sa mission accomplie. Un vrai fantôme, obligé de se découvrir le jour où Belicoff, candidat aux élections russes, lui tend un piège. Avec Interpol, les services secrets russes et trois tueurs de sa propre agence à ses trousses, l\'agent 47 est contraint de briser son propre protocole pour mener à bien sa mission...', 3, 6);

-- Listage de la structure de table cinema. genre_film
CREATE TABLE IF NOT EXISTS `genre_film` (
  `id_genre` int NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id_genre`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table cinema.genre_film : ~10 rows (environ)
INSERT INTO `genre_film` (`id_genre`, `libelle`) VALUES
	(1, 'Drame'),
	(2, 'Policier'),
	(3, 'Thriller'),
	(4, 'Aventure'),
	(5, 'Science fiction'),
	(6, 'Manga'),
	(7, 'Action'),
	(8, 'Espionnage'),
	(9, 'Comedie'),
	(10, 'Biopic');

-- Listage de la structure de table cinema. jouer
CREATE TABLE IF NOT EXISTS `jouer` (
  `id_film` int NOT NULL,
  `id_acteur` int NOT NULL,
  `id_role` int NOT NULL,
  PRIMARY KEY (`id_film`,`id_acteur`,`id_role`),
  KEY `id_acteur` (`id_acteur`),
  KEY `id_role` (`id_role`),
  CONSTRAINT `jouer_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`),
  CONSTRAINT `jouer_ibfk_2` FOREIGN KEY (`id_acteur`) REFERENCES `acteur` (`id_acteur`),
  CONSTRAINT `jouer_ibfk_3` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table cinema.jouer : ~16 rows (environ)
INSERT INTO `jouer` (`id_film`, `id_acteur`, `id_role`) VALUES
	(2, 1, 3),
	(2, 2, 1),
	(2, 3, 2),
	(2, 4, 4),
	(3, 5, 5),
	(3, 6, 6),
	(3, 7, 7),
	(5, 8, 8),
	(5, 9, 9),
	(5, 10, 10),
	(7, 11, 11),
	(7, 12, 12),
	(7, 13, 13),
	(7, 14, 14),
	(7, 15, 15),
	(7, 16, 16);

-- Listage de la structure de table cinema. personne
CREATE TABLE IF NOT EXISTS `personne` (
  `id_personne` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `sexe` varchar(50) NOT NULL,
  `date_naissance` date NOT NULL,
  PRIMARY KEY (`id_personne`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table cinema.personne : ~22 rows (environ)
INSERT INTO `personne` (`id_personne`, `nom`, `prenom`, `sexe`, `date_naissance`) VALUES
	(1, 'Fincher', 'David', 'Masculin', '1962-08-28'),
	(2, 'Freeman', 'Morgan', 'Masculin', '1937-06-01'),
	(3, 'Pitt', 'Brad', 'Masculin', '1963-12-18'),
	(4, 'Paltrow', 'Gwyneth', 'Féminin', '1972-09-27'),
	(5, 'Spacey', 'Kevin', 'Masculin', '1959-07-26'),
	(6, 'Frankenheimer', 'John', 'Masculin', '1930-02-19'),
	(7, 'De Niro', 'Robert', 'Masculin', '1943-08-17'),
	(8, 'Reno', 'Jean', 'Masculin', '1948-07-30'),
	(9, 'McElhone', 'Natascha', 'Feminin', '1969-12-14'),
	(10, 'Toledano', 'Eric', 'Masculin', '1971-07-03'),
	(11, 'Nakache', 'Olivier', 'Masculin', '1973-04-15'),
	(12, 'Cluzet', 'François', 'Masculin', '1955-09-21'),
	(13, 'Sy', 'Omar', 'Masculin', '1978-01-20'),
	(14, 'Le Ny', 'Anne', 'Feminin', '1969-12-31'),
	(15, 'Campbell', 'Martin', 'Masculin', '1943-10-24'),
	(16, 'Banderas', 'Antonio', 'Masculin', '1960-08-10'),
	(17, 'Zeta-jones', 'Chatherine', 'Feminin', '1969-09-25'),
	(18, 'Sewell', 'Rufus', 'Masculin', '1967-10-29'),
	(19, 'Gens', 'Xavier', 'Masculin', '1975-04-27'),
	(20, 'Olyphant', 'Timothy', 'Masculin', '1968-05-20'),
	(21, 'Dougray', 'Scott', 'Masculin', '1965-11-25'),
	(22, 'Kurylenko', 'Olga', 'Feminin', '1979-11-14');

-- Listage de la structure de table cinema. realisateur
CREATE TABLE IF NOT EXISTS `realisateur` (
  `id_realisateur` int NOT NULL AUTO_INCREMENT,
  `id_personne` int NOT NULL,
  PRIMARY KEY (`id_realisateur`),
  UNIQUE KEY `id_personne` (`id_personne`),
  CONSTRAINT `realisateur_ibfk_1` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table cinema.realisateur : ~6 rows (environ)
INSERT INTO `realisateur` (`id_realisateur`, `id_personne`) VALUES
	(1, 1),
	(2, 6),
	(3, 10),
	(4, 11),
	(5, 15),
	(6, 19);

-- Listage de la structure de table cinema. role
CREATE TABLE IF NOT EXISTS `role` (
  `id_role` int NOT NULL AUTO_INCREMENT,
  `nom_role` varchar(50) NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table cinema.role : ~16 rows (environ)
INSERT INTO `role` (`id_role`, `nom_role`) VALUES
	(1, 'David Mills'),
	(2, 'Tracy Mills'),
	(3, 'William Somerset'),
	(4, 'John Doe'),
	(5, 'Sam'),
	(6, 'Vincent'),
	(7, 'Deirdre'),
	(8, 'Philippe'),
	(9, 'Driss'),
	(10, 'Yvonne'),
	(11, 'Agent 47'),
	(12, 'Mike Whittier'),
	(13, 'Nika Boronina'),
	(14, 'Zorro'),
	(15, 'Elena de La Vega'),
	(16, 'Armand');

-- Listage de la structure de table cinema. typer
CREATE TABLE IF NOT EXISTS `typer` (
  `id_film` int NOT NULL,
  `id_genre` int NOT NULL,
  PRIMARY KEY (`id_film`,`id_genre`),
  KEY `id_genre` (`id_genre`),
  CONSTRAINT `typer_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`),
  CONSTRAINT `typer_ibfk_2` FOREIGN KEY (`id_genre`) REFERENCES `genre_film` (`id_genre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table cinema.typer : ~10 rows (environ)
INSERT INTO `typer` (`id_film`, `id_genre`) VALUES
	(2, 1),
	(5, 1),
	(2, 2),
	(3, 2),
	(2, 3),
	(3, 3),
	(3, 7),
	(3, 8),
	(5, 9),
	(5, 10);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
