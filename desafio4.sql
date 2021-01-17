CREATE VIEW top_3_artistas AS
SELECT 
A.nome AS artista,
COUNT(S.usuario_id) AS seguidores
FROM artistas AS A
INNER JOIN seguindo AS S
ON A.artista_id = S.artista_id
GROUP BY S.artista_id
ORDER BY seguidores DESC, artista ASC
LIMIT 3;
