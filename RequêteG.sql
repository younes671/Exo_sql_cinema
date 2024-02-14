SELECT p.prenom, p.nom, r.nom_role, f.annee_sortie
FROM film f
INNER JOIN jouer j ON j.id_film = f.id_film
INNER JOIN role r ON r.id_role = j.id_role
INNER JOIN acteur a ON a.id_acteur = j.id_acteur
INNER JOIN personne p ON p.id_personne = a.id_personne
WHERE a.id_acteur = '8'
ORDER BY f.id_film DESC 