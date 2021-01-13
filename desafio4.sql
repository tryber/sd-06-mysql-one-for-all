CREATE VIEW SpotifyClone.top_3_artistas AS
SELECT a.nome AS artista, COUNT(*) AS seguidores
FROM SpotifyClone.seguindo s
INNER JOIN SpotifyClone.artistas a
ON s.artista_id = a.artista_id
GROUP BY nome
ORDER BY seguidores DESC, nome
LIMIT 3;
