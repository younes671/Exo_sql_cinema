SELECT p.nom, p.prenom
FROM personne p
INNER JOIN acteur a ON a.id_personne = p.id_personne
INNER JOIN realisateur r ON r.id_personne = a.id_personne
