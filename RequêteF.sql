SELECT f.titre, p.nom, p.prenom, p.sexe
FROM film f
INNER JOIN jouer j ON j.id_film = f.id_film
INNER JOIN acteur a ON a.id_acteur = j.id_acteur
INNER JOIN personne p ON p.id_personne = a.id_personne
WHERE f.id_film = '5'
