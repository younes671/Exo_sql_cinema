SELECT titre, annee_sortie,  CONCAT(LPAD(duree / 60, 2, '0'), ':', LPAD(duree % 60, 2, '0')) AS duree
FROM film