CREATE VIEW top_3_artistas AS
SELECT 
art.artista_nome AS artista,
COUNT(DISTINCT seg.usuario_id)  AS seguidores
FROM SpotifyClone.table_seguindo AS seg
INNER JOIN SpotifyClone.table_artistas AS art
ON art.artista_id = seg.artista_id
GROUP BY artista_nome
ORDER BY seguidores DESC, artista
LIMIT 3;
