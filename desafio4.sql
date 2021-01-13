USE SpotifyClone;
DROP VIEW IF EXISTS top_3_artistas;

CREATE VIEW top_3_artistas AS
SELECT a.nome AS artista, COUNT(s.artista_id) AS seguidores
FROM seguindo AS s
INNER JOIN artista AS a ON s.artista_id = a.artista_id
GROUP BY s.artista_id
ORDER BY seguidores DESC, a.nome
LIMIT 3;

SELECT * FROM top_3_artistas;
