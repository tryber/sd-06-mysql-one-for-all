CREATE VIEW perfil_artistas AS
SELECT a.artista AS artista,
al.album AS album,
COUNT(sa.artista_id) AS seguidores
FROM SpotifyClone.artistas a
INNER JOIN SpotifyClone.seguindo_artistas sa ON sa.artista_id = a.artista_id
INNER JOIN SpotifyClone.albuns al ON al.artista_id = a.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista;
