CREATE VIEW estatisticas_musicais AS
SELECT COUNT(DISTINCT m.music_name) AS cancoes,
COUNT(DISTINCT a.artist_name) AS artistas,
COUNT(DISTINCT al.album_name) AS albuns
FROM SpotifyClone.musics AS m
JOIN SpotifyClone.artists AS a
JOIN SpotifyClone.albuns AS al;
