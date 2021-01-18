CREATE VIEW top_3_artistas AS
SELECT A.nome_artista AS artista,
COUNT(SE.usuario_id) AS seguidores
FROM SpotifyClone.seguindo_artistas SE
INNER JOIN SpotifyClone.artistas A ON A.artista_id = SE.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
