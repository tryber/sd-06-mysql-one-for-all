USE SpotifyClone;
CREATE VIEW estatisticas_musicais 
AS SELECT 
COUNT( s.song_id) AS `cancoes`,
COUNT(DISTINCT a.artist_id) AS `artistas`,
COUNT(DISTINCT al.album_id) AS `albuns`
FROM Songs AS s
INNER JOIN Artists AS a
ON s.artist_id = a.artist_id
INNER JOIN Albums as al
ON s.album_id =al.album_id;
