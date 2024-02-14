SELECT gf.libelle, COUNT(f.id_film) AS "nombre_film"
FROM film f
INNER JOIN typer t ON t.id_film = f.id_film
INNER JOIN genre_film gf ON gf.id_genre = t.id_genre
GROUP BY gf.libelle
ORDER BY "nombre_film" DESC 