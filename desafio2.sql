CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(DISTINCT so.songs_id) AS 'cancoes',
COUNT(DISTINCT ar.artist_id) AS 'artistas',
COUNT(DISTINCT al.album_id) AS 'albuns'
FROM
SpotifyClone.songs AS so,
SpotifyClone.artists AS ar,
SpotifyClone.albuns AS al;
