SELECT p.nom AS "realisateur", COUNT(f.id_film) AS "nombre_film"
FROM film f
INNER JOIN realisateur r ON r.id_realisateur = f.id_realisateur
INNER JOIN personne p ON p.id_personne = r.id_personne
GROUP BY p.nom 
ORDER BY "nombre_film" DESC 