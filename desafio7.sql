USE SpotifyClone;
DROP VIEW IF EXISTS perfil_artistas;

CREATE VIEW perfil_artistas AS 
SELECT a.nome AS artista, al.nome AS album, ranking.qty AS seguidores
FROM artista as a
INNER JOIN album AS al ON a.artista_id = al.artista_id
INNER JOIN (
SELECT artista_id, COUNT(artista_id) AS qty FROM seguindo
GROUP BY artista_id
) AS ranking ON a.artista_id = ranking.artista_id
ORDER BY seguidores DESC, artista, album;

SELECT * FROM perfil_artistas;
