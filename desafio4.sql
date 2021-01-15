CREATE VIEW top_3_artistas AS
SELECT 
A.nome_artista AS artista,
COUNT(UA.usuario_id) AS seguidores
FROM artistas AS A
INNER JOIN usuarios_artistas AS UA
ON UA.artista_id = A.artista_id
GROUP BY UA.artista_id
ORDER BY seguidores DESC, artista
LIMIT 3;
