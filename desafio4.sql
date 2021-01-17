CREATE VIEW top_3_artistas AS
SELECT 
a.artista AS artista,
COUNT(s.usuario_id) AS seguidores
FROM seguidores AS s
INNER JOIN artistas AS a ON s.artista_id = a.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
