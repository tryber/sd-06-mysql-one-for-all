USE SpotifyClone;

CREATE VIEW estatisticas_musicais AS
SELECT COUNT(so.song) AS cancoes,
COUNT(DISTINCT(al.album)) AS albuns,
COUNT(DISTINCT(ar.artist)) AS artistas
FROM songs AS so
INNER JOIN albums AS al
ON so.album_id = al.album_id
INNER JOIN artists AS ar
ON al.artist_id = ar.artist_id;
