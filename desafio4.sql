CREATE VIEW top_3_artistas AS
SELECT
AN.artista_nome AS artista,
COUNT(SA.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS AN,
SpotifyClone.seguindo_artistas AS SA

WHERE AN.artista_id = SA.artista_id GROUP BY artista
ORDER BY seguidores DESC, artista LIMIT 3;
