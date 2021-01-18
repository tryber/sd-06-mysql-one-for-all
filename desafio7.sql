CREATE VIEW perfil_artistas AS
SELECT
ar.name AS artista,
al.name AS album,
COUNT(f.artist_id) AS seguidores
FROM artists AS ar
INNER JOIN albums AS al
ON ar.artist_id = al.artist_id
INNER JOIN followers AS f
ON f.artist_id = ar.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album ASC;
