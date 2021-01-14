CREATE VIEW top_3_artistas AS
SELECT
a2.artista AS `artista`,
COUNT(*) AS `seguidores`
FROM artistas_seguidos AS a
INNER JOIN artistas AS a2 ON a2.artista_id = a.artista_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista` LIMIT 3;
