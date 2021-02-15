CREATE VIEW estatisticas_musicais AS
SELECT 
COUNT(s.song_id) AS "cancoes",
COUNT(DISTINCT ar.artist_id) AS "artistas",
COUNT(DISTINCT al.album_id) AS "albuns"
FROM
SpotifyClone.songs AS s
INNER JOIN SpotifyClone.albuns AS al
ON s.album_id = al.album_id
INNER JOIN SpotifyClone.artists AS ar
ON al.artist_id = ar.artist_id;