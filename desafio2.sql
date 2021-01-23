CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(DISTINCT(s.song_name)) AS 'cancoes',
COUNT(DISTINCT(ar.artist_name)) AS 'artistas',
COUNT(DISTINCT(al.album_name)) AS 'albuns'
FROM SpotifyClone.songs AS s, SpotifyClone.artists AS ar, SpotifyClone.albums AS al;
