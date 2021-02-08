CREATE VIEW estatisticas_musicais AS SELECT 
COUNT(s.song_id) AS `cancoes`,
COUNT(DISTINCT ar.artist_id) AS `artistas`,
COUNT(DISTINCT al.album_id) AS `albuns`
FROM SpotifyClone.Songs AS s
INNER JOIN SpotifyClone.Artists AS ar
ON s.artist_id = ar.artist_id
INNER JOIN SpotifyClone.Albums as al
ON s.album_id = al.album_id;
