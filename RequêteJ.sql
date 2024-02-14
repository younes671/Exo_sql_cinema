SELECT SUM(CASE WHEN p.sexe = 'Masculin' THEN 1 ELSE 0 END) AS nombre_acteur, SUM(CASE WHEN p.sexe = 'Feminin' THEN 1 ELSE 0 END) AS nombre_actrice
FROM acteur a
INNER JOIN personne p ON p.id_personne = a.id_personne
