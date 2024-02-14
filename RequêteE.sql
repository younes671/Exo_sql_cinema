SELECT CONCAT(p.nom,' ', p.prenom) AS "realisateur", COUNT(f.id_film) AS "nombre_film"
FROM film f
INNER JOIN realisateur r ON r.id_realisateur = f.id_realisateur
INNER JOIN personne p ON p.id_personne = r.id_personne
GROUP BY p.id_personne 
ORDER BY "nombre_film" DESC 