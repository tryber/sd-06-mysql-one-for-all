CREATE VIEW top_3_artistas AS
SELECT a.nome AS 'artista', COUNT(sa.id_usuario) AS 'seguidores'
FROM SpotifyClone.seguindo_artistas AS sa
INNER JOIN SpotifyClone.artista AS a ON sa.id_artista = a.id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
