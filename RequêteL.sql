SELECT p.nom, COUNT(f.id_film) AS "nombre_film"
FROM jouer j
INNER JOIN acteur a ON a.id_acteur = j.id_acteur
INNER JOIN personne p ON p.id_personne = a.id_personne
INNER JOIN film f ON f.id_film = j.id_film
GROUP BY a.id_acteur
HAVING COUNT(f.id_film) >= 3
