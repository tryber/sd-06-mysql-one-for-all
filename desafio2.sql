CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT s.song_id) AS cancoes,
COUNT(DISTINCT a.artist_id) AS artistas,
COUNT(DISTINCT alb.album_id) AS albuns
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albuns AS alb;
