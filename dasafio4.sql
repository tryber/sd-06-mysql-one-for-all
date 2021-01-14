USE SpotifyClone;
CREATE VIEW top_3_artistas AS
SELECT a.nome_artista AS artista, COUNT(*) AS seguidores
FROM seguindo_artista AS sa
INNER JOIN artista AS a ON sa.id_artista = a.id
GROUP BY a.nome_artista
ORDER BY seguidores DESC, artista
LIMIT 3;
