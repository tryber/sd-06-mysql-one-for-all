CREATE VIEW estatisticas_musicais 
AS SELECT 
COUNT( s.song_id) AS `cancoes`,
COUNT(DISTINCT a.artist_id) AS `artistas`,
COUNT(DISTINCT al.album_id) AS `albuns`
FROM SpotifyClone.Songs AS s
INNER JOIN SpotifyClone.Artists AS a
ON s.artist_id = a.artist_id
INNER JOIN SpotifyClone.Albums as al
ON s.album_id = al.album_id;
