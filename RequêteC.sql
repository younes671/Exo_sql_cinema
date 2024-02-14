SELECT f.titre, f.annee_sortie
FROM film f
INNER JOIN realisateur r ON r.id_realisateur = f.id_realisateur
WHERE f.id_realisateur = '3' 
